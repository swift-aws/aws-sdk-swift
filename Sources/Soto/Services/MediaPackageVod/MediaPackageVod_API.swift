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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

@_exported import SotoCore

/// Client object for interacting with AWS MediaPackageVod service.
///
/// AWS Elemental MediaPackage VOD
public struct MediaPackageVod: AWSService {
    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the MediaPackageVod client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "mediapackage-vod",
            serviceProtocol: .restjson,
            apiVersion: "2018-11-07",
            endpoint: endpoint,
            errorType: MediaPackageVodErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    ///  Creates a new MediaPackage VOD Asset resource.
    public func createAsset(_ input: CreateAssetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAssetResponse> {
        return self.client.execute(operation: "CreateAsset", path: "/assets", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a new MediaPackage VOD PackagingConfiguration resource.
    public func createPackagingConfiguration(_ input: CreatePackagingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePackagingConfigurationResponse> {
        return self.client.execute(operation: "CreatePackagingConfiguration", path: "/packaging_configurations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a new MediaPackage VOD PackagingGroup resource.
    public func createPackagingGroup(_ input: CreatePackagingGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePackagingGroupResponse> {
        return self.client.execute(operation: "CreatePackagingGroup", path: "/packaging_groups", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes an existing MediaPackage VOD Asset resource.
    public func deleteAsset(_ input: DeleteAssetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAssetResponse> {
        return self.client.execute(operation: "DeleteAsset", path: "/assets/{id}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes a MediaPackage VOD PackagingConfiguration resource.
    public func deletePackagingConfiguration(_ input: DeletePackagingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePackagingConfigurationResponse> {
        return self.client.execute(operation: "DeletePackagingConfiguration", path: "/packaging_configurations/{id}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes a MediaPackage VOD PackagingGroup resource.
    public func deletePackagingGroup(_ input: DeletePackagingGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePackagingGroupResponse> {
        return self.client.execute(operation: "DeletePackagingGroup", path: "/packaging_groups/{id}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a description of a MediaPackage VOD Asset resource.
    public func describeAsset(_ input: DescribeAssetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetResponse> {
        return self.client.execute(operation: "DescribeAsset", path: "/assets/{id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a description of a MediaPackage VOD PackagingConfiguration resource.
    public func describePackagingConfiguration(_ input: DescribePackagingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePackagingConfigurationResponse> {
        return self.client.execute(operation: "DescribePackagingConfiguration", path: "/packaging_configurations/{id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a description of a MediaPackage VOD PackagingGroup resource.
    public func describePackagingGroup(_ input: DescribePackagingGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePackagingGroupResponse> {
        return self.client.execute(operation: "DescribePackagingGroup", path: "/packaging_groups/{id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a collection of MediaPackage VOD Asset resources.
    public func listAssets(_ input: ListAssetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAssetsResponse> {
        return self.client.execute(operation: "ListAssets", path: "/assets", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a collection of MediaPackage VOD PackagingConfiguration resources.
    public func listPackagingConfigurations(_ input: ListPackagingConfigurationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPackagingConfigurationsResponse> {
        return self.client.execute(operation: "ListPackagingConfigurations", path: "/packaging_configurations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a collection of MediaPackage VOD PackagingGroup resources.
    public func listPackagingGroups(_ input: ListPackagingGroupsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPackagingGroupsResponse> {
        return self.client.execute(operation: "ListPackagingGroups", path: "/packaging_groups", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of the tags assigned to the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{resource-arn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Adds tags to the specified resource. You can specify one or more tags to add.
    @discardableResult public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "TagResource", path: "/tags/{resource-arn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Removes tags from the specified resource. You can specify one or more tags to remove.
    @discardableResult public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{resource-arn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates a specific packaging group. You can't change the id attribute or any other system-generated attributes.
    public func updatePackagingGroup(_ input: UpdatePackagingGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdatePackagingGroupResponse> {
        return self.client.execute(operation: "UpdatePackagingGroup", path: "/packaging_groups/{id}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension MediaPackageVod {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: MediaPackageVod, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
