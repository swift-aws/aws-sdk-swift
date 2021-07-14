//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
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

/// Service object for interacting with AWS LakeFormation service.
///
/// AWS Lake Formation Defines the public endpoint for the AWS Lake Formation service.
public struct LakeFormation: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the LakeFormation client
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
            amzTarget: "AWSLakeFormation",
            service: "lakeformation",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2017-03-31",
            endpoint: endpoint,
            errorType: LakeFormationErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Batch operation to grant permissions to the principal.
    public func batchGrantPermissions(_ input: BatchGrantPermissionsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchGrantPermissionsResponse> {
        return self.client.execute(operation: "BatchGrantPermissions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Batch operation to revoke permissions from the principal.
    public func batchRevokePermissions(_ input: BatchRevokePermissionsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchRevokePermissionsResponse> {
        return self.client.execute(operation: "BatchRevokePermissions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Deregisters the resource as managed by the Data Catalog. When you deregister a path, Lake Formation removes the path from the inline policy attached to your service-linked role.
    public func deregisterResource(_ input: DeregisterResourceRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeregisterResourceResponse> {
        return self.client.execute(operation: "DeregisterResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Retrieves the current data access role for the given resource registered in AWS Lake Formation.
    public func describeResource(_ input: DescribeResourceRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourceResponse> {
        return self.client.execute(operation: "DescribeResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Retrieves the list of the data lake administrators of a Lake Formation-managed data lake.
    public func getDataLakeSettings(_ input: GetDataLakeSettingsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDataLakeSettingsResponse> {
        return self.client.execute(operation: "GetDataLakeSettings", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Returns the Lake Formation permissions for a specified table or database resource located at a path in Amazon S3. GetEffectivePermissionsForPath will not return databases and tables if the catalog is encrypted.
    public func getEffectivePermissionsForPath(_ input: GetEffectivePermissionsForPathRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetEffectivePermissionsForPathResponse> {
        return self.client.execute(operation: "GetEffectivePermissionsForPath", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Grants permissions to the principal to access metadata in the Data Catalog and data organized in underlying data storage such as Amazon S3. For information about permissions, see Security and Access Control to Metadata and Data.
    public func grantPermissions(_ input: GrantPermissionsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GrantPermissionsResponse> {
        return self.client.execute(operation: "GrantPermissions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Returns a list of the principal permissions on the resource, filtered by the permissions of the caller. For example, if you are granted an ALTER permission, you are able to see only the principal permissions for ALTER. This operation returns only those permissions that have been explicitly granted. For information about permissions, see Security and Access Control to Metadata and Data.
    public func listPermissions(_ input: ListPermissionsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPermissionsResponse> {
        return self.client.execute(operation: "ListPermissions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Lists the resources registered to be managed by the Data Catalog.
    public func listResources(_ input: ListResourcesRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListResourcesResponse> {
        return self.client.execute(operation: "ListResources", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Sets the list of data lake administrators who have admin privileges on all resources managed by Lake Formation. For more information on admin privileges, see Granting Lake Formation Permissions. This API replaces the current list of data lake admins with the new list being passed. To add an admin, fetch the current list and add the new admin to that list and pass that list in this API.
    public func putDataLakeSettings(_ input: PutDataLakeSettingsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutDataLakeSettingsResponse> {
        return self.client.execute(operation: "PutDataLakeSettings", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Registers the resource as managed by the Data Catalog. To add or update data, Lake Formation needs read/write access to the chosen Amazon S3 path. Choose a role that you know has permission to do this, or choose the AWSServiceRoleForLakeFormationDataAccess service-linked role. When you register the first Amazon S3 path, the service-linked role and a new inline policy are created on your behalf. Lake Formation adds the first path to the inline policy and attaches it to the service-linked role. When you register subsequent paths, Lake Formation adds the path to the existing policy. The following request registers a new location and gives AWS Lake Formation permission to use the service-linked role to access that location.  ResourceArn = arn:aws:s3:::my-bucket UseServiceLinkedRole = true  If UseServiceLinkedRole is not set to true, you must provide or set the RoleArn:  arn:aws:iam::12345:role/my-data-access-role
    public func registerResource(_ input: RegisterResourceRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterResourceResponse> {
        return self.client.execute(operation: "RegisterResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Revokes permissions to the principal to access metadata in the Data Catalog and data organized in underlying data storage such as Amazon S3.
    public func revokePermissions(_ input: RevokePermissionsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RevokePermissionsResponse> {
        return self.client.execute(operation: "RevokePermissions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Updates the data access role used for vending access to the given (registered) resource in AWS Lake Formation.
    public func updateResource(_ input: UpdateResourceRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateResourceResponse> {
        return self.client.execute(operation: "UpdateResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }
}

extension LakeFormation {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: LakeFormation, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
