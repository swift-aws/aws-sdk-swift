//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

import Foundation
import NIO
import SotoCore

// MARK: Multipart

extension S3ErrorType {
    public enum multipart: Error {
        /// CreateMultipartUpload did not return an uploadId
        case noUploadId
        /// Copy Source in multipartCopy has no content length
        case noCopyPartResult
        /// An empty download was returned
        case downloadEmpty(message: String)
        /// returned if an upload fails and `abortOnFail` is set to false. `uploadId` can be used in `resumeMultipartUpload`. `error` is the original error
        case abortedUpload(resumeRequest: S3.ResumeMultipartUploadRequest, error: Error)
    }
}

extension S3 {
    public enum ThreadPoolProvider {
        case createNew
        case shared(NIOThreadPool)
    }

    /// Resume Multipart upload request object. This is used as a paramter `resumeMultipartUpload`. It can only be generated by a `abortedUpload` error
    public struct ResumeMultipartUploadRequest {
        let uploadRequest: CreateMultipartUploadRequest
        public let uploadId: String
    }

    /// Multipart download of a file from S3.
    ///
    /// - parameters:
    ///     - input: The GetObjectRequest shape that contains the details of the object request.
    ///     - partSize: Size of each part to be downloaded
    ///     - on: an EventLoop to process each downloaded part on
    ///     - outputStream: Function to be called for each downloaded part. Called with data block and file size
    /// - returns: An EventLoopFuture that will receive the complete file size once the multipart download has finished.
    public func multipartDownload(
        _ input: GetObjectRequest,
        partSize: Int = 5 * 1024 * 1024,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        outputStream: @escaping (ByteBuffer, Int64, EventLoop) -> EventLoopFuture<Void>
    ) -> EventLoopFuture<Int64> {
        let eventLoop = eventLoop ?? self.client.eventLoopGroup.next()
        let promise = eventLoop.makePromise(of: Int64.self)

        // function downloading part of a file
        func multipartDownloadPart(fileSize: Int64, offset: Int64, prevPartSave: EventLoopFuture<Void>) {
            // have we downloaded everything
            guard fileSize > offset else {
                prevPartSave.map { fileSize }.cascade(to: promise)
                return
            }

            let range = "bytes=\(offset)-\(offset + Int64(partSize - 1))"
            let getRequest = S3.GetObjectRequest(
                bucket: input.bucket,
                key: input.key,
                range: range,
                sSECustomerAlgorithm: input.sSECustomerAlgorithm,
                sSECustomerKey: input.sSECustomerKey,
                sSECustomerKeyMD5: input.sSECustomerKeyMD5,
                versionId: input.versionId
            )
            getObject(getRequest, logger: logger, on: eventLoop)
                .and(prevPartSave)
                .map { (output, _) -> Void in
                    // should never happen
                    guard let body = output.body?.asByteBuffer() else {
                        return promise.fail(S3ErrorType.multipart.downloadEmpty(message: "Body is unexpectedly nil"))
                    }
                    guard let length = output.contentLength, length > 0 else {
                        return promise.fail(S3ErrorType.multipart.downloadEmpty(message: "Content length is unexpectedly zero"))
                    }

                    let newOffset = offset + Int64(partSize)
                    multipartDownloadPart(fileSize: fileSize, offset: newOffset, prevPartSave: outputStream(body, fileSize, eventLoop))
                }.cascadeFailure(to: promise)
        }

        // get object size before downloading
        let headRequest = S3.HeadObjectRequest(
            bucket: input.bucket,
            ifMatch: input.ifMatch,
            ifModifiedSince: input.ifModifiedSince,
            ifNoneMatch: input.ifNoneMatch,
            ifUnmodifiedSince: input.ifUnmodifiedSince,
            key: input.key,
            requestPayer: input.requestPayer,
            sSECustomerAlgorithm: input.sSECustomerAlgorithm,
            sSECustomerKey: input.sSECustomerKey,
            sSECustomerKeyMD5: input.sSECustomerKeyMD5,
            versionId: input.versionId
        )
        headObject(headRequest, logger: logger, on: eventLoop)
            .map { (object) -> Void in
                guard let contentLength = object.contentLength else {
                    return promise.fail(S3ErrorType.multipart.downloadEmpty(message: "Content length is unexpectedly zero"))
                }
                // download file
                multipartDownloadPart(fileSize: contentLength, offset: 0, prevPartSave: eventLoop.makeSucceededFuture(()))
            }.cascadeFailure(to: promise)

        return promise.futureResult
    }

    /// Multipart download of a file from S3.
    ///
    /// - parameters:
    ///     - input: The GetObjectRequest shape that contains the details of the object request.
    ///     - partSize: Size of each part to be downloaded
    ///     - filename: Filename to save download to
    ///     - on: EventLoop to process downloaded parts, if nil an eventLoop is taken from the clients eventLoopGroup
    ///     - progress: Callback that returns the progress of the download. It is called after each part is downloaded with a value between 0.0 and 1.0 indicating how far the download is complete (1.0 meaning finished).
    /// - returns: An EventLoopFuture that will receive the complete file size once the multipart download has finished.
    public func multipartDownload(
        _ input: GetObjectRequest,
        partSize: Int = 5 * 1024 * 1024,
        filename: String,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        threadPoolProvider: ThreadPoolProvider = .createNew,
        progress: @escaping (Double) throws -> Void = { _ in }
    ) -> EventLoopFuture<Int64> {
        let eventLoop = eventLoop ?? self.client.eventLoopGroup.next()

        let threadPool: NIOThreadPool
        switch threadPoolProvider {
        case .createNew:
            threadPool = NIOThreadPool(numberOfThreads: 1)
            threadPool.start()
        case .shared(let sharedPool):
            threadPool = sharedPool
        }
        let fileIO = NonBlockingFileIO(threadPool: threadPool)

        return fileIO.openFile(path: filename, mode: .write, flags: .allowFileCreation(), eventLoop: eventLoop).flatMap {
            (fileHandle) -> EventLoopFuture<Int64> in
            var progressValue: Int64 = 0

            let download = self.multipartDownload(input, partSize: partSize, logger: logger, on: eventLoop) { byteBuffer, fileSize, eventLoop in
                let bufferSize = byteBuffer.readableBytes
                return fileIO.write(fileHandle: fileHandle, buffer: byteBuffer, eventLoop: eventLoop).flatMapThrowing { _ in
                    progressValue += Int64(bufferSize)
                    try progress(Double(progressValue) / Double(fileSize))
                }
            }

            download.whenComplete { _ in
                if case .createNew = threadPoolProvider {
                    threadPool.shutdownGracefully { _ in }
                }
            }
            return
                download
                    .flatMapErrorThrowing { error in
                        try fileHandle.close()
                        throw error
                    }
                    .flatMapThrowing { rt in
                        try fileHandle.close()
                        return rt
                    }
        }
    }

    /// Multipart upload of file to S3.
    ///
    /// - parameters:
    ///     - input: The CreateMultipartUploadRequest structure that contains the details about the upload
    ///     - abortOnFail: Whether should abort multipart upload if it fails. If you want to attempt to resume after a fail this should be set to false
    ///     - on: an EventLoop to process each part to upload
    ///     - inputStream: The function supplying the data parts to the multipartUpload. Each parts must be at least 5MB in size expect the last one which has no size limit.
    /// - returns: An EventLoopFuture that will receive a CompleteMultipartUploadOutput once the multipart upload has finished.
    public func multipartUpload(
        _ input: CreateMultipartUploadRequest,
        abortOnFail: Bool = true,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        inputStream: @escaping (EventLoop) -> EventLoopFuture<AWSPayload>
    ) -> EventLoopFuture<CompleteMultipartUploadOutput> {
        let eventLoop = eventLoop ?? self.client.eventLoopGroup.next()
        // initialize multipart upload
        let result = createMultipartUpload(input, logger: logger, on: eventLoop).flatMap { upload -> EventLoopFuture<CompleteMultipartUploadOutput> in
            guard let uploadId = upload.uploadId else {
                return eventLoop.makeFailedFuture(S3ErrorType.multipart.noUploadId)
            }
            // upload all the parts
            return self.multipartUploadParts(
                input, uploadId: uploadId,
                logger: logger,
                on: eventLoop,
                inputStream: inputStream,
                skipStream: { $0.makeSucceededFuture(true) }
            ).flatMap { parts -> EventLoopFuture<CompleteMultipartUploadOutput> in
                let request = S3.CompleteMultipartUploadRequest(
                    bucket: input.bucket,
                    key: input.key,
                    multipartUpload: S3.CompletedMultipartUpload(parts: parts),
                    requestPayer: input.requestPayer,
                    uploadId: uploadId
                )
                return self.completeMultipartUpload(request, logger: logger, on: eventLoop)
            }.flatMapErrorThrowing { error in
                guard abortOnFail else { throw S3ErrorType.multipart.abortedUpload(resumeRequest: .init(uploadRequest: input, uploadId: uploadId), error: error) }
                // if failure then abort the multipart upload
                let request = S3.AbortMultipartUploadRequest(
                    bucket: input.bucket,
                    key: input.key,
                    requestPayer: input.requestPayer,
                    uploadId: uploadId
                )
                _ = self.abortMultipartUpload(request, logger: logger, on: eventLoop)
                throw error
            }
        }
        return result
    }

    /// Multipart upload of file to S3.
    ///
    /// Uploads file using multipart upload commands. If you want the function to not abort the multipart upload when it receives an error then set `abortOnFail` to false. With this you
    /// can then use `resumeMultipartUpload` to resume the failed upload. If you set `abortOnFail` to false but don't call `resumeMultipartUpload` on failure you will have
    /// to call `abortMultipartUpload` yourself.
    ///
    /// - parameters:
    ///     - input: The CreateMultipartUploadRequest structure that contains the details about the upload
    ///     - partSize: Size of each part to upload. This has to be at least 5MB
    ///     - fileHandle: File handle for file to upload
    ///     - fileIO: NIO non blocking file io manager
    ///     - uploadSize: Size of file to upload
    ///     - abortOnFail: Whether should abort multipart upload if it fails. If you want to attempt to resume after a fail this should be set to false
    ///     - on: EventLoop to process parts for upload, if nil an eventLoop is taken from the clients eventLoopGroup
    ///     - eventLoop: Eventloop to run upload on
    ///     - progress: Callback that returns the progress of the upload. It is called after each part is uploaded with a value between 0.0 and 1.0 indicating how far the upload is complete (1.0 meaning finished).
    /// - returns: An EventLoopFuture that will receive a CompleteMultipartUploadOutput once the multipart upload has finished.
    public func multipartUpload(
        _ input: CreateMultipartUploadRequest,
        partSize: Int = 5 * 1024 * 1024,
        fileHandle: NIOFileHandle,
        fileIO: NonBlockingFileIO,
        uploadSize: Int,
        abortOnFail: Bool = true,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        progress: @escaping (Double) throws -> Void = { _ in }
    ) -> EventLoopFuture<CompleteMultipartUploadOutput> {
        let eventLoop = eventLoop ?? self.client.eventLoopGroup.next()

        var progressAmount: Int = 0
        var prevProgressAmount: Int = 0

        return self.multipartUpload(input, abortOnFail: abortOnFail, logger: logger, on: eventLoop) { eventLoop in
            let size = min(partSize, uploadSize - progressAmount)
            guard size > 0 else { return eventLoop.makeSucceededFuture(.empty) }
            prevProgressAmount = progressAmount
            progressAmount += size
            let payload = AWSPayload.fileHandle(
                fileHandle,
                size: size,
                fileIO: fileIO,
                byteBufferAllocator: self.config.byteBufferAllocator
            ) { downloaded in
                try progress(Double(downloaded + prevProgressAmount) / Double(uploadSize))
            }
            return eventLoop.makeSucceededFuture(payload)
        }
    }

    /// Multipart upload of file to S3.
    ///
    /// Uploads file using multipart upload commands. If you want the function to not abort the multipart upload when it receives an error then set `abortOnFail` to false. With this you
    /// can then use `resumeMultipartUpload` to resume the failed upload. If you set `abortOnFail` to false but don't call `resumeMultipartUpload` on failure you will have
    /// to call `abortMultipartUpload` yourself.
    ///
    /// - parameters:
    ///     - input: The CreateMultipartUploadRequest structure that contains the details about the upload
    ///     - partSize: Size of each part to upload. This has to be at least 5MB
    ///     - filename: Full path of file to upload
    ///     - abortOnFail: Whether should abort multipart upload if it fails. If you want to attempt to resume after a fail this should be set to false
    ///     - on: EventLoop to process parts for upload, if nil an eventLoop is taken from the clients eventLoopGroup
    ///     - eventLoop: Eventloop to run upload on
    ///     - threadPoolProvider: Provide a thread pool to use or create a new one
    ///     - progress: Callback that returns the progress of the upload. It is called after each part is uploaded with a value between 0.0 and 1.0 indicating how far the upload is complete (1.0 meaning finished).
    /// - returns: An EventLoopFuture that will receive a CompleteMultipartUploadOutput once the multipart upload has finished.
    public func multipartUpload(
        _ input: CreateMultipartUploadRequest,
        partSize: Int = 5 * 1024 * 1024,
        filename: String,
        abortOnFail: Bool = true,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        threadPoolProvider: ThreadPoolProvider = .createNew,
        progress: @escaping (Double) throws -> Void = { _ in }
    ) -> EventLoopFuture<CompleteMultipartUploadOutput> {
        let eventLoop = eventLoop ?? self.client.eventLoopGroup.next()

        return openFileForMultipartUpload(
            filename: filename,
            logger: logger,
            on: eventLoop,
            threadPoolProvider: threadPoolProvider
        ) { fileHandle, fileRegion, fileIO in
            self.multipartUpload(
                input,
                partSize: partSize,
                fileHandle: fileHandle,
                fileIO: fileIO,
                uploadSize: fileRegion.readableBytes,
                abortOnFail: abortOnFail,
                logger: logger,
                on: eventLoop,
                progress: progress
            )
        }
    }

    /// resume multipart upload of file to S3.
    ///
    /// - parameters:
    ///     - input: The `ResumeMultipartUploadRequest` structure returned in upload fail error from previous upload call
    ///     - abortOnFail: Whether should abort multipart upload if it fails. If you want to attempt to resume after a fail this should be set to false
    ///     - on: an EventLoop to process each part to upload
    ///     - inputStream: The function supplying the data parts to the multipartUpload. Each parts must be at least 5MB in size expect the last one which has no size limit.
    ///     - skipStream: The function to call when skipping an already loaded part
    /// - returns: An EventLoopFuture that will receive a CompleteMultipartUploadOutput once the multipart upload has finished.
    public func resumeMultipartUpload(
        _ input: ResumeMultipartUploadRequest,
        abortOnFail: Bool = true,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        inputStream: @escaping (EventLoop) -> EventLoopFuture<AWSPayload>,
        skipStream: @escaping (EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<CompleteMultipartUploadOutput> {
        let eventLoop = eventLoop ?? self.client.eventLoopGroup.next()
        let uploadRequest = input.uploadRequest
        var completedParts: [S3.CompletedPart] = []
        let listPartsRequest = ListPartsRequest(
            bucket: uploadRequest.bucket,
            key: uploadRequest.key,
            requestPayer: uploadRequest.requestPayer,
            uploadId: input.uploadId
        )
        return listPartsPaginator(listPartsRequest, logger: logger, on: eventLoop) { output, eventLoop in
            if let parts = output.parts {
                completedParts += parts.map { CompletedPart(eTag: $0.eTag, partNumber: $0.partNumber) }
            }
            return eventLoop.makeSucceededFuture(true)
        }.flatMap { _ in
            // upload all the parts
            return self.multipartUploadParts(
                uploadRequest,
                uploadId: input.uploadId,
                parts: completedParts,
                logger: logger,
                on: eventLoop,
                inputStream: inputStream,
                skipStream: skipStream
            ).flatMap { parts -> EventLoopFuture<CompleteMultipartUploadOutput> in
                let request = S3.CompleteMultipartUploadRequest(
                    bucket: uploadRequest.bucket,
                    key: uploadRequest.key,
                    multipartUpload: S3.CompletedMultipartUpload(parts: parts),
                    requestPayer: uploadRequest.requestPayer,
                    uploadId: input.uploadId
                )
                return self.completeMultipartUpload(request, logger: logger, on: eventLoop)
            }.flatMapErrorThrowing { error in
                guard abortOnFail else { throw S3ErrorType.multipart.abortedUpload(resumeRequest: input, error: error) }
                // if failure then abort the multipart upload
                let request = S3.AbortMultipartUploadRequest(
                    bucket: uploadRequest.bucket,
                    key: uploadRequest.key,
                    requestPayer: uploadRequest.requestPayer,
                    uploadId: input.uploadId
                )
                _ = self.abortMultipartUpload(request, logger: logger, on: eventLoop)
                throw error
            }
        }
    }

    /// Resume multipart upload of file to S3.
    ///
    /// Call this with `ResumeMultipartUploadRequest`returned by the failed multipart upload. Make sure you are using the same `partSize`, the `fileHandle` points to the
    /// same file and is in the same position in that file and the uploadSize is the same as you used when calling `multipartUpload`.
    ///
    /// - parameters:
    ///     - input: The `ResumeMultipartUploadRequest` structure returned in upload fail error from previous upload call
    ///     - partSize: Size of each part to upload. This has to be at least 5MB
    ///     - fileHandle: File handle for file to upload
    ///     - fileIO: NIO non blocking file io manager
    ///     - uploadSize: Size of file to upload
    ///     - abortOnFail: Whether should abort multipart upload if it fails. If you want to attempt to resume after a fail this should be set to false
    ///     - on: EventLoop to process parts for upload, if nil an eventLoop is taken from the clients eventLoopGroup
    ///     - eventLoop: Eventloop to run upload on
    ///     - progress: Callback that returns the progress of the upload. It is called after each part is uploaded with a value between 0.0 and 1.0 indicating how far the upload is complete
    ///      (1.0 meaning finished).
    /// - returns: An EventLoopFuture that will receive a CompleteMultipartUploadOutput once the multipart upload has finished.
    public func resumeMultipartUpload(
        _ input: ResumeMultipartUploadRequest,
        partSize: Int = 5 * 1024 * 1024,
        fileHandle: NIOFileHandle,
        fileIO: NonBlockingFileIO,
        uploadSize: Int,
        abortOnFail: Bool = true,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        progress: @escaping (Double) throws -> Void = { _ in }
    ) -> EventLoopFuture<CompleteMultipartUploadOutput> {
        let eventLoop = eventLoop ?? self.client.eventLoopGroup.next()

        var progressAmount: Int = 0
        var prevProgressAmount: Int = 0

        return self.resumeMultipartUpload(
            input,
            abortOnFail: abortOnFail,
            logger: logger,
            on: eventLoop,
            inputStream: { eventLoop in
                let size = min(partSize, uploadSize - progressAmount)
                guard size > 0 else { return eventLoop.makeSucceededFuture(.empty) }
                prevProgressAmount = progressAmount
                let payload = AWSPayload.fileHandle(
                    fileHandle,
                    offset: progressAmount,
                    size: size,
                    fileIO: fileIO,
                    byteBufferAllocator: self.config.byteBufferAllocator
                ) { downloaded in
                    try progress(Double(downloaded + prevProgressAmount) / Double(uploadSize))
                }
                progressAmount += size
                return eventLoop.makeSucceededFuture(payload)
            },
            skipStream: { eventLoop in
                let size = min(partSize, uploadSize - progressAmount)
                progressAmount += size
                return eventLoop.makeSucceededFuture(size == 0)
            }
        )
    }

    /// Resume multipart upload of file to S3.
    ///
    /// Call this with `ResumeMultipartUploadRequest`returned by the failed multipart upload. Make sure you are using the same `partSize`and `filename` as you used when calling
    /// `multipartUpload`. `
    ///
    /// - parameters:
    ///     - input: The `ResumeMultipartUploadRequest` structure returned in upload fail error from previous upload call
    ///     - partSize: Size of each part to upload. This has to be at least 5MB
    ///     - filename: Full path of file to upload
    ///     - abortOnFail: Whether should abort multipart upload if it fails. If you want to attempt to resume after a fail this should be set to false
    ///     - on: EventLoop to process parts for upload, if nil an eventLoop is taken from the clients eventLoopGroup
    ///     - eventLoop: Eventloop to run upload on
    ///     - threadPoolProvider: Provide a thread pool to use or create a new one
    ///     - progress: Callback that returns the progress of the upload. It is called after each part is uploaded with a value between 0.0 and 1.0 indicating how far the upload is complete (1.0 meaning finished).
    /// - returns: An EventLoopFuture that will receive a CompleteMultipartUploadOutput once the multipart upload has finished.
    public func resumeMultipartUpload(
        _ input: ResumeMultipartUploadRequest,
        partSize: Int = 5 * 1024 * 1024,
        filename: String,
        abortOnFail: Bool = true,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        threadPoolProvider: ThreadPoolProvider = .createNew,
        progress: @escaping (Double) throws -> Void = { _ in }
    ) -> EventLoopFuture<CompleteMultipartUploadOutput> {
        let eventLoop = eventLoop ?? self.client.eventLoopGroup.next()

        return openFileForMultipartUpload(
            filename: filename,
            logger: logger,
            on: eventLoop,
            threadPoolProvider: threadPoolProvider
        ) { fileHandle, fileRegion, fileIO in
            self.resumeMultipartUpload(
                input,
                partSize: partSize,
                fileHandle: fileHandle,
                fileIO: fileIO,
                uploadSize: fileRegion.readableBytes,
                abortOnFail: abortOnFail,
                logger: logger,
                on: eventLoop,
                progress: progress
            )
        }
    }

    /// Multipart copy of file to S3.
    ///
    /// - parameters:
    ///     - input: The CopyObjectRequest structure that contains the details about the copy
    ///     - objectSize: Size of object to copy
    ///     - partSize: Size of each part to copy. This has to be at least 5MB
    ///     - eventLoop: an EventLoop to process each part to upload
    /// - returns: An EventLoopFuture that will receive a CompleteMultipartUploadOutput once the multipart upload has finished.
    public func multipartCopy(
        _ input: CopyObjectRequest,
        objectSize: Int,
        partSize: Int = 8 * 1024 * 1024,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<CompleteMultipartUploadOutput> {
        let eventLoop = eventLoop ?? self.client.eventLoopGroup.next()

        var uploadId: String = ""

        // initialize multipart upload
        let request: CreateMultipartUploadRequest = .init(acl: input.acl, bucket: input.bucket, cacheControl: input.cacheControl, contentDisposition: input.contentDisposition, contentEncoding: input.contentEncoding, contentLanguage: input.contentLanguage, contentType: input.contentType, expectedBucketOwner: input.expectedBucketOwner, expires: input.expires, grantFullControl: input.grantFullControl, grantRead: input.grantRead, grantReadACP: input.grantReadACP, grantWriteACP: input.grantWriteACP, key: input.key, metadata: input.metadata, objectLockLegalHoldStatus: input.objectLockLegalHoldStatus, objectLockMode: input.objectLockMode, objectLockRetainUntilDate: input.objectLockRetainUntilDate, requestPayer: input.requestPayer, serverSideEncryption: input.serverSideEncryption, sSECustomerAlgorithm: input.sSECustomerAlgorithm, sSECustomerKey: input.sSECustomerKey, sSECustomerKeyMD5: input.sSECustomerKeyMD5, sSEKMSEncryptionContext: input.sSEKMSEncryptionContext, sSEKMSKeyId: input.sSEKMSKeyId, storageClass: input.storageClass, tagging: input.tagging, websiteRedirectLocation: input.websiteRedirectLocation)
        let result = createMultipartUpload(request, on: eventLoop)
            .flatMap { uploadResponse -> EventLoopFuture<[CompletedPart]> in
                guard let uploadResponseId = uploadResponse.uploadId else {
                    return eventLoop.makeFailedFuture(S3ErrorType.multipart.noUploadId)
                }
                uploadId = uploadResponseId

                // calculate number of upload part calls and the size of the final upload
                let numParts = ((Int(objectSize) - 1) / partSize) + 1
                let finalPartSize = Int(objectSize) - (numParts - 1) * partSize
                // create array of upload part call futures.
                let uploadPartFutures: [EventLoopFuture<CompletedPart>] = (1...numParts).map { part in
                    let copyRange: String
                    if part != numParts {
                        copyRange = "bytes=\((part - 1) * partSize)-\(part * partSize - 1)"
                    } else {
                        copyRange = "bytes=\((part - 1) * partSize)-\((part - 1) * partSize + finalPartSize - 1)"
                    }
                    return self.uploadPartCopy(
                        .init(bucket: input.bucket, copySource: input.copySource, copySourceRange: copyRange, copySourceSSECustomerAlgorithm: input.copySourceSSECustomerAlgorithm, copySourceSSECustomerKey: input.copySourceSSECustomerKey, copySourceSSECustomerKeyMD5: input.copySourceSSECustomerKeyMD5, expectedBucketOwner: input.expectedBucketOwner, expectedSourceBucketOwner: input.expectedSourceBucketOwner, key: input.key, partNumber: part, requestPayer: input.requestPayer, sSECustomerAlgorithm: input.sSECustomerAlgorithm, sSECustomerKey: input.sSECustomerKey, sSECustomerKeyMD5: input.sSECustomerKeyMD5, uploadId: uploadId)
                    ).flatMapThrowing { response in
                        // map completed UploadCopyPart response to S3.CompletedPart
                        guard let copyPartResult = response.copyPartResult else { throw S3ErrorType.multipart.noCopyPartResult }
                        return S3.CompletedPart(eTag: copyPartResult.eTag, partNumber: part)
                    }
                }
                return EventLoopFuture.whenAllSucceed(uploadPartFutures, on: eventLoop)
            }.flatMap { parts -> EventLoopFuture<CompleteMultipartUploadOutput> in
                let request = S3.CompleteMultipartUploadRequest(
                    bucket: input.bucket,
                    key: input.key,
                    multipartUpload: S3.CompletedMultipartUpload(parts: parts),
                    requestPayer: input.requestPayer,
                    uploadId: uploadId
                )
                return self.completeMultipartUpload(request, on: eventLoop)
            }.flatMapErrorThrowing { error in
                // if failure then abort the multipart upload
                let request = S3.AbortMultipartUploadRequest(
                    bucket: input.bucket,
                    key: input.key,
                    requestPayer: input.requestPayer,
                    uploadId: uploadId
                )
                _ = self.abortMultipartUpload(request, on: eventLoop)
                throw error
            }
        return result
    }

    /// Multipart copy of file to S3. Currently this only works within one region as it uses HeadObject to read the source file size
    ///
    /// - parameters:
    ///     - input: The CopyObjectRequest structure that contains the details about the copy
    ///     - partSize: Size of each part to copy. This has to be at least 5MB
    ///     - eventLoop: an EventLoop to process each part to upload
    /// - returns: An EventLoopFuture that will receive a CompleteMultipartUploadOutput once the multipart upload has finished.
    public func multipartCopy(
        _ input: CopyObjectRequest,
        partSize: Int = 8 * 1024 * 1024,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<CompleteMultipartUploadOutput> {
        let eventLoop = eventLoop ?? self.client.eventLoopGroup.next()

        // get object bucket, key and version from copySource
        guard let copySourceValues = getBucketKeyVersion(from: input.copySource) else { return eventLoop.makeFailedFuture(AWSClientError.validationError) }

        // get object size from headObject
        return self.headObject(.init(bucket: copySourceValues.bucket, key: copySourceValues.key, versionId: copySourceValues.versionId))
            .flatMap { response in
                let size = response.contentLength ?? 0
                return self.multipartCopy(input, objectSize: Int(size), partSize: partSize, on: eventLoop)
            }
    }
}

extension S3 {
    /// Do all the work for opening a file and closing it for MultiUpload function
    func openFileForMultipartUpload(
        filename: String,
        logger: Logger,
        on eventLoop: EventLoop,
        threadPoolProvider: ThreadPoolProvider = .createNew,
        uploadCallback: @escaping (NIOFileHandle, FileRegion, NonBlockingFileIO) -> EventLoopFuture<CompleteMultipartUploadOutput>
    ) -> EventLoopFuture<CompleteMultipartUploadOutput> {
        let threadPool: NIOThreadPool
        switch threadPoolProvider {
        case .createNew:
            threadPool = NIOThreadPool(numberOfThreads: NonBlockingFileIO.defaultThreadPoolSize)
            threadPool.start()
        case .shared(let sharedPool):
            threadPool = sharedPool
        }
        let fileIO = NonBlockingFileIO(threadPool: threadPool)

        return fileIO.openFile(path: filename, eventLoop: eventLoop).flatMap {
            (fileHandle, fileRegion) -> EventLoopFuture<CompleteMultipartUploadOutput> in

            logger.debug("Open file \(filename)")
            
            let uploadFuture = uploadCallback(fileHandle, fileRegion, fileIO)

            uploadFuture.whenComplete { _ in
                if case .createNew = threadPoolProvider {
                    threadPool.shutdownGracefully { _ in }
                }
            }
            return
                uploadFuture.flatMapErrorThrowing { error in
                    try fileHandle.close()
                    throw error
                }.flatMapThrowing { rt in
                    try fileHandle.close()
                    return rt
                }
        }
    }

    /// used internally in multipartUpload, loads all the parts once the multipart upload has been initiated
    func multipartUploadParts(
        _ input: CreateMultipartUploadRequest,
        uploadId: String,
        parts: [S3.CompletedPart] = [],
        logger: Logger,
        on eventLoop: EventLoop,
        inputStream: @escaping (EventLoop) -> EventLoopFuture<AWSPayload>,
        skipStream: @escaping (EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<[S3.CompletedPart]> {
        let promise = eventLoop.makePromise(of: [S3.CompletedPart].self)
        var completedParts: [S3.CompletedPart] = []
        // function uploading part of a file and queueing up upload of the next part
        func multipartUploadPart(partNumber: Int, uploadId: String) {
            // if partNumber is in list of already completed parts, skip loading and append that part to completed parts
            if let part = parts.first(where: { $0.partNumber == partNumber }) {
                skipStream(eventLoop).map { finished -> Void in
                    if finished {
                        promise.succeed(completedParts)
                        return
                    }
                    completedParts.append(part)
                    multipartUploadPart(partNumber: partNumber + 1, uploadId: uploadId)
                }.cascadeFailure(to: promise)
            } else {
                // supply payload data
                inputStream(eventLoop).flatMap { payload -> EventLoopFuture<Bool> in
                    // if no data returned then return success
                    guard let size = payload.size, size > 0 else {
                        return eventLoop.makeSucceededFuture(true)
                    }
                    // upload payload
                    let request = S3.UploadPartRequest(
                        body: payload,
                        bucket: input.bucket,
                        key: input.key,
                        partNumber: partNumber,
                        requestPayer: input.requestPayer,
                        sSECustomerAlgorithm: input.sSECustomerAlgorithm,
                        sSECustomerKey: input.sSECustomerKey,
                        sSECustomerKeyMD5: input.sSECustomerKeyMD5,
                        uploadId: uploadId
                    )
                    // request upload future
                    return self.uploadPart(request, logger: logger, on: eventLoop).map { output -> Bool in
                        let part = S3.CompletedPart(eTag: output.eTag, partNumber: partNumber)
                        completedParts.append(part)
                        return false
                    }
                }.map { finished -> Void in
                    if finished {
                        promise.succeed(completedParts)
                        return
                    }
                    multipartUploadPart(partNumber: partNumber + 1, uploadId: uploadId)
                }.cascadeFailure(to: promise)
            }
        }

        // Multipart uploads part numbers start at 1 not 0
        multipartUploadPart(partNumber: 1, uploadId: uploadId)

        return promise.futureResult
    }

    // from bucket, key and version id from a copySource string
    func getBucketKeyVersion(from copySource: String) -> (bucket: String, key: String, versionId: String?)? {
        let path: Substring
        // drop first slash if it exists
        if copySource.first == "/" {
            path = copySource.dropFirst()
        } else {
            path = Substring(copySource)
        }
        // find first slash
        guard let slashIndex = path.firstIndex(of: "/") else { return nil }
        // find first question mark
        let questionMarkIndex = path.firstIndex(of: "?")
        // key is between first slash and either end index or question mark index
        let keyStartIndex = path.index(after: slashIndex)
        let keyEndIndex = questionMarkIndex ?? path.endIndex
        // bucket is from start to first slash
        let bucket = path[path.startIndex..<slashIndex]
        let key = path[keyStartIndex..<keyEndIndex]
        var versionId: String?
        // if there was a question mark then check for version id
        if questionMarkIndex != nil {
            let versionParameter = path[questionMarkIndex!..<path.endIndex]
            if versionParameter.hasPrefix("?versionId=") {
                versionId = String(versionParameter.dropFirst(11))
            } else {
                return nil
            }
        }
        return (bucket: String(bucket), key: String(key), versionId: versionId)
    }
}
