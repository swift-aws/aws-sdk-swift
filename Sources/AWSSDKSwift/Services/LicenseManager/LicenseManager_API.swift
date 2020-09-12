// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS LicenseManager service.

 AWS License Manager  AWS License Manager makes it easier to manage licenses from software vendors across multiple AWS accounts and on-premises servers.
*/
public struct LicenseManager {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the LicenseManager client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - eventLoopGroupProvider: EventLoopGroup to use. Use `useAWSClientShared` if the client shall manage its own EventLoopGroup.
    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider = .useAWSClientShared) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "AWSLicenseManager",
            service: "license-manager",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-08-01",
            endpoint: endpoint,
            serviceEndpoints: ["fips-us-east-1": "license-manager-fips.us-east-1.amazonaws.com", "fips-us-east-2": "license-manager-fips.us-east-2.amazonaws.com", "fips-us-west-1": "license-manager-fips.us-west-1.amazonaws.com", "fips-us-west-2": "license-manager-fips.us-west-2.amazonaws.com"],
            middlewares: middlewares,
            possibleErrorTypes: [LicenseManagerErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }
    
    //MARK: API Calls

    ///  Creates a license configuration. A license configuration is an abstraction of a customer license agreement that can be consumed and enforced by License Manager. Components include specifications for the license type (licensing by instance, socket, CPU, or vCPU), allowed tenancy (shared tenancy, Dedicated Instance, Dedicated Host, or all of these), license affinity to host (how long a license must be associated with a host), and the number of licenses purchased and used.
    public func createLicenseConfiguration(_ input: CreateLicenseConfigurationRequest) -> EventLoopFuture<CreateLicenseConfigurationResponse> {
        return client.send(operation: "CreateLicenseConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified license configuration. You cannot delete a license configuration that is in use.
    public func deleteLicenseConfiguration(_ input: DeleteLicenseConfigurationRequest) -> EventLoopFuture<DeleteLicenseConfigurationResponse> {
        return client.send(operation: "DeleteLicenseConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets detailed information about the specified license configuration.
    public func getLicenseConfiguration(_ input: GetLicenseConfigurationRequest) -> EventLoopFuture<GetLicenseConfigurationResponse> {
        return client.send(operation: "GetLicenseConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the License Manager settings for the current Region.
    public func getServiceSettings(_ input: GetServiceSettingsRequest) -> EventLoopFuture<GetServiceSettingsResponse> {
        return client.send(operation: "GetServiceSettings", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the resource associations for the specified license configuration. Resource associations need not consume licenses from a license configuration. For example, an AMI or a stopped instance might not consume a license (depending on the license rules).
    public func listAssociationsForLicenseConfiguration(_ input: ListAssociationsForLicenseConfigurationRequest) -> EventLoopFuture<ListAssociationsForLicenseConfigurationResponse> {
        return client.send(operation: "ListAssociationsForLicenseConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the license configuration operations that failed.
    public func listFailuresForLicenseConfigurationOperations(_ input: ListFailuresForLicenseConfigurationOperationsRequest) -> EventLoopFuture<ListFailuresForLicenseConfigurationOperationsResponse> {
        return client.send(operation: "ListFailuresForLicenseConfigurationOperations", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the license configurations for your account.
    public func listLicenseConfigurations(_ input: ListLicenseConfigurationsRequest) -> EventLoopFuture<ListLicenseConfigurationsResponse> {
        return client.send(operation: "ListLicenseConfigurations", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the license configurations for the specified resource.
    public func listLicenseSpecificationsForResource(_ input: ListLicenseSpecificationsForResourceRequest) -> EventLoopFuture<ListLicenseSpecificationsForResourceResponse> {
        return client.send(operation: "ListLicenseSpecificationsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists resources managed using Systems Manager inventory.
    public func listResourceInventory(_ input: ListResourceInventoryRequest) -> EventLoopFuture<ListResourceInventoryResponse> {
        return client.send(operation: "ListResourceInventory", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the tags for the specified license configuration.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all license usage records for a license configuration, displaying license consumption details by resource at a selected point in time. Use this action to audit the current license consumption for any license inventory and configuration.
    public func listUsageForLicenseConfiguration(_ input: ListUsageForLicenseConfigurationRequest) -> EventLoopFuture<ListUsageForLicenseConfigurationResponse> {
        return client.send(operation: "ListUsageForLicenseConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds the specified tags to the specified license configuration.
    public func tagResource(_ input: TagResourceRequest) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes the specified tags from the specified license configuration.
    public func untagResource(_ input: UntagResourceRequest) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies the attributes of an existing license configuration.
    public func updateLicenseConfiguration(_ input: UpdateLicenseConfigurationRequest) -> EventLoopFuture<UpdateLicenseConfigurationResponse> {
        return client.send(operation: "UpdateLicenseConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds or removes the specified license configurations for the specified AWS resource. You can update the license specifications of AMIs, instances, and hosts. You cannot update the license specifications for launch templates and AWS CloudFormation templates, as they send license configurations to the operation that creates the resource.
    public func updateLicenseSpecificationsForResource(_ input: UpdateLicenseSpecificationsForResourceRequest) -> EventLoopFuture<UpdateLicenseSpecificationsForResourceResponse> {
        return client.send(operation: "UpdateLicenseSpecificationsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates License Manager settings for the current Region.
    public func updateServiceSettings(_ input: UpdateServiceSettingsRequest) -> EventLoopFuture<UpdateServiceSettingsResponse> {
        return client.send(operation: "UpdateServiceSettings", path: "/", httpMethod: "POST", input: input)
    }
}
