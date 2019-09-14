// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
AWS Elemental MediaPackage VOD
*/
public struct MediaPackageVod {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "mediapackage-vod",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-11-07",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [MediaPackageVodErrorType.self]
        )
    }

    ///  Creates a new MediaPackage VOD Asset resource.
    public func createAsset(_ input: CreateAssetRequest) -> Future<CreateAssetResponse> {
        return client.send(operation: "CreateAsset", path: "/assets", httpMethod: "POST", input: input)
    }

    ///  Creates a new MediaPackage VOD PackagingConfiguration resource.
    public func createPackagingConfiguration(_ input: CreatePackagingConfigurationRequest) -> Future<CreatePackagingConfigurationResponse> {
        return client.send(operation: "CreatePackagingConfiguration", path: "/packaging_configurations", httpMethod: "POST", input: input)
    }

    ///  Creates a new MediaPackage VOD PackagingGroup resource.
    public func createPackagingGroup(_ input: CreatePackagingGroupRequest) -> Future<CreatePackagingGroupResponse> {
        return client.send(operation: "CreatePackagingGroup", path: "/packaging_groups", httpMethod: "POST", input: input)
    }

    ///  Deletes an existing MediaPackage VOD Asset resource.
    public func deleteAsset(_ input: DeleteAssetRequest) -> Future<DeleteAssetResponse> {
        return client.send(operation: "DeleteAsset", path: "/assets/{id}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes a MediaPackage VOD PackagingConfiguration resource.
    public func deletePackagingConfiguration(_ input: DeletePackagingConfigurationRequest) -> Future<DeletePackagingConfigurationResponse> {
        return client.send(operation: "DeletePackagingConfiguration", path: "/packaging_configurations/{id}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes a MediaPackage VOD PackagingGroup resource.
    public func deletePackagingGroup(_ input: DeletePackagingGroupRequest) -> Future<DeletePackagingGroupResponse> {
        return client.send(operation: "DeletePackagingGroup", path: "/packaging_groups/{id}", httpMethod: "DELETE", input: input)
    }

    ///  Returns a description of a MediaPackage VOD Asset resource.
    public func describeAsset(_ input: DescribeAssetRequest) -> Future<DescribeAssetResponse> {
        return client.send(operation: "DescribeAsset", path: "/assets/{id}", httpMethod: "GET", input: input)
    }

    ///  Returns a description of a MediaPackage VOD PackagingConfiguration resource.
    public func describePackagingConfiguration(_ input: DescribePackagingConfigurationRequest) -> Future<DescribePackagingConfigurationResponse> {
        return client.send(operation: "DescribePackagingConfiguration", path: "/packaging_configurations/{id}", httpMethod: "GET", input: input)
    }

    ///  Returns a description of a MediaPackage VOD PackagingGroup resource.
    public func describePackagingGroup(_ input: DescribePackagingGroupRequest) -> Future<DescribePackagingGroupResponse> {
        return client.send(operation: "DescribePackagingGroup", path: "/packaging_groups/{id}", httpMethod: "GET", input: input)
    }

    ///  Returns a collection of MediaPackage VOD Asset resources.
    public func listAssets(_ input: ListAssetsRequest) -> Future<ListAssetsResponse> {
        return client.send(operation: "ListAssets", path: "/assets", httpMethod: "GET", input: input)
    }

    ///  Returns a collection of MediaPackage VOD PackagingConfiguration resources.
    public func listPackagingConfigurations(_ input: ListPackagingConfigurationsRequest) -> Future<ListPackagingConfigurationsResponse> {
        return client.send(operation: "ListPackagingConfigurations", path: "/packaging_configurations", httpMethod: "GET", input: input)
    }

    ///  Returns a collection of MediaPackage VOD PackagingGroup resources.
    public func listPackagingGroups(_ input: ListPackagingGroupsRequest) -> Future<ListPackagingGroupsResponse> {
        return client.send(operation: "ListPackagingGroups", path: "/packaging_groups", httpMethod: "GET", input: input)
    }
}
