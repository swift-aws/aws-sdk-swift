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
import Foundation
import NIO

/**
Client object for interacting with AWS Schemas service.

AWS EventBridge Schemas
*/
public struct Schemas {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the Schemas client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        accessKeyId: String? = nil,
        secretAccessKey: String? = nil,
        sessionToken: String? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        endpoint: String? = nil,
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "schemas",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2019-12-02",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [SchemasErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Creates a discoverer.
    public func createDiscoverer(_ input: CreateDiscovererRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDiscovererResponse> {
        return client.send(operation: "CreateDiscoverer", path: "/v1/discoverers", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a registry.
    public func createRegistry(_ input: CreateRegistryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRegistryResponse> {
        return client.send(operation: "CreateRegistry", path: "/v1/registries/name/{registryName}", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a schema definition.
    public func createSchema(_ input: CreateSchemaRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSchemaResponse> {
        return client.send(operation: "CreateSchema", path: "/v1/registries/name/{registryName}/schemas/name/{schemaName}", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a discoverer.
    @discardableResult public func deleteDiscoverer(_ input: DeleteDiscovererRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteDiscoverer", path: "/v1/discoverers/id/{discovererId}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes a Registry.
    @discardableResult public func deleteRegistry(_ input: DeleteRegistryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteRegistry", path: "/v1/registries/name/{registryName}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Delete a schema definition.
    @discardableResult public func deleteSchema(_ input: DeleteSchemaRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteSchema", path: "/v1/registries/name/{registryName}/schemas/name/{schemaName}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Delete the schema version definition
    @discardableResult public func deleteSchemaVersion(_ input: DeleteSchemaVersionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteSchemaVersion", path: "/v1/registries/name/{registryName}/schemas/name/{schemaName}/version/{schemaVersion}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Describe the code binding URI.
    public func describeCodeBinding(_ input: DescribeCodeBindingRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCodeBindingResponse> {
        return client.send(operation: "DescribeCodeBinding", path: "/v1/registries/name/{registryName}/schemas/name/{schemaName}/language/{language}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Describes the discoverer.
    public func describeDiscoverer(_ input: DescribeDiscovererRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDiscovererResponse> {
        return client.send(operation: "DescribeDiscoverer", path: "/v1/discoverers/id/{discovererId}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Describes the registry.
    public func describeRegistry(_ input: DescribeRegistryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRegistryResponse> {
        return client.send(operation: "DescribeRegistry", path: "/v1/registries/name/{registryName}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Retrieve the schema definition.
    public func describeSchema(_ input: DescribeSchemaRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSchemaResponse> {
        return client.send(operation: "DescribeSchema", path: "/v1/registries/name/{registryName}/schemas/name/{schemaName}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Get the code binding source URI.
    public func getCodeBindingSource(_ input: GetCodeBindingSourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCodeBindingSourceResponse> {
        return client.send(operation: "GetCodeBindingSource", path: "/v1/registries/name/{registryName}/schemas/name/{schemaName}/language/{language}/source", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Get the discovered schema that was generated based on sampled events.
    public func getDiscoveredSchema(_ input: GetDiscoveredSchemaRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDiscoveredSchemaResponse> {
        return client.send(operation: "GetDiscoveredSchema", path: "/v1/discover", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  List the discoverers.
    public func listDiscoverers(_ input: ListDiscoverersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDiscoverersResponse> {
        return client.send(operation: "ListDiscoverers", path: "/v1/discoverers", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  List the registries.
    public func listRegistries(_ input: ListRegistriesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRegistriesResponse> {
        return client.send(operation: "ListRegistries", path: "/v1/registries", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Provides a list of the schema versions and related information.
    public func listSchemaVersions(_ input: ListSchemaVersionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSchemaVersionsResponse> {
        return client.send(operation: "ListSchemaVersions", path: "/v1/registries/name/{registryName}/schemas/name/{schemaName}/versions", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  List the schemas.
    public func listSchemas(_ input: ListSchemasRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSchemasResponse> {
        return client.send(operation: "ListSchemas", path: "/v1/registries/name/{registryName}/schemas", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Get tags for resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/tags/{resource-arn}", httpMethod: "GET", input: input, on: eventLoop)
    }

    public func lockServiceLinkedRole(_ input: LockServiceLinkedRoleRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<LockServiceLinkedRoleResponse> {
        return client.send(operation: "LockServiceLinkedRole", path: "/slr-deletion/lock", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Put code binding URI
    public func putCodeBinding(_ input: PutCodeBindingRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutCodeBindingResponse> {
        return client.send(operation: "PutCodeBinding", path: "/v1/registries/name/{registryName}/schemas/name/{schemaName}/language/{language}", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Search the schemas
    public func searchSchemas(_ input: SearchSchemasRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchSchemasResponse> {
        return client.send(operation: "SearchSchemas", path: "/v1/registries/name/{registryName}/schemas/search", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Starts the discoverer
    public func startDiscoverer(_ input: StartDiscovererRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartDiscovererResponse> {
        return client.send(operation: "StartDiscoverer", path: "/v1/discoverers/id/{discovererId}/start", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Stops the discoverer
    public func stopDiscoverer(_ input: StopDiscovererRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopDiscovererResponse> {
        return client.send(operation: "StopDiscoverer", path: "/v1/discoverers/id/{discovererId}/stop", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Add tags to a resource.
    @discardableResult public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "TagResource", path: "/tags/{resource-arn}", httpMethod: "POST", input: input, on: eventLoop)
    }

    public func unlockServiceLinkedRole(_ input: UnlockServiceLinkedRoleRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnlockServiceLinkedRoleResponse> {
        return client.send(operation: "UnlockServiceLinkedRole", path: "/slr-deletion/unlock", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes tags from a resource.
    @discardableResult public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "UntagResource", path: "/tags/{resource-arn}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Updates the discoverer
    public func updateDiscoverer(_ input: UpdateDiscovererRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDiscovererResponse> {
        return client.send(operation: "UpdateDiscoverer", path: "/v1/discoverers/id/{discovererId}", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Updates a registry.
    public func updateRegistry(_ input: UpdateRegistryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRegistryResponse> {
        return client.send(operation: "UpdateRegistry", path: "/v1/registries/name/{registryName}", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Updates the schema definition
    public func updateSchema(_ input: UpdateSchemaRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateSchemaResponse> {
        return client.send(operation: "UpdateSchema", path: "/v1/registries/name/{registryName}/schemas/name/{schemaName}", httpMethod: "PUT", input: input, on: eventLoop)
    }
}
