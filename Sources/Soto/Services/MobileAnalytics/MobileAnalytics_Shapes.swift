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

extension MobileAnalytics {
    // MARK: Enums

    // MARK: Shapes

    public struct Event: AWSEncodableShape {

        /// A collection of key-value pairs that give additional context to the event. The key-value pairs are specified by the developer. This collection can be empty or the attribute object can be omitted.
        public let attributes: [String: String]?
        /// A name signifying an event that occurred in your app. This is used for grouping and aggregating like events together for reporting purposes.
        public let eventType: String
        /// A collection of key-value pairs that gives additional, measurable context to the event. The key-value pairs are specified by the developer. This collection can be empty or the attribute object can be omitted.
        public let metrics: [String: Double]?
        /// The session the event occured within.
        public let session: Session?
        /// The time the event occurred in ISO 8601 standard date time format. For example, 2014-06-30T19:07:47.885Z
        public let timestamp: String
        /// The version of the event.
        public let version: String?

        public init(attributes: [String: String]? = nil, eventType: String, metrics: [String: Double]? = nil, session: Session? = nil, timestamp: String, version: String? = nil) {
            self.attributes = attributes
            self.eventType = eventType
            self.metrics = metrics
            self.session = session
            self.timestamp = timestamp
            self.version = version
        }

        public func validate(name: String) throws {
            try self.attributes?.forEach {
                try validate($0.key, name: "attributes.key", parent: name, max: 50)
                try validate($0.key, name: "attributes.key", parent: name, min: 1)
                try validate($0.value, name: "attributes[\"\($0.key)\"]", parent: name, max: 1000)
                try validate($0.value, name: "attributes[\"\($0.key)\"]", parent: name, min: 0)
            }
            try self.validate(self.eventType, name: "eventType", parent: name, max: 50)
            try self.validate(self.eventType, name: "eventType", parent: name, min: 1)
            try self.metrics?.forEach {
                try validate($0.key, name: "metrics.key", parent: name, max: 50)
                try validate($0.key, name: "metrics.key", parent: name, min: 1)
            }
            try self.session?.validate(name: "\(name).session")
            try self.validate(self.version, name: "version", parent: name, max: 10)
            try self.validate(self.version, name: "version", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case attributes = "attributes"
            case eventType = "eventType"
            case metrics = "metrics"
            case session = "session"
            case timestamp = "timestamp"
            case version = "version"
        }
    }

    public struct PutEventsInput: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "clientContext", location: .header(locationName: "x-amz-Client-Context")), 
            AWSMemberEncoding(label: "clientContextEncoding", location: .header(locationName: "x-amz-Client-Context-Encoding"))
        ]

        /// The client context including the client ID, app title, app version and package name.
        public let clientContext: String
        /// The encoding used for the client context.
        public let clientContextEncoding: String?
        /// An array of Event JSON objects
        public let events: [Event]

        public init(clientContext: String, clientContextEncoding: String? = nil, events: [Event]) {
            self.clientContext = clientContext
            self.clientContextEncoding = clientContextEncoding
            self.events = events
        }

        public func validate(name: String) throws {
            try self.events.forEach {
                try $0.validate(name: "\(name).events[]")
            }
        }

        private enum CodingKeys: String, CodingKey {
            case events = "events"
        }
    }

    public struct Session: AWSEncodableShape {

        /// The duration of the session.
        public let duration: Int64?
        /// A unique identifier for the session
        public let id: String?
        /// The time the event started in ISO 8601 standard date time format. For example, 2014-06-30T19:07:47.885Z
        public let startTimestamp: String?
        /// The time the event terminated in ISO 8601 standard date time format. For example, 2014-06-30T19:07:47.885Z
        public let stopTimestamp: String?

        public init(duration: Int64? = nil, id: String? = nil, startTimestamp: String? = nil, stopTimestamp: String? = nil) {
            self.duration = duration
            self.id = id
            self.startTimestamp = startTimestamp
            self.stopTimestamp = stopTimestamp
        }

        public func validate(name: String) throws {
            try self.validate(self.id, name: "id", parent: name, max: 50)
            try self.validate(self.id, name: "id", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case duration = "duration"
            case id = "id"
            case startTimestamp = "startTimestamp"
            case stopTimestamp = "stopTimestamp"
        }
    }
}
