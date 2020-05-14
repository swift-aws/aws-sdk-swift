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
Client object for interacting with AWS MediaTailor service.

Use the AWS Elemental MediaTailor SDK to configure scalable ad insertion for your live and VOD content. With AWS Elemental MediaTailor, you can serve targeted ads to viewers while maintaining broadcast quality in over-the-top (OTT) video applications. For information about using the service, including detailed information about the settings covered in this guide, see the AWS Elemental MediaTailor User Guide.Through the SDK, you manage AWS Elemental MediaTailor configurations the same as you do through the console. For example, you specify ad insertion behavior and mapping information for the origin server and the ad decision server (ADS).
*/
public struct MediaTailor {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the MediaTailor client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        accessKeyId: String? = nil,
        secretAccessKey: String? = nil,
        sessionToken: String? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSSDKSwiftCore.Partition = .aws,
        endpoint: String? = nil,
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            partition: region?.partition ?? partition,
            service: "api.mediatailor",
            signingName: "mediatailor",
            serviceProtocol: .restjson,
            apiVersion: "2018-04-23",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [MediaTailorErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Deletes the playback configuration for the specified name. 
    public func deletePlaybackConfiguration(_ input: DeletePlaybackConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePlaybackConfigurationResponse> {
        return client.send(operation: "DeletePlaybackConfiguration", path: "/playbackConfiguration/{Name}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Returns the playback configuration for the specified name. 
    public func getPlaybackConfiguration(_ input: GetPlaybackConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPlaybackConfigurationResponse> {
        return client.send(operation: "GetPlaybackConfiguration", path: "/playbackConfiguration/{Name}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a list of the playback configurations defined in AWS Elemental MediaTailor. You can specify a maximum number of configurations to return at a time. The default maximum is 50. Results are returned in pagefuls. If MediaTailor has more configurations than the specified maximum, it provides parameters in the response that you can use to retrieve the next pageful. 
    public func listPlaybackConfigurations(_ input: ListPlaybackConfigurationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPlaybackConfigurationsResponse> {
        return client.send(operation: "ListPlaybackConfigurations", path: "/playbackConfigurations", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a list of the tags assigned to the specified playback configuration resource. 
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Adds a new playback configuration to AWS Elemental MediaTailor. 
    public func putPlaybackConfiguration(_ input: PutPlaybackConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutPlaybackConfigurationResponse> {
        return client.send(operation: "PutPlaybackConfiguration", path: "/playbackConfiguration", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Adds tags to the specified playback configuration resource. You can specify one or more tags to add. 
    @discardableResult public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes tags from the specified playback configuration resource. You can specify one or more tags to remove. 
    @discardableResult public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: "DELETE", input: input, on: eventLoop)
    }
}
