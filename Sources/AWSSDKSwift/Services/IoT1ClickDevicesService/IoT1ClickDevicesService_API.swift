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
import NIO

/**
Client object for interacting with AWS IoT1ClickDevicesService service.

Describes all of the AWS IoT 1-Click device-related API operations for the service.
 Also provides sample requests, responses, and errors for the supported web services
 protocols.
*/
public struct IoT1ClickDevicesService {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the IoT1ClickDevicesService client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    public init(
        client: AWSClient,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSSDKSwiftCore.Partition = .aws,
        endpoint: String? = nil
    ) {
        self.client = client
        self.serviceConfig = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "devices.iot1click",
            signingName: "iot1click",
            serviceProtocol: .restjson,
            apiVersion: "2018-05-14",
            endpoint: endpoint,
            possibleErrorTypes: [IoT1ClickDevicesServiceErrorType.self]
        )
    }
    
    public func syncShutdown() throws {
        try client.syncShutdown()
    }
    
    //MARK: API Calls

    ///  Adds device(s) to your account (i.e., claim one or more devices) if and only if you
    ///   received a claim code with the device(s).
    public func claimDevicesByClaimCode(_ input: ClaimDevicesByClaimCodeRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ClaimDevicesByClaimCodeResponse> {
        return client.execute(operation: "ClaimDevicesByClaimCode", path: "/claims/{claimCode}", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Given a device ID, returns a DescribeDeviceResponse object describing the
    ///   details of the device.
    public func describeDevice(_ input: DescribeDeviceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceResponse> {
        return client.execute(operation: "DescribeDevice", path: "/devices/{deviceId}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Given a device ID, finalizes the claim request for the associated device.
    ///   Claiming a device consists of initiating a claim, then publishing a device event,
    ///   and finalizing the claim. For a device of type button, a device event can
    ///   be published by simply clicking the device.
    ///   
    public func finalizeDeviceClaim(_ input: FinalizeDeviceClaimRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<FinalizeDeviceClaimResponse> {
        return client.execute(operation: "FinalizeDeviceClaim", path: "/devices/{deviceId}/finalize-claim", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Given a device ID, returns the invokable methods associated with the device.
    public func getDeviceMethods(_ input: GetDeviceMethodsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDeviceMethodsResponse> {
        return client.execute(operation: "GetDeviceMethods", path: "/devices/{deviceId}/methods", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Given a device ID, initiates a claim request for the associated device.
    ///   Claiming a device consists of initiating a claim, then publishing a device event,
    ///   and finalizing the claim. For a device of type button, a device event can
    ///   be published by simply clicking the device.
    ///   
    public func initiateDeviceClaim(_ input: InitiateDeviceClaimRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InitiateDeviceClaimResponse> {
        return client.execute(operation: "InitiateDeviceClaim", path: "/devices/{deviceId}/initiate-claim", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Given a device ID, issues a request to invoke a named device method (with possible
    ///   parameters). See the "Example POST" code snippet below.
    public func invokeDeviceMethod(_ input: InvokeDeviceMethodRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InvokeDeviceMethodResponse> {
        return client.execute(operation: "InvokeDeviceMethod", path: "/devices/{deviceId}/methods", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Using a device ID, returns a DeviceEventsResponse object containing an
    ///   array of events for the device.
    public func listDeviceEvents(_ input: ListDeviceEventsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDeviceEventsResponse> {
        return client.execute(operation: "ListDeviceEvents", path: "/devices/{deviceId}/events", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists the 1-Click compatible devices associated with your AWS account.
    public func listDevices(_ input: ListDevicesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDevicesResponse> {
        return client.execute(operation: "ListDevices", path: "/devices", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists the tags associated with the specified resource ARN.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.execute(operation: "ListTagsForResource", path: "/tags/{resource-arn}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Adds or updates the tags associated with the resource ARN. See AWS IoT 1-Click Service Limits for the maximum number of tags allowed per
    ///   resource.
    @discardableResult public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "TagResource", path: "/tags/{resource-arn}", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Disassociates a device from your AWS account using its device ID.
    public func unclaimDevice(_ input: UnclaimDeviceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnclaimDeviceResponse> {
        return client.execute(operation: "UnclaimDevice", path: "/devices/{deviceId}/unclaim", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Using tag keys, deletes the tags (key/value pairs) associated with the specified
    ///   resource ARN.
    @discardableResult public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "UntagResource", path: "/tags/{resource-arn}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Using a Boolean value (true or false), this operation
    ///   enables or disables the device given a device ID.
    public func updateDeviceState(_ input: UpdateDeviceStateRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDeviceStateResponse> {
        return client.execute(operation: "UpdateDeviceState", path: "/devices/{deviceId}/state", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }
}
