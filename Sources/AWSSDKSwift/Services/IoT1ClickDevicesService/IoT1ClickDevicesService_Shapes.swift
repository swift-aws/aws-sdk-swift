// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension IoT1ClickDevicesService {
    //MARK: Enums

    //MARK: Shapes

    public struct Attributes: AWSShape {


        public init() {
        }

    }

    public struct ClaimDevicesByClaimCodeRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ClaimCode", location: .uri(locationName: "claimCode"))
        ]

        public let claimCode: String

        public init(claimCode: String) {
            self.claimCode = claimCode
        }

        private enum CodingKeys: String, CodingKey {
            case claimCode = "claimCode"
        }
    }

    public struct ClaimDevicesByClaimCodeResponse: AWSShape {

        /// The claim code provided by the device manufacturer.
        public let claimCode: String?
        /// The total number of devices associated with the claim code that has been processed in
        ///  the claim request.
        public let total: Int?

        public init(claimCode: String? = nil, total: Int? = nil) {
            self.claimCode = claimCode
            self.total = total
        }

        private enum CodingKeys: String, CodingKey {
            case claimCode = "claimCode"
            case total = "total"
        }
    }

    public struct DescribeDeviceRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DeviceId", location: .uri(locationName: "deviceId"))
        ]

        public let deviceId: String

        public init(deviceId: String) {
            self.deviceId = deviceId
        }

        private enum CodingKeys: String, CodingKey {
            case deviceId = "deviceId"
        }
    }

    public struct DescribeDeviceResponse: AWSShape {

        /// Device details.
        public let deviceDescription: DeviceDescription?

        public init(deviceDescription: DeviceDescription? = nil) {
            self.deviceDescription = deviceDescription
        }

        private enum CodingKeys: String, CodingKey {
            case deviceDescription = "deviceDescription"
        }
    }

    public struct Device: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Type", location: .body(locationName: "type"))
        ]

        /// The user specified attributes associated with the device for an event.
        public let attributes: Attributes?
        /// The unique identifier of the device.
        public let deviceId: String?
        /// The device type, such as "button".
        public let `type`: String?

        public init(attributes: Attributes? = nil, deviceId: String? = nil, type: String? = nil) {
            self.attributes = attributes
            self.deviceId = deviceId
            self.`type` = `type`
        }

        private enum CodingKeys: String, CodingKey {
            case attributes = "attributes"
            case deviceId = "deviceId"
            case `type` = "type"
        }
    }

    public struct DeviceDescription: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Type", location: .body(locationName: "type"))
        ]

        /// The ARN of the device.
        public let arn: String?
        /// An array of zero or more elements of DeviceAttribute objects providing
        ///  user specified device attributes.
        public let attributes: [String: String]?
        /// The unique identifier of the device.
        public let deviceId: String?
        /// A Boolean value indicating whether or not the device is enabled.
        public let enabled: Bool?
        /// A value between 0 and 1 inclusive, representing the fraction of life remaining for the
        ///  device.
        public let remainingLife: Double?
        public let tags: [String: String]?
        /// The type of the device, such as "button".
        public let `type`: String?

        public init(arn: String? = nil, attributes: [String: String]? = nil, deviceId: String? = nil, enabled: Bool? = nil, remainingLife: Double? = nil, tags: [String: String]? = nil, type: String? = nil) {
            self.arn = arn
            self.attributes = attributes
            self.deviceId = deviceId
            self.enabled = enabled
            self.remainingLife = remainingLife
            self.tags = tags
            self.`type` = `type`
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "arn"
            case attributes = "attributes"
            case deviceId = "deviceId"
            case enabled = "enabled"
            case remainingLife = "remainingLife"
            case tags = "tags"
            case `type` = "type"
        }
    }

    public struct DeviceEvent: AWSShape {

        /// An object representing the device associated with the event.
        public let device: Device?
        /// A serialized JSON object representing the device-type specific event.
        public let stdEvent: String?

        public init(device: Device? = nil, stdEvent: String? = nil) {
            self.device = device
            self.stdEvent = stdEvent
        }

        private enum CodingKeys: String, CodingKey {
            case device = "device"
            case stdEvent = "stdEvent"
        }
    }

    public struct DeviceMethod: AWSShape {

        /// The type of the device, such as "button".
        public let deviceType: String?
        /// The name of the method applicable to the deviceType.
        public let methodName: String?

        public init(deviceType: String? = nil, methodName: String? = nil) {
            self.deviceType = deviceType
            self.methodName = methodName
        }

        private enum CodingKeys: String, CodingKey {
            case deviceType = "deviceType"
            case methodName = "methodName"
        }
    }

    public struct FinalizeDeviceClaimRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DeviceId", location: .uri(locationName: "deviceId"))
        ]

        public let deviceId: String
        public let tags: [String: String]?

        public init(deviceId: String, tags: [String: String]? = nil) {
            self.deviceId = deviceId
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case deviceId = "deviceId"
            case tags = "tags"
        }
    }

    public struct FinalizeDeviceClaimResponse: AWSShape {

        public let state: String?

        public init(state: String? = nil) {
            self.state = state
        }

        private enum CodingKeys: String, CodingKey {
            case state = "state"
        }
    }

    public struct GetDeviceMethodsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DeviceId", location: .uri(locationName: "deviceId"))
        ]

        public let deviceId: String

        public init(deviceId: String) {
            self.deviceId = deviceId
        }

        private enum CodingKeys: String, CodingKey {
            case deviceId = "deviceId"
        }
    }

    public struct GetDeviceMethodsResponse: AWSShape {

        /// List of available device APIs.
        public let deviceMethods: [DeviceMethod]?

        public init(deviceMethods: [DeviceMethod]? = nil) {
            self.deviceMethods = deviceMethods
        }

        private enum CodingKeys: String, CodingKey {
            case deviceMethods = "deviceMethods"
        }
    }

    public struct InitiateDeviceClaimRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DeviceId", location: .uri(locationName: "deviceId"))
        ]

        public let deviceId: String

        public init(deviceId: String) {
            self.deviceId = deviceId
        }

        private enum CodingKeys: String, CodingKey {
            case deviceId = "deviceId"
        }
    }

    public struct InitiateDeviceClaimResponse: AWSShape {

        public let state: String?

        public init(state: String? = nil) {
            self.state = state
        }

        private enum CodingKeys: String, CodingKey {
            case state = "state"
        }
    }

    public struct InvokeDeviceMethodRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DeviceId", location: .uri(locationName: "deviceId"))
        ]

        public let deviceId: String
        /// The device method to invoke.
        public let deviceMethod: DeviceMethod?
        /// A JSON encoded string containing the device method request parameters.
        public let deviceMethodParameters: String?

        public init(deviceId: String, deviceMethod: DeviceMethod? = nil, deviceMethodParameters: String? = nil) {
            self.deviceId = deviceId
            self.deviceMethod = deviceMethod
            self.deviceMethodParameters = deviceMethodParameters
        }

        private enum CodingKeys: String, CodingKey {
            case deviceId = "deviceId"
            case deviceMethod = "deviceMethod"
            case deviceMethodParameters = "deviceMethodParameters"
        }
    }

    public struct InvokeDeviceMethodResponse: AWSShape {

        /// A JSON encoded string containing the device method response.
        public let deviceMethodResponse: String?

        public init(deviceMethodResponse: String? = nil) {
            self.deviceMethodResponse = deviceMethodResponse
        }

        private enum CodingKeys: String, CodingKey {
            case deviceMethodResponse = "deviceMethodResponse"
        }
    }

    public struct ListDeviceEventsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DeviceId", location: .uri(locationName: "deviceId")), 
            AWSShapeMember(label: "FromTimeStamp", location: .querystring(locationName: "fromTimeStamp")), 
            AWSShapeMember(label: "MaxResults", location: .querystring(locationName: "maxResults")), 
            AWSShapeMember(label: "NextToken", location: .querystring(locationName: "nextToken")), 
            AWSShapeMember(label: "ToTimeStamp", location: .querystring(locationName: "toTimeStamp"))
        ]

        public let deviceId: String
        public let fromTimeStamp: TimeStamp
        public let maxResults: Int?
        public let nextToken: String?
        public let toTimeStamp: TimeStamp

        public init(deviceId: String, fromTimeStamp: TimeStamp, maxResults: Int? = nil, nextToken: String? = nil, toTimeStamp: TimeStamp) {
            self.deviceId = deviceId
            self.fromTimeStamp = fromTimeStamp
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.toTimeStamp = toTimeStamp
        }

        public func validate(name: String) throws {
            try validate(self.maxResults, name:"maxResults", parent: name, max: 250)
            try validate(self.maxResults, name:"maxResults", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case deviceId = "deviceId"
            case fromTimeStamp = "fromTimeStamp"
            case maxResults = "maxResults"
            case nextToken = "nextToken"
            case toTimeStamp = "toTimeStamp"
        }
    }

    public struct ListDeviceEventsResponse: AWSShape {

        public let events: [DeviceEvent]?
        public let nextToken: String?

        public init(events: [DeviceEvent]? = nil, nextToken: String? = nil) {
            self.events = events
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case events = "events"
            case nextToken = "nextToken"
        }
    }

    public struct ListDevicesRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DeviceType", location: .querystring(locationName: "deviceType")), 
            AWSShapeMember(label: "MaxResults", location: .querystring(locationName: "maxResults")), 
            AWSShapeMember(label: "NextToken", location: .querystring(locationName: "nextToken"))
        ]

        public let deviceType: String?
        public let maxResults: Int?
        public let nextToken: String?

        public init(deviceType: String? = nil, maxResults: Int? = nil, nextToken: String? = nil) {
            self.deviceType = deviceType
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try validate(self.maxResults, name:"maxResults", parent: name, max: 250)
            try validate(self.maxResults, name:"maxResults", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case deviceType = "deviceType"
            case maxResults = "maxResults"
            case nextToken = "nextToken"
        }
    }

    public struct ListDevicesResponse: AWSShape {

        /// A list of devices.
        public let devices: [DeviceDescription]?
        /// The token to retrieve the next set of results.
        public let nextToken: String?

        public init(devices: [DeviceDescription]? = nil, nextToken: String? = nil) {
            self.devices = devices
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case devices = "devices"
            case nextToken = "nextToken"
        }
    }

    public struct ListTagsForResourceRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ResourceArn", location: .uri(locationName: "resource-arn"))
        ]

        public let resourceArn: String

        public init(resourceArn: String) {
            self.resourceArn = resourceArn
        }

        private enum CodingKeys: String, CodingKey {
            case resourceArn = "resource-arn"
        }
    }

    public struct ListTagsForResourceResponse: AWSShape {

        public let tags: [String: String]?

        public init(tags: [String: String]? = nil) {
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case tags = "tags"
        }
    }

    public struct TagResourceRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ResourceArn", location: .uri(locationName: "resource-arn"))
        ]

        public let resourceArn: String
        public let tags: [String: String]

        public init(resourceArn: String, tags: [String: String]) {
            self.resourceArn = resourceArn
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case resourceArn = "resource-arn"
            case tags = "tags"
        }
    }

    public struct UnclaimDeviceRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DeviceId", location: .uri(locationName: "deviceId"))
        ]

        public let deviceId: String

        public init(deviceId: String) {
            self.deviceId = deviceId
        }

        private enum CodingKeys: String, CodingKey {
            case deviceId = "deviceId"
        }
    }

    public struct UnclaimDeviceResponse: AWSShape {

        public let state: String?

        public init(state: String? = nil) {
            self.state = state
        }

        private enum CodingKeys: String, CodingKey {
            case state = "state"
        }
    }

    public struct UntagResourceRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ResourceArn", location: .uri(locationName: "resource-arn")), 
            AWSShapeMember(label: "TagKeys", location: .querystring(locationName: "tagKeys"))
        ]

        public let resourceArn: String
        public let tagKeys: [String]

        public init(resourceArn: String, tagKeys: [String]) {
            self.resourceArn = resourceArn
            self.tagKeys = tagKeys
        }

        private enum CodingKeys: String, CodingKey {
            case resourceArn = "resource-arn"
            case tagKeys = "tagKeys"
        }
    }

    public struct UpdateDeviceStateRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DeviceId", location: .uri(locationName: "deviceId"))
        ]

        public let deviceId: String
        /// If true, the device is enabled. If false, the device is
        ///  disabled.
        public let enabled: Bool?

        public init(deviceId: String, enabled: Bool? = nil) {
            self.deviceId = deviceId
            self.enabled = enabled
        }

        private enum CodingKeys: String, CodingKey {
            case deviceId = "deviceId"
            case enabled = "enabled"
        }
    }

    public struct UpdateDeviceStateResponse: AWSShape {


        public init() {
        }

    }
}
