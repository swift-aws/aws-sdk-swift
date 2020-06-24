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
Client object for interacting with AWS IoTEvents service.

AWS IoT Events monitors your equipment or device fleets for failures or changes in operation, and triggers actions when such events occur. You can use AWS IoT Events API operations to create, read, update, and delete inputs and detector models, and to list their versions.
*/
public struct IoTEvents {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: ServiceConfig

    //MARK: Initialization

    /// Initialize the IoTEvents client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - retryPolicy: Object returning whether retries should be attempted. Possible options are NoRetry(), ExponentialRetry() or JitterRetry()
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        credentialProvider: CredentialProvider? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSSDKSwiftCore.Partition = .aws,
        endpoint: String? = nil,
        retryPolicy: RetryPolicy = JitterRetry(),
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.serviceConfig = ServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "iotevents",
            serviceProtocol: .restjson,
            apiVersion: "2018-07-27",
            endpoint: endpoint,
            possibleErrorTypes: [IoTEventsErrorType.self]
        )
        self.client = AWSClient(
            credentialProvider: credentialProvider,
            serviceConfig: serviceConfig,
            retryPolicy: retryPolicy,
            middlewares: middlewares,
            httpClientProvider: httpClientProvider
        )
    }
    
    func syncShutdown() throws {
        try client.syncShutdown()
    }
    
    //MARK: API Calls

    ///  Creates a detector model.
    public func createDetectorModel(_ input: CreateDetectorModelRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDetectorModelResponse> {
        return client.send(operation: "CreateDetectorModel", path: "/detector-models", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates an input.
    public func createInput(_ input: CreateInputRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateInputResponse> {
        return client.send(operation: "CreateInput", path: "/inputs", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a detector model. Any active instances of the detector model are also deleted.
    public func deleteDetectorModel(_ input: DeleteDetectorModelRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDetectorModelResponse> {
        return client.send(operation: "DeleteDetectorModel", path: "/detector-models/{detectorModelName}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes an input.
    public func deleteInput(_ input: DeleteInputRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteInputResponse> {
        return client.send(operation: "DeleteInput", path: "/inputs/{inputName}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Describes a detector model. If the version parameter is not specified, information about the latest version is returned.
    public func describeDetectorModel(_ input: DescribeDetectorModelRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDetectorModelResponse> {
        return client.send(operation: "DescribeDetectorModel", path: "/detector-models/{detectorModelName}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Describes an input.
    public func describeInput(_ input: DescribeInputRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInputResponse> {
        return client.send(operation: "DescribeInput", path: "/inputs/{inputName}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Retrieves the current settings of the AWS IoT Events logging options.
    public func describeLoggingOptions(_ input: DescribeLoggingOptionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLoggingOptionsResponse> {
        return client.send(operation: "DescribeLoggingOptions", path: "/logging", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Lists all the versions of a detector model. Only the metadata associated with each detector model version is returned.
    public func listDetectorModelVersions(_ input: ListDetectorModelVersionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDetectorModelVersionsResponse> {
        return client.send(operation: "ListDetectorModelVersions", path: "/detector-models/{detectorModelName}/versions", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Lists the detector models you have created. Only the metadata associated with each detector model is returned.
    public func listDetectorModels(_ input: ListDetectorModelsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDetectorModelsResponse> {
        return client.send(operation: "ListDetectorModels", path: "/detector-models", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Lists the inputs you have created.
    public func listInputs(_ input: ListInputsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListInputsResponse> {
        return client.send(operation: "ListInputs", path: "/inputs", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Lists the tags (metadata) you have assigned to the resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/tags", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Sets or updates the AWS IoT Events logging options. If you update the value of any loggingOptions field, it takes up to one minute for the change to take effect. If you change the policy attached to the role you specified in the roleArn field (for example, to correct an invalid policy), it takes up to five minutes for that change to take effect.
    @discardableResult public func putLoggingOptions(_ input: PutLoggingOptionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "PutLoggingOptions", path: "/logging", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Adds to or modifies the tags of the given resource. Tags are metadata that can be used to manage a resource.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/tags", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes the given tags (metadata) from the resource.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/tags", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Updates a detector model. Detectors (instances) spawned by the previous version are deleted and then re-created as new inputs arrive.
    public func updateDetectorModel(_ input: UpdateDetectorModelRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDetectorModelResponse> {
        return client.send(operation: "UpdateDetectorModel", path: "/detector-models/{detectorModelName}", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates an input.
    public func updateInput(_ input: UpdateInputRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateInputResponse> {
        return client.send(operation: "UpdateInput", path: "/inputs/{inputName}", httpMethod: "PUT", input: input, on: eventLoop)
    }
}
