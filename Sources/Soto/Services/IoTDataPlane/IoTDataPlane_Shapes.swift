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

import Foundation
import SotoCore

extension IoTDataPlane {
    // MARK: Enums

    // MARK: Shapes

    public struct DeleteThingShadowRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "shadowName", location: .querystring(locationName: "name")),
            AWSMemberEncoding(label: "thingName", location: .uri(locationName: "thingName"))
        ]

        /// The name of the shadow.
        public let shadowName: String?
        /// The name of the thing.
        public let thingName: String

        public init(shadowName: String? = nil, thingName: String) {
            self.shadowName = shadowName
            self.thingName = thingName
        }

        public func validate(name: String) throws {
            try self.validate(self.shadowName, name: "shadowName", parent: name, max: 64)
            try self.validate(self.shadowName, name: "shadowName", parent: name, min: 1)
            try self.validate(self.shadowName, name: "shadowName", parent: name, pattern: "[a-zA-Z0-9:_-]+")
            try self.validate(self.thingName, name: "thingName", parent: name, max: 128)
            try self.validate(self.thingName, name: "thingName", parent: name, min: 1)
            try self.validate(self.thingName, name: "thingName", parent: name, pattern: "[a-zA-Z0-9:_-]+")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DeleteThingShadowResponse: AWSDecodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let _payloadPath: String = "payload"
        public static let _payloadOptions: AWSShapePayloadOptions = [.raw]

        /// The state information, in JSON format.
        public let payload: AWSPayload

        public init(payload: AWSPayload) {
            self.payload = payload
        }

        private enum CodingKeys: String, CodingKey {
            case payload
        }
    }

    public struct GetThingShadowRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "shadowName", location: .querystring(locationName: "name")),
            AWSMemberEncoding(label: "thingName", location: .uri(locationName: "thingName"))
        ]

        /// The name of the shadow.
        public let shadowName: String?
        /// The name of the thing.
        public let thingName: String

        public init(shadowName: String? = nil, thingName: String) {
            self.shadowName = shadowName
            self.thingName = thingName
        }

        public func validate(name: String) throws {
            try self.validate(self.shadowName, name: "shadowName", parent: name, max: 64)
            try self.validate(self.shadowName, name: "shadowName", parent: name, min: 1)
            try self.validate(self.shadowName, name: "shadowName", parent: name, pattern: "[a-zA-Z0-9:_-]+")
            try self.validate(self.thingName, name: "thingName", parent: name, max: 128)
            try self.validate(self.thingName, name: "thingName", parent: name, min: 1)
            try self.validate(self.thingName, name: "thingName", parent: name, pattern: "[a-zA-Z0-9:_-]+")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetThingShadowResponse: AWSDecodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let _payloadPath: String = "payload"
        public static let _payloadOptions: AWSShapePayloadOptions = [.raw]

        /// The state information, in JSON format.
        public let payload: AWSPayload?

        public init(payload: AWSPayload? = nil) {
            self.payload = payload
        }

        private enum CodingKeys: String, CodingKey {
            case payload
        }
    }

    public struct ListNamedShadowsForThingRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "nextToken", location: .querystring(locationName: "nextToken")),
            AWSMemberEncoding(label: "pageSize", location: .querystring(locationName: "pageSize")),
            AWSMemberEncoding(label: "thingName", location: .uri(locationName: "thingName"))
        ]

        /// The token to retrieve the next set of results.
        public let nextToken: String?
        /// The result page size.
        public let pageSize: Int?
        /// The name of the thing.
        public let thingName: String

        public init(nextToken: String? = nil, pageSize: Int? = nil, thingName: String) {
            self.nextToken = nextToken
            self.pageSize = pageSize
            self.thingName = thingName
        }

        public func validate(name: String) throws {
            try self.validate(self.pageSize, name: "pageSize", parent: name, max: 100)
            try self.validate(self.pageSize, name: "pageSize", parent: name, min: 1)
            try self.validate(self.thingName, name: "thingName", parent: name, max: 128)
            try self.validate(self.thingName, name: "thingName", parent: name, min: 1)
            try self.validate(self.thingName, name: "thingName", parent: name, pattern: "[a-zA-Z0-9:_-]+")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListNamedShadowsForThingResponse: AWSDecodableShape {
        /// The token for the next set of results, or null if there are no additional results.
        public let nextToken: String?
        /// The list of shadows for the specified thing.
        public let results: [String]?
        /// The Epoch date and time the response was generated by AWS IoT.
        public let timestamp: Int64?

        public init(nextToken: String? = nil, results: [String]? = nil, timestamp: Int64? = nil) {
            self.nextToken = nextToken
            self.results = results
            self.timestamp = timestamp
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken
            case results
            case timestamp
        }
    }

    public struct PublishRequest: AWSEncodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let _payloadPath: String = "payload"
        public static let _payloadOptions: AWSShapePayloadOptions = [.raw]
        public static var _encoding = [
            AWSMemberEncoding(label: "qos", location: .querystring(locationName: "qos")),
            AWSMemberEncoding(label: "topic", location: .uri(locationName: "topic"))
        ]

        /// The state information, in JSON format.
        public let payload: AWSPayload?
        /// The Quality of Service (QoS) level.
        public let qos: Int?
        /// The name of the MQTT topic.
        public let topic: String

        public init(payload: AWSPayload? = nil, qos: Int? = nil, topic: String) {
            self.payload = payload
            self.qos = qos
            self.topic = topic
        }

        public func validate(name: String) throws {
            try self.validate(self.qos, name: "qos", parent: name, max: 1)
            try self.validate(self.qos, name: "qos", parent: name, min: 0)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct UpdateThingShadowRequest: AWSEncodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let _payloadPath: String = "payload"
        public static let _payloadOptions: AWSShapePayloadOptions = [.raw]
        public static var _encoding = [
            AWSMemberEncoding(label: "shadowName", location: .querystring(locationName: "name")),
            AWSMemberEncoding(label: "thingName", location: .uri(locationName: "thingName"))
        ]

        /// The state information, in JSON format.
        public let payload: AWSPayload
        /// The name of the shadow.
        public let shadowName: String?
        /// The name of the thing.
        public let thingName: String

        public init(payload: AWSPayload, shadowName: String? = nil, thingName: String) {
            self.payload = payload
            self.shadowName = shadowName
            self.thingName = thingName
        }

        public func validate(name: String) throws {
            try self.validate(self.shadowName, name: "shadowName", parent: name, max: 64)
            try self.validate(self.shadowName, name: "shadowName", parent: name, min: 1)
            try self.validate(self.shadowName, name: "shadowName", parent: name, pattern: "[a-zA-Z0-9:_-]+")
            try self.validate(self.thingName, name: "thingName", parent: name, max: 128)
            try self.validate(self.thingName, name: "thingName", parent: name, min: 1)
            try self.validate(self.thingName, name: "thingName", parent: name, pattern: "[a-zA-Z0-9:_-]+")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct UpdateThingShadowResponse: AWSDecodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let _payloadPath: String = "payload"
        public static let _payloadOptions: AWSShapePayloadOptions = [.raw]

        /// The state information, in JSON format.
        public let payload: AWSPayload?

        public init(payload: AWSPayload? = nil) {
            self.payload = payload
        }

        private enum CodingKeys: String, CodingKey {
            case payload
        }
    }
}
