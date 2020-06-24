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
Client object for interacting with AWS KinesisVideo service.

*/
public struct KinesisVideo {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: ServiceConfig

    //MARK: Initialization

    /// Initialize the KinesisVideo client
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
            service: "kinesisvideo",
            serviceProtocol: .restjson,
            apiVersion: "2017-09-30",
            endpoint: endpoint,
            possibleErrorTypes: [KinesisVideoErrorType.self]
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

    ///  Creates a signaling channel.   CreateSignalingChannel is an asynchronous operation.
    public func createSignalingChannel(_ input: CreateSignalingChannelInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSignalingChannelOutput> {
        return client.send(operation: "CreateSignalingChannel", path: "/createSignalingChannel", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a new Kinesis video stream.  When you create a new stream, Kinesis Video Streams assigns it a version number. When you change the stream's metadata, Kinesis Video Streams updates the version.   CreateStream is an asynchronous operation. For information about how the service works, see How it Works.  You must have permissions for the KinesisVideo:CreateStream action.
    public func createStream(_ input: CreateStreamInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateStreamOutput> {
        return client.send(operation: "CreateStream", path: "/createStream", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a specified signaling channel. DeleteSignalingChannel is an asynchronous operation. If you don't specify the channel's current version, the most recent version is deleted.
    public func deleteSignalingChannel(_ input: DeleteSignalingChannelInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSignalingChannelOutput> {
        return client.send(operation: "DeleteSignalingChannel", path: "/deleteSignalingChannel", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a Kinesis video stream and the data contained in the stream.  This method marks the stream for deletion, and makes the data in the stream inaccessible immediately.    To ensure that you have the latest version of the stream before deleting it, you can specify the stream version. Kinesis Video Streams assigns a version to each stream. When you update a stream, Kinesis Video Streams assigns a new version number. To get the latest stream version, use the DescribeStream API.  This operation requires permission for the KinesisVideo:DeleteStream action.
    public func deleteStream(_ input: DeleteStreamInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteStreamOutput> {
        return client.send(operation: "DeleteStream", path: "/deleteStream", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns the most current information about the signaling channel. You must specify either the name or the Amazon Resource Name (ARN) of the channel that you want to describe.
    public func describeSignalingChannel(_ input: DescribeSignalingChannelInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSignalingChannelOutput> {
        return client.send(operation: "DescribeSignalingChannel", path: "/describeSignalingChannel", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns the most current information about the specified stream. You must specify either the StreamName or the StreamARN. 
    public func describeStream(_ input: DescribeStreamInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStreamOutput> {
        return client.send(operation: "DescribeStream", path: "/describeStream", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets an endpoint for a specified stream for either reading or writing. Use this endpoint in your application to read from the specified stream (using the GetMedia or GetMediaForFragmentList operations) or write to it (using the PutMedia operation).   The returned endpoint does not have the API name appended. The client needs to add the API name to the returned endpoint.  In the request, specify the stream either by StreamName or StreamARN.
    public func getDataEndpoint(_ input: GetDataEndpointInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDataEndpointOutput> {
        return client.send(operation: "GetDataEndpoint", path: "/getDataEndpoint", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Provides an endpoint for the specified signaling channel to send and receive messages. This API uses the SingleMasterChannelEndpointConfiguration input parameter, which consists of the Protocols and Role properties.  Protocols is used to determine the communication mechanism. For example, if you specify WSS as the protocol, this API produces a secure websocket endpoint. If you specify HTTPS as the protocol, this API generates an HTTPS endpoint.   Role determines the messaging permissions. A MASTER role results in this API generating an endpoint that a client can use to communicate with any of the viewers on the channel. A VIEWER role results in this API generating an endpoint that a client can use to communicate only with a MASTER. 
    public func getSignalingChannelEndpoint(_ input: GetSignalingChannelEndpointInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSignalingChannelEndpointOutput> {
        return client.send(operation: "GetSignalingChannelEndpoint", path: "/getSignalingChannelEndpoint", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns an array of ChannelInfo objects. Each object describes a signaling channel. To retrieve only those channels that satisfy a specific condition, you can specify a ChannelNameCondition.
    public func listSignalingChannels(_ input: ListSignalingChannelsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSignalingChannelsOutput> {
        return client.send(operation: "ListSignalingChannels", path: "/listSignalingChannels", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns an array of StreamInfo objects. Each object describes a stream. To retrieve only streams that satisfy a specific condition, you can specify a StreamNameCondition. 
    public func listStreams(_ input: ListStreamsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListStreamsOutput> {
        return client.send(operation: "ListStreams", path: "/listStreams", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a list of tags associated with the specified signaling channel.
    public func listTagsForResource(_ input: ListTagsForResourceInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceOutput> {
        return client.send(operation: "ListTagsForResource", path: "/ListTagsForResource", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a list of tags associated with the specified stream. In the request, you must specify either the StreamName or the StreamARN. 
    public func listTagsForStream(_ input: ListTagsForStreamInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForStreamOutput> {
        return client.send(operation: "ListTagsForStream", path: "/listTagsForStream", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Adds one or more tags to a signaling channel. A tag is a key-value pair (the value is optional) that you can define and assign to AWS resources. If you specify a tag that already exists, the tag value is replaced with the value that you specify in the request. For more information, see Using Cost Allocation Tags in the AWS Billing and Cost Management User Guide.
    public func tagResource(_ input: TagResourceInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceOutput> {
        return client.send(operation: "TagResource", path: "/TagResource", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Adds one or more tags to a stream. A tag is a key-value pair (the value is optional) that you can define and assign to AWS resources. If you specify a tag that already exists, the tag value is replaced with the value that you specify in the request. For more information, see Using Cost Allocation Tags in the AWS Billing and Cost Management User Guide.  You must provide either the StreamName or the StreamARN. This operation requires permission for the KinesisVideo:TagStream action. Kinesis video streams support up to 50 tags.
    public func tagStream(_ input: TagStreamInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagStreamOutput> {
        return client.send(operation: "TagStream", path: "/tagStream", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes one or more tags from a signaling channel. In the request, specify only a tag key or keys; don't specify the value. If you specify a tag key that does not exist, it's ignored.
    public func untagResource(_ input: UntagResourceInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceOutput> {
        return client.send(operation: "UntagResource", path: "/UntagResource", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes one or more tags from a stream. In the request, specify only a tag key or keys; don't specify the value. If you specify a tag key that does not exist, it's ignored. In the request, you must provide the StreamName or StreamARN.
    public func untagStream(_ input: UntagStreamInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagStreamOutput> {
        return client.send(operation: "UntagStream", path: "/untagStream", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///   Increases or decreases the stream's data retention period by the value that you specify. To indicate whether you want to increase or decrease the data retention period, specify the Operation parameter in the request body. In the request, you must specify either the StreamName or the StreamARN.   The retention period that you specify replaces the current value.  This operation requires permission for the KinesisVideo:UpdateDataRetention action. Changing the data retention period affects the data in the stream as follows:   If the data retention period is increased, existing data is retained for the new retention period. For example, if the data retention period is increased from one hour to seven hours, all existing data is retained for seven hours.   If the data retention period is decreased, existing data is retained for the new retention period. For example, if the data retention period is decreased from seven hours to one hour, all existing data is retained for one hour, and any data older than one hour is deleted immediately.  
    public func updateDataRetention(_ input: UpdateDataRetentionInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDataRetentionOutput> {
        return client.send(operation: "UpdateDataRetention", path: "/updateDataRetention", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the existing signaling channel. This is an asynchronous operation and takes time to complete.  If the MessageTtlSeconds value is updated (either increased or reduced), it only applies to new messages sent via this channel after it's been updated. Existing messages are still expired as per the previous MessageTtlSeconds value.
    public func updateSignalingChannel(_ input: UpdateSignalingChannelInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateSignalingChannelOutput> {
        return client.send(operation: "UpdateSignalingChannel", path: "/updateSignalingChannel", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates stream metadata, such as the device name and media type. You must provide the stream name or the Amazon Resource Name (ARN) of the stream. To make sure that you have the latest version of the stream before updating it, you can specify the stream version. Kinesis Video Streams assigns a version to each stream. When you update a stream, Kinesis Video Streams assigns a new version number. To get the latest stream version, use the DescribeStream API.   UpdateStream is an asynchronous operation, and takes time to complete.
    public func updateStream(_ input: UpdateStreamInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateStreamOutput> {
        return client.send(operation: "UpdateStream", path: "/updateStream", httpMethod: "POST", input: input, on: eventLoop)
    }
}
