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
import NIO

/**
Client object for interacting with AWS AugmentedAIRuntime service.

 Amazon Augmented AI is in preview release and is subject to change. We do not recommend using this product in production environments.  Amazon Augmented AI (Amazon A2I) adds the benefit of human judgment to any machine learning application. When an AI application can't evaluate data with a high degree of confidence, human reviewers can take over. This human review is called a human review workflow. To create and start a human review workflow, you need three resources: a worker task template, a flow definition, and a human loop. For information about these resources and prerequisites for using Amazon A2I, see Get Started with Amazon Augmented AI in the Amazon SageMaker Developer Guide. This API reference includes information about API actions and data types that you can use to interact with Amazon A2I programmatically. Use this guide to:   Start a human loop with the StartHumanLoop operation when using Amazon A2I with a custom task type. To learn more about the difference between custom and built-in task types, see Use Task Types . To learn how to start a human loop using this API, see Create and Start a Human Loop for a Custom Task Type  in the Amazon SageMaker Developer Guide.   Manage your human loops. You can list all human loops that you have created, describe individual human loops, and stop and delete human loops. To learn more, see Monitor and Manage Your Human Loop  in the Amazon SageMaker Developer Guide.   Amazon A2I integrates APIs from various AWS services to create and start human review workflows for those services. To learn how Amazon A2I uses these APIs, see Use APIs in Amazon A2I in the Amazon SageMaker Developer Guide.
*/
public struct AugmentedAIRuntime {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the AugmentedAIRuntime client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - retryController: Object returning whether retries should be attempted. Possible options are NoRetry(), ExponentialRetry() or JitterRetry()
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        accessKeyId: String? = nil,
        secretAccessKey: String? = nil,
        sessionToken: String? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSSDKSwiftCore.Partition = .aws,
        endpoint: String? = nil,
        retryController: RetryController = JitterRetry(),
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            partition: region?.partition ?? partition,
            service: "a2i-runtime.sagemaker",
            signingName: "sagemaker",
            serviceProtocol: .restjson,
            apiVersion: "2019-11-07",
            endpoint: endpoint,
            retryController: retryController,
            middlewares: middlewares,
            possibleErrorTypes: [AugmentedAIRuntimeErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Deletes the specified human loop for a flow definition.
    public func deleteHumanLoop(_ input: DeleteHumanLoopRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteHumanLoopResponse> {
        return client.send(operation: "DeleteHumanLoop", path: "/human-loops/{HumanLoopName}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Returns information about the specified human loop.
    public func describeHumanLoop(_ input: DescribeHumanLoopRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHumanLoopResponse> {
        return client.send(operation: "DescribeHumanLoop", path: "/human-loops/{HumanLoopName}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns information about human loops, given the specified parameters. If a human loop was deleted, it will not be included.
    public func listHumanLoops(_ input: ListHumanLoopsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListHumanLoopsResponse> {
        return client.send(operation: "ListHumanLoops", path: "/human-loops", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Starts a human loop, provided that at least one activation condition is met.
    public func startHumanLoop(_ input: StartHumanLoopRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartHumanLoopResponse> {
        return client.send(operation: "StartHumanLoop", path: "/human-loops", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Stops the specified human loop.
    public func stopHumanLoop(_ input: StopHumanLoopRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopHumanLoopResponse> {
        return client.send(operation: "StopHumanLoop", path: "/human-loops/stop", httpMethod: "POST", input: input, on: eventLoop)
    }
}
