//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore

/**
Client object for interacting with AWS Translate service.

Provides translation between one source language and another of the same set of languages.
*/
public struct Translate {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the Translate client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil
    ) {
        self.client = client
        self.serviceConfig = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            amzTarget: "AWSShineFrontendService_20170701",
            service: "translate",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2017-07-01",
            endpoint: endpoint,
            possibleErrorTypes: [TranslateErrorType.self],
            timeout: timeout
        )
    }
    
    //MARK: API Calls

    ///  A synchronous action that deletes a custom terminology.
    @discardableResult public func deleteTerminology(_ input: DeleteTerminologyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteTerminology", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Gets the properties associated with an asycnhronous batch translation job including name, ID, status, source and target languages, input/output S3 buckets, and so on.
    public func describeTextTranslationJob(_ input: DescribeTextTranslationJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTextTranslationJobResponse> {
        return client.execute(operation: "DescribeTextTranslationJob", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Retrieves a custom terminology.
    public func getTerminology(_ input: GetTerminologyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTerminologyResponse> {
        return client.execute(operation: "GetTerminology", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates or updates a custom terminology, depending on whether or not one already exists for the given terminology name. Importing a terminology with the same name as an existing one will merge the terminologies based on the chosen merge strategy. Currently, the only supported merge strategy is OVERWRITE, and so the imported terminology will overwrite an existing terminology of the same name. If you import a terminology that overwrites an existing one, the new terminology take up to 10 minutes to fully propagate and be available for use in a translation due to cache policies with the DataPlane service that performs the translations.
    public func importTerminology(_ input: ImportTerminologyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImportTerminologyResponse> {
        return client.execute(operation: "ImportTerminology", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Provides a list of custom terminologies associated with your account.
    public func listTerminologies(_ input: ListTerminologiesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTerminologiesResponse> {
        return client.execute(operation: "ListTerminologies", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Gets a list of the batch translation jobs that you have submitted.
    public func listTextTranslationJobs(_ input: ListTextTranslationJobsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTextTranslationJobsResponse> {
        return client.execute(operation: "ListTextTranslationJobs", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Starts an asynchronous batch translation job. Batch translation jobs can be used to translate large volumes of text across multiple documents at once. For more information, see async. Batch translation jobs can be described with the DescribeTextTranslationJob operation, listed with the ListTextTranslationJobs operation, and stopped with the StopTextTranslationJob operation.  Amazon Translate does not support batch translation of multiple source languages at once. 
    public func startTextTranslationJob(_ input: StartTextTranslationJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartTextTranslationJobResponse> {
        return client.execute(operation: "StartTextTranslationJob", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Stops an asynchronous batch translation job that is in progress. If the job's state is IN_PROGRESS, the job will be marked for termination and put into the STOP_REQUESTED state. If the job completes before it can be stopped, it is put into the COMPLETED state. Otherwise, the job is put into the STOPPED state. Asynchronous batch translation jobs are started with the StartTextTranslationJob operation. You can use the DescribeTextTranslationJob or ListTextTranslationJobs operations to get a batch translation job's JobId.
    public func stopTextTranslationJob(_ input: StopTextTranslationJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopTextTranslationJobResponse> {
        return client.execute(operation: "StopTextTranslationJob", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Translates input text from the source language to the target language. For a list of available languages and language codes, see what-is-languages.
    public func translateText(_ input: TranslateTextRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TranslateTextResponse> {
        return client.execute(operation: "TranslateText", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }
}
