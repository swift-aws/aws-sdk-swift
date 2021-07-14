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

extension SagemakerEdgeManager {
    // MARK: Enums

    // MARK: Shapes

    public struct EdgeMetric: AWSEncodableShape {

        /// The dimension of metrics published.
        public let dimension: String?
        /// Returns the name of the metric.
        public let metricName: String?
        /// Timestamp of when the metric was requested.
        public let timestamp: Date?
        /// Returns the value of the metric.
        public let value: Double?

        public init(dimension: String? = nil, metricName: String? = nil, timestamp: Date? = nil, value: Double? = nil) {
            self.dimension = dimension
            self.metricName = metricName
            self.timestamp = timestamp
            self.value = value
        }

        public func validate(name: String) throws {
            try self.validate(self.dimension, name: "dimension", parent: name, max: 1000)
            try self.validate(self.dimension, name: "dimension", parent: name, min: 1)
            try self.validate(self.dimension, name: "dimension", parent: name, pattern: "^[a-zA-Z0-9](-*[a-zA-Z0-9\\/])*$")
            try self.validate(self.metricName, name: "metricName", parent: name, max: 100)
            try self.validate(self.metricName, name: "metricName", parent: name, min: 4)
            try self.validate(self.metricName, name: "metricName", parent: name, pattern: "^[a-zA-Z0-9](-*[a-zA-Z0-9])*$")
        }

        private enum CodingKeys: String, CodingKey {
            case dimension = "Dimension"
            case metricName = "MetricName"
            case timestamp = "Timestamp"
            case value = "Value"
        }
    }

    public struct GetDeviceRegistrationRequest: AWSEncodableShape {

        /// The name of the fleet that the device belongs to.
        public let deviceFleetName: String
        /// The unique name of the device you want to get the registration status from.
        public let deviceName: String

        public init(deviceFleetName: String, deviceName: String) {
            self.deviceFleetName = deviceFleetName
            self.deviceName = deviceName
        }

        public func validate(name: String) throws {
            try self.validate(self.deviceFleetName, name: "deviceFleetName", parent: name, max: 63)
            try self.validate(self.deviceFleetName, name: "deviceFleetName", parent: name, min: 1)
            try self.validate(self.deviceFleetName, name: "deviceFleetName", parent: name, pattern: "^[a-zA-Z0-9](-*_*[a-zA-Z0-9])*$")
            try self.validate(self.deviceName, name: "deviceName", parent: name, max: 63)
            try self.validate(self.deviceName, name: "deviceName", parent: name, min: 1)
            try self.validate(self.deviceName, name: "deviceName", parent: name, pattern: "^[a-zA-Z0-9](-*_*[a-zA-Z0-9])*$")
        }

        private enum CodingKeys: String, CodingKey {
            case deviceFleetName = "DeviceFleetName"
            case deviceName = "DeviceName"
        }
    }

    public struct GetDeviceRegistrationResult: AWSDecodableShape {

        /// The amount of time, in seconds, that the registration status is stored on the device’s cache before it is refreshed.
        public let cacheTTL: String?
        /// Describes if the device is currently registered with SageMaker Edge Manager.
        public let deviceRegistration: String?

        public init(cacheTTL: String? = nil, deviceRegistration: String? = nil) {
            self.cacheTTL = cacheTTL
            self.deviceRegistration = deviceRegistration
        }

        private enum CodingKeys: String, CodingKey {
            case cacheTTL = "CacheTTL"
            case deviceRegistration = "DeviceRegistration"
        }
    }

    public struct Model: AWSEncodableShape {

        /// The timestamp of the last inference that was made.
        public let latestInference: Date?
        /// The timestamp of the last data sample taken.
        public let latestSampleTime: Date?
        /// Information required for model metrics.
        public let modelMetrics: [EdgeMetric]?
        /// The name of the model.
        public let modelName: String?
        /// The version of the model.
        public let modelVersion: String?

        public init(latestInference: Date? = nil, latestSampleTime: Date? = nil, modelMetrics: [EdgeMetric]? = nil, modelName: String? = nil, modelVersion: String? = nil) {
            self.latestInference = latestInference
            self.latestSampleTime = latestSampleTime
            self.modelMetrics = modelMetrics
            self.modelName = modelName
            self.modelVersion = modelVersion
        }

        public func validate(name: String) throws {
            try self.modelMetrics?.forEach {
                try $0.validate(name: "\(name).modelMetrics[]")
            }
            try self.validate(self.modelName, name: "modelName", parent: name, max: 255)
            try self.validate(self.modelName, name: "modelName", parent: name, min: 4)
            try self.validate(self.modelName, name: "modelName", parent: name, pattern: "^[a-zA-Z0-9](-*[a-zA-Z0-9])*$")
            try self.validate(self.modelVersion, name: "modelVersion", parent: name, max: 64)
            try self.validate(self.modelVersion, name: "modelVersion", parent: name, min: 1)
            try self.validate(self.modelVersion, name: "modelVersion", parent: name, pattern: "[a-zA-Z0-9\\ \\_\\.]+")
        }

        private enum CodingKeys: String, CodingKey {
            case latestInference = "LatestInference"
            case latestSampleTime = "LatestSampleTime"
            case modelMetrics = "ModelMetrics"
            case modelName = "ModelName"
            case modelVersion = "ModelVersion"
        }
    }

    public struct SendHeartbeatRequest: AWSEncodableShape {

        /// For internal use. Returns a list of SageMaker Edge Manager agent operating metrics.
        public let agentMetrics: [EdgeMetric]?
        /// Returns the version of the agent.
        public let agentVersion: String
        /// The name of the fleet that the device belongs to.
        public let deviceFleetName: String
        /// The unique name of the device.
        public let deviceName: String
        /// Returns a list of models deployed on the the device.
        public let models: [Model]?

        public init(agentMetrics: [EdgeMetric]? = nil, agentVersion: String, deviceFleetName: String, deviceName: String, models: [Model]? = nil) {
            self.agentMetrics = agentMetrics
            self.agentVersion = agentVersion
            self.deviceFleetName = deviceFleetName
            self.deviceName = deviceName
            self.models = models
        }

        public func validate(name: String) throws {
            try self.agentMetrics?.forEach {
                try $0.validate(name: "\(name).agentMetrics[]")
            }
            try self.validate(self.agentVersion, name: "agentVersion", parent: name, max: 64)
            try self.validate(self.agentVersion, name: "agentVersion", parent: name, min: 1)
            try self.validate(self.agentVersion, name: "agentVersion", parent: name, pattern: "[a-zA-Z0-9\\ \\_\\.]+")
            try self.validate(self.deviceFleetName, name: "deviceFleetName", parent: name, max: 63)
            try self.validate(self.deviceFleetName, name: "deviceFleetName", parent: name, min: 1)
            try self.validate(self.deviceFleetName, name: "deviceFleetName", parent: name, pattern: "^[a-zA-Z0-9](-*_*[a-zA-Z0-9])*$")
            try self.validate(self.deviceName, name: "deviceName", parent: name, max: 63)
            try self.validate(self.deviceName, name: "deviceName", parent: name, min: 1)
            try self.validate(self.deviceName, name: "deviceName", parent: name, pattern: "^[a-zA-Z0-9](-*_*[a-zA-Z0-9])*$")
            try self.models?.forEach {
                try $0.validate(name: "\(name).models[]")
            }
        }

        private enum CodingKeys: String, CodingKey {
            case agentMetrics = "AgentMetrics"
            case agentVersion = "AgentVersion"
            case deviceFleetName = "DeviceFleetName"
            case deviceName = "DeviceName"
            case models = "Models"
        }
    }
}
