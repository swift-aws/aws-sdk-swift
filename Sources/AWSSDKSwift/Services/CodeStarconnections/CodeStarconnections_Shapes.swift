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

import AWSSDKSwiftCore
import Foundation

extension CodeStarconnections {
    //MARK: Enums

    public enum ConnectionStatus: String, CustomStringConvertible, Codable {
        case pending = "PENDING"
        case available = "AVAILABLE"
        case error = "ERROR"
        public var description: String { return self.rawValue }
    }

    public enum ProviderType: String, CustomStringConvertible, Codable {
        case bitbucket = "Bitbucket"
        public var description: String { return self.rawValue }
    }

    //MARK: Shapes

    public struct Connection: AWSDecodableShape {

        /// The Amazon Resource Name (ARN) of the connection. The ARN is used as the connection reference when the connection is shared between AWS services.  The ARN is never reused if the connection is deleted. 
        public let connectionArn: String?
        /// The name of the connection. Connection names must be unique in an AWS user account.
        public let connectionName: String?
        /// The current status of the connection. 
        public let connectionStatus: ConnectionStatus?
        /// The identifier of the external provider where your third-party code repository is configured. For Bitbucket, this is the account ID of the owner of the Bitbucket repository.
        public let ownerAccountId: String?
        /// The name of the external provider where your third-party code repository is configured. Currently, the valid provider type is Bitbucket.
        public let providerType: ProviderType?

        public init(connectionArn: String? = nil, connectionName: String? = nil, connectionStatus: ConnectionStatus? = nil, ownerAccountId: String? = nil, providerType: ProviderType? = nil) {
            self.connectionArn = connectionArn
            self.connectionName = connectionName
            self.connectionStatus = connectionStatus
            self.ownerAccountId = ownerAccountId
            self.providerType = providerType
        }

        private enum CodingKeys: String, CodingKey {
            case connectionArn = "ConnectionArn"
            case connectionName = "ConnectionName"
            case connectionStatus = "ConnectionStatus"
            case ownerAccountId = "OwnerAccountId"
            case providerType = "ProviderType"
        }
    }

    public struct CreateConnectionInput: AWSEncodableShape {

        /// The name of the connection to be created. The name must be unique in the calling AWS account.
        public let connectionName: String
        /// The name of the external provider where your third-party code repository is configured. Currently, the valid provider type is Bitbucket.
        public let providerType: ProviderType
        /// The key-value pair to use when tagging the resource.
        public let tags: [Tag]?

        public init(connectionName: String, providerType: ProviderType, tags: [Tag]? = nil) {
            self.connectionName = connectionName
            self.providerType = providerType
            self.tags = tags
        }

        public func validate(name: String) throws {
            try validate(self.connectionName, name: "connectionName", parent: name, max: 32)
            try validate(self.connectionName, name: "connectionName", parent: name, min: 1)
            try self.tags?.forEach {
                try $0.validate(name: "\(name).tags[]")
            }
            try validate(self.tags, name: "tags", parent: name, max: 200)
            try validate(self.tags, name: "tags", parent: name, min: 0)
        }

        private enum CodingKeys: String, CodingKey {
            case connectionName = "ConnectionName"
            case providerType = "ProviderType"
            case tags = "Tags"
        }
    }

    public struct CreateConnectionOutput: AWSDecodableShape {

        /// The Amazon Resource Name (ARN) of the connection to be created. The ARN is used as the connection reference when the connection is shared between AWS services.  The ARN is never reused if the connection is deleted. 
        public let connectionArn: String
        /// Specifies the tags applied to the resource.
        public let tags: [Tag]?

        public init(connectionArn: String, tags: [Tag]? = nil) {
            self.connectionArn = connectionArn
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case connectionArn = "ConnectionArn"
            case tags = "Tags"
        }
    }

    public struct DeleteConnectionInput: AWSEncodableShape {

        /// The Amazon Resource Name (ARN) of the connection to be deleted.  The ARN is never reused if the connection is deleted. 
        public let connectionArn: String

        public init(connectionArn: String) {
            self.connectionArn = connectionArn
        }

        public func validate(name: String) throws {
            try validate(self.connectionArn, name: "connectionArn", parent: name, max: 256)
            try validate(self.connectionArn, name: "connectionArn", parent: name, min: 0)
            try validate(self.connectionArn, name: "connectionArn", parent: name, pattern: "arn:aws(-[\\w]+)*:.+:.+:[0-9]{12}:.+")
        }

        private enum CodingKeys: String, CodingKey {
            case connectionArn = "ConnectionArn"
        }
    }

    public struct DeleteConnectionOutput: AWSDecodableShape {


        public init() {
        }

    }

    public struct GetConnectionInput: AWSEncodableShape {

        /// The Amazon Resource Name (ARN) of a connection.
        public let connectionArn: String

        public init(connectionArn: String) {
            self.connectionArn = connectionArn
        }

        public func validate(name: String) throws {
            try validate(self.connectionArn, name: "connectionArn", parent: name, max: 256)
            try validate(self.connectionArn, name: "connectionArn", parent: name, min: 0)
            try validate(self.connectionArn, name: "connectionArn", parent: name, pattern: "arn:aws(-[\\w]+)*:.+:.+:[0-9]{12}:.+")
        }

        private enum CodingKeys: String, CodingKey {
            case connectionArn = "ConnectionArn"
        }
    }

    public struct GetConnectionOutput: AWSDecodableShape {

        /// The connection details, such as status, owner, and provider type.
        public let connection: Connection?

        public init(connection: Connection? = nil) {
            self.connection = connection
        }

        private enum CodingKeys: String, CodingKey {
            case connection = "Connection"
        }
    }

    public struct ListConnectionsInput: AWSEncodableShape {

        /// The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned nextToken value.
        public let maxResults: Int?
        /// The token that was returned from the previous ListConnections call, which can be used to return the next set of connections in the list.
        public let nextToken: String?
        /// Filters the list of connections to those associated with a specified provider, such as Bitbucket.
        public let providerTypeFilter: ProviderType?

        public init(maxResults: Int? = nil, nextToken: String? = nil, providerTypeFilter: ProviderType? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.providerTypeFilter = providerTypeFilter
        }

        public func validate(name: String) throws {
            try validate(self.maxResults, name: "maxResults", parent: name, max: 5000)
            try validate(self.maxResults, name: "maxResults", parent: name, min: 0)
            try validate(self.nextToken, name: "nextToken", parent: name, max: 1024)
            try validate(self.nextToken, name: "nextToken", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
            case providerTypeFilter = "ProviderTypeFilter"
        }
    }

    public struct ListConnectionsOutput: AWSDecodableShape {

        /// A list of connections and the details for each connection, such as status, owner, and provider type.
        public let connections: [Connection]?
        /// A token that can be used in the next ListConnections call. To view all items in the list, continue to call this operation with each subsequent token until no more nextToken values are returned.
        public let nextToken: String?

        public init(connections: [Connection]? = nil, nextToken: String? = nil) {
            self.connections = connections
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case connections = "Connections"
            case nextToken = "NextToken"
        }
    }

    public struct ListTagsForResourceInput: AWSEncodableShape {

        /// The Amazon Resource Name (ARN) of the resource for which you want to get information about tags, if any.
        public let resourceArn: String

        public init(resourceArn: String) {
            self.resourceArn = resourceArn
        }

        public func validate(name: String) throws {
            try validate(self.resourceArn, name: "resourceArn", parent: name, max: 1011)
            try validate(self.resourceArn, name: "resourceArn", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case resourceArn = "ResourceArn"
        }
    }

    public struct ListTagsForResourceOutput: AWSDecodableShape {

        /// A list of tag key and value pairs associated with the specified resource.
        public let tags: [Tag]?

        public init(tags: [Tag]? = nil) {
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case tags = "Tags"
        }
    }

    public struct Tag: AWSEncodableShape & AWSDecodableShape {

        /// The tag's key.
        public let key: String
        /// The tag's value.
        public let value: String

        public init(key: String, value: String) {
            self.key = key
            self.value = value
        }

        public func validate(name: String) throws {
            try validate(self.key, name: "key", parent: name, max: 128)
            try validate(self.key, name: "key", parent: name, min: 1)
            try validate(self.value, name: "value", parent: name, max: 256)
            try validate(self.value, name: "value", parent: name, min: 0)
        }

        private enum CodingKeys: String, CodingKey {
            case key = "Key"
            case value = "Value"
        }
    }

    public struct TagResourceInput: AWSEncodableShape {

        /// The Amazon Resource Name (ARN) of the resource to which you want to add or update tags.
        public let resourceArn: String
        /// The tags you want to modify or add to the resource.
        public let tags: [Tag]

        public init(resourceArn: String, tags: [Tag]) {
            self.resourceArn = resourceArn
            self.tags = tags
        }

        public func validate(name: String) throws {
            try validate(self.resourceArn, name: "resourceArn", parent: name, max: 1011)
            try validate(self.resourceArn, name: "resourceArn", parent: name, min: 1)
            try self.tags.forEach {
                try $0.validate(name: "\(name).tags[]")
            }
            try validate(self.tags, name: "tags", parent: name, max: 200)
            try validate(self.tags, name: "tags", parent: name, min: 0)
        }

        private enum CodingKeys: String, CodingKey {
            case resourceArn = "ResourceArn"
            case tags = "Tags"
        }
    }

    public struct TagResourceOutput: AWSDecodableShape {


        public init() {
        }

    }

    public struct UntagResourceInput: AWSEncodableShape {

        /// The Amazon Resource Name (ARN) of the resource to remove tags from.
        public let resourceArn: String
        /// The list of keys for the tags to be removed from the resource.
        public let tagKeys: [String]

        public init(resourceArn: String, tagKeys: [String]) {
            self.resourceArn = resourceArn
            self.tagKeys = tagKeys
        }

        public func validate(name: String) throws {
            try validate(self.resourceArn, name: "resourceArn", parent: name, max: 1011)
            try validate(self.resourceArn, name: "resourceArn", parent: name, min: 1)
            try self.tagKeys.forEach {
                try validate($0, name: "tagKeys[]", parent: name, max: 128)
                try validate($0, name: "tagKeys[]", parent: name, min: 1)
            }
            try validate(self.tagKeys, name: "tagKeys", parent: name, max: 200)
            try validate(self.tagKeys, name: "tagKeys", parent: name, min: 0)
        }

        private enum CodingKeys: String, CodingKey {
            case resourceArn = "ResourceArn"
            case tagKeys = "TagKeys"
        }
    }

    public struct UntagResourceOutput: AWSDecodableShape {


        public init() {
        }

    }
}
