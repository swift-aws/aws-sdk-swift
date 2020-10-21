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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/soto/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import SotoCore

/// Error enum for Rekognition
public struct RekognitionErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case humanLoopQuotaExceededException = "HumanLoopQuotaExceededException"
        case idempotentParameterMismatchException = "IdempotentParameterMismatchException"
        case imageTooLargeException = "ImageTooLargeException"
        case internalServerError = "InternalServerError"
        case invalidImageFormatException = "InvalidImageFormatException"
        case invalidPaginationTokenException = "InvalidPaginationTokenException"
        case invalidParameterException = "InvalidParameterException"
        case invalidS3ObjectException = "InvalidS3ObjectException"
        case limitExceededException = "LimitExceededException"
        case provisionedThroughputExceededException = "ProvisionedThroughputExceededException"
        case resourceAlreadyExistsException = "ResourceAlreadyExistsException"
        case resourceInUseException = "ResourceInUseException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case resourceNotReadyException = "ResourceNotReadyException"
        case throttlingException = "ThrottlingException"
        case videoTooLargeException = "VideoTooLargeException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Rekognition
    public init?(errorCode: String, context: AWSErrorContext) {
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code) {
        self.error = error
        self.context = nil
    }

    /// return error code string
    public var errorCode: String { self.error.rawValue }

    /// You are not authorized to perform the action.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// The number of in-progress human reviews you have has exceeded the number allowed.
    public static var humanLoopQuotaExceededException: Self { .init(.humanLoopQuotaExceededException) }
    /// A ClientRequestToken input parameter was reused with an operation, but at least one of the other input parameters is different from the previous call to the operation.
    public static var idempotentParameterMismatchException: Self { .init(.idempotentParameterMismatchException) }
    /// The input image size exceeds the allowed limit. For more information, see Limits in Amazon Rekognition in the Amazon Rekognition Developer Guide.
    public static var imageTooLargeException: Self { .init(.imageTooLargeException) }
    /// Amazon Rekognition experienced a service issue. Try your call again.
    public static var internalServerError: Self { .init(.internalServerError) }
    /// The provided image format is not supported.
    public static var invalidImageFormatException: Self { .init(.invalidImageFormatException) }
    /// Pagination token in the request is not valid.
    public static var invalidPaginationTokenException: Self { .init(.invalidPaginationTokenException) }
    /// Input parameter violated a constraint. Validate your parameter before calling the API operation again.
    public static var invalidParameterException: Self { .init(.invalidParameterException) }
    /// Amazon Rekognition is unable to access the S3 object specified in the request.
    public static var invalidS3ObjectException: Self { .init(.invalidS3ObjectException) }
    /// An Amazon Rekognition service limit was exceeded. For example, if you start too many Amazon Rekognition Video jobs concurrently, calls to start operations (StartLabelDetection, for example) will raise a LimitExceededException exception (HTTP status code: 400) until the number of concurrently running jobs is below the Amazon Rekognition service limit.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// The number of requests exceeded your throughput limit. If you want to increase this limit, contact Amazon Rekognition.
    public static var provisionedThroughputExceededException: Self { .init(.provisionedThroughputExceededException) }
    /// A collection with the specified ID already exists.
    public static var resourceAlreadyExistsException: Self { .init(.resourceAlreadyExistsException) }
    /// The specified resource is already being used.
    public static var resourceInUseException: Self { .init(.resourceInUseException) }
    /// The collection specified in the request cannot be found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The requested resource isn't ready. For example, this exception occurs when you call DetectCustomLabels with a model version that isn't deployed.
    public static var resourceNotReadyException: Self { .init(.resourceNotReadyException) }
    /// Amazon Rekognition is temporarily unable to process the request. Try your call again.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// The file size or duration of the supplied media is too large. The maximum file size is 10GB. The maximum duration is 6 hours.
    public static var videoTooLargeException: Self { .init(.videoTooLargeException) }
}

extension RekognitionErrorType: Equatable {
    public static func == (lhs: RekognitionErrorType, rhs: RekognitionErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension RekognitionErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
