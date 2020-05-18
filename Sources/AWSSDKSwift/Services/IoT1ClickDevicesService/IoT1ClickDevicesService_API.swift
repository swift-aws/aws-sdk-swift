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

    //MARK: Initialization

    /// Initialize the IoT1ClickDevicesService client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - retryController: Object returning whether retries should be attempted. Possible options are NoRetry(), ExponentialRetry() or JitterRetry()
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        accessKeyId: String? = nil,
        secretAccessKey: String? = nil,
        sessionToken: String? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSSDKSwiftCore.Partition = .aws,
        endpoint: String? = nil,
        retryController: RetryController = JitterRetry(),
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            partition: region?.partition ?? partition,
            service: "devices.iot1click",
            signingName: "iot1click",
            serviceProtocol: .restjson,
            apiVersion: "2018-05-14",
            endpoint: endpoint,
            retryController: retryController,
            middlewares: middlewares,
            possibleErrorTypes: [IoT1ClickDevicesServiceErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Adds device(s) to your account (i.e., claim one or more devices) if and only if you
    ///   received a claim code with the device(s).
    public func claimDevicesByClaimCode(_ input: ClaimDevicesByClaimCodeRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ClaimDevicesByClaimCodeResponse> {
        return client.send(operation: "ClaimDevicesByClaimCode", path: "/claims/{claimCode}", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Given a device ID, returns a DescribeDeviceResponse object describing the
    ///   details of the device.
    public func describeDevice(_ input: DescribeDeviceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceResponse> {
        return client.send(operation: "DescribeDevice", path: "/devices/{deviceId}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Given a device ID, finalizes the claim request for the associated device.
    ///   Claiming a device consists of initiating a claim, then publishing a device event,
    ///   and finalizing the claim. For a device of type button, a device event can
    ///   be published by simply clicking the device.
    ///   
    public func finalizeDeviceClaim(_ input: FinalizeDeviceClaimRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<FinalizeDeviceClaimResponse> {
        return client.send(operation: "FinalizeDeviceClaim", path: "/devices/{deviceId}/finalize-claim", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Given a device ID, returns the invokable methods associated with the device.
    public func getDeviceMethods(_ input: GetDeviceMethodsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDeviceMethodsResponse> {
        return client.send(operation: "GetDeviceMethods", path: "/devices/{deviceId}/methods", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Given a device ID, initiates a claim request for the associated device.
    ///   Claiming a device consists of initiating a claim, then publishing a device event,
    ///   and finalizing the claim. For a device of type button, a device event can
    ///   be published by simply clicking the device.
    ///   
    public func initiateDeviceClaim(_ input: InitiateDeviceClaimRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InitiateDeviceClaimResponse> {
        return client.send(operation: "InitiateDeviceClaim", path: "/devices/{deviceId}/initiate-claim", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Given a device ID, issues a request to invoke a named device method (with possible
    ///   parameters). See the "Example POST" code snippet below.
    public func invokeDeviceMethod(_ input: InvokeDeviceMethodRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InvokeDeviceMethodResponse> {
        return client.send(operation: "InvokeDeviceMethod", path: "/devices/{deviceId}/methods", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Using a device ID, returns a DeviceEventsResponse object containing an
    ///   array of events for the device.
    public func listDeviceEvents(_ input: ListDeviceEventsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDeviceEventsResponse> {
        return client.send(operation: "ListDeviceEvents", path: "/devices/{deviceId}/events", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Lists the 1-Click compatible devices associated with your AWS account.
    public func listDevices(_ input: ListDevicesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDevicesResponse> {
        return client.send(operation: "ListDevices", path: "/devices", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Lists the tags associated with the specified resource ARN.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/tags/{resource-arn}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Adds or updates the tags associated with the resource ARN. See AWS IoT 1-Click Service Limits for the maximum number of tags allowed per
    ///   resource.
    @discardableResult public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "TagResource", path: "/tags/{resource-arn}", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Disassociates a device from your AWS account using its device ID.
    public func unclaimDevice(_ input: UnclaimDeviceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnclaimDeviceResponse> {
        return client.send(operation: "UnclaimDevice", path: "/devices/{deviceId}/unclaim", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Using tag keys, deletes the tags (key/value pairs) associated with the specified
    ///   resource ARN.
    @discardableResult public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "UntagResource", path: "/tags/{resource-arn}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Using a Boolean value (true or false), this operation
    ///   enables or disables the device given a device ID.
    public func updateDeviceState(_ input: UpdateDeviceStateRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDeviceStateResponse> {
        return client.send(operation: "UpdateDeviceState", path: "/devices/{deviceId}/state", httpMethod: "PUT", input: input, on: eventLoop)
    }
}
