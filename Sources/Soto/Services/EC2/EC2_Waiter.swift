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

import SotoCore

// MARK: Waiters

extension EC2 {
    public func waitUntilBundleTaskComplete(
        _ input: DescribeBundleTasksRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \DescribeBundleTasksResult.bundleTasks, elementPath: \BundleTask.state, expected: .complete)),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeBundleTasksResult.bundleTasks, elementPath: \BundleTask.state, expected: .failed)),
            ],
            minDelayTime: .seconds(15),
            command: describeBundleTasks
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilConversionTaskCancelled(
        _ input: DescribeConversionTasksRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \DescribeConversionTasksResult.conversionTasks, elementPath: \ConversionTask.state, expected: .cancelled)),
            ],
            minDelayTime: .seconds(15),
            command: describeConversionTasks
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilConversionTaskCompleted(
        _ input: DescribeConversionTasksRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \DescribeConversionTasksResult.conversionTasks, elementPath: \ConversionTask.state, expected: .completed)),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeConversionTasksResult.conversionTasks, elementPath: \ConversionTask.state, expected: .cancelled)),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeConversionTasksResult.conversionTasks, elementPath: \ConversionTask.state, expected: .cancelling)),
            ],
            minDelayTime: .seconds(15),
            command: describeConversionTasks
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilConversionTaskDeleted(
        _ input: DescribeConversionTasksRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \DescribeConversionTasksResult.conversionTasks, elementPath: \ConversionTask.state, expected: .deleted)),
            ],
            minDelayTime: .seconds(15),
            command: describeConversionTasks
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilCustomerGatewayAvailable(
        _ input: DescribeCustomerGatewaysRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \DescribeCustomerGatewaysResult.customerGateways, elementPath: \CustomerGateway.state, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeCustomerGatewaysResult.customerGateways, elementPath: \CustomerGateway.state, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeCustomerGatewaysResult.customerGateways, elementPath: \CustomerGateway.state, expected: "string")),
            ],
            minDelayTime: .seconds(15),
            command: describeCustomerGateways
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilExportTaskCancelled(
        _ input: DescribeExportTasksRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \DescribeExportTasksResult.exportTasks, elementPath: \ExportTask.state, expected: .cancelled)),
            ],
            minDelayTime: .seconds(15),
            command: describeExportTasks
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilExportTaskCompleted(
        _ input: DescribeExportTasksRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \DescribeExportTasksResult.exportTasks, elementPath: \ExportTask.state, expected: .completed)),
            ],
            minDelayTime: .seconds(15),
            command: describeExportTasks
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilImageAvailable(
        _ input: DescribeImagesRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \DescribeImagesResult.images, elementPath: \Image.state, expected: .available)),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeImagesResult.images, elementPath: \Image.state, expected: .failed)),
            ],
            minDelayTime: .seconds(15),
            command: describeImages
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilInstanceStatusOk(
        _ input: DescribeInstanceStatusRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \DescribeInstanceStatusResult.instanceStatuses, elementPath: \InstanceStatus.instanceStatus?.status, expected: .ok)),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("InvalidInstanceID.NotFound")),
            ],
            minDelayTime: .seconds(15),
            command: describeInstanceStatus
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilNatGatewayAvailable(
        _ input: DescribeNatGatewaysRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \DescribeNatGatewaysResult.natGateways, elementPath: \NatGateway.state, expected: .available)),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeNatGatewaysResult.natGateways, elementPath: \NatGateway.state, expected: .failed)),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeNatGatewaysResult.natGateways, elementPath: \NatGateway.state, expected: .deleting)),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeNatGatewaysResult.natGateways, elementPath: \NatGateway.state, expected: .deleted)),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("NatGatewayNotFound")),
            ],
            minDelayTime: .seconds(15),
            command: describeNatGateways
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilNetworkInterfaceAvailable(
        _ input: DescribeNetworkInterfacesRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \DescribeNetworkInterfacesResult.networkInterfaces, elementPath: \NetworkInterface.status, expected: .available)),
                .init(state: .failure, matcher: AWSErrorCodeMatcher("InvalidNetworkInterfaceID.NotFound")),
            ],
            minDelayTime: .seconds(20),
            command: describeNetworkInterfaces
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilSnapshotCompleted(
        _ input: DescribeSnapshotsRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \DescribeSnapshotsResult.snapshots, elementPath: \Snapshot.state, expected: .completed)),
            ],
            minDelayTime: .seconds(15),
            command: describeSnapshots
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilSpotInstanceRequestFulfilled(
        _ input: DescribeSpotInstanceRequestsRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \DescribeSpotInstanceRequestsResult.spotInstanceRequests, elementPath: \SpotInstanceRequest.status?.code, expected: "string")),
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \DescribeSpotInstanceRequestsResult.spotInstanceRequests, elementPath: \SpotInstanceRequest.status?.code, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeSpotInstanceRequestsResult.spotInstanceRequests, elementPath: \SpotInstanceRequest.status?.code, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeSpotInstanceRequestsResult.spotInstanceRequests, elementPath: \SpotInstanceRequest.status?.code, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeSpotInstanceRequestsResult.spotInstanceRequests, elementPath: \SpotInstanceRequest.status?.code, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeSpotInstanceRequestsResult.spotInstanceRequests, elementPath: \SpotInstanceRequest.status?.code, expected: "string")),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("InvalidSpotInstanceRequestID.NotFound")),
            ],
            minDelayTime: .seconds(15),
            command: describeSpotInstanceRequests
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilSubnetAvailable(
        _ input: DescribeSubnetsRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \DescribeSubnetsResult.subnets, elementPath: \Subnet.state, expected: .available)),
            ],
            minDelayTime: .seconds(15),
            command: describeSubnets
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilSystemStatusOk(
        _ input: DescribeInstanceStatusRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \DescribeInstanceStatusResult.instanceStatuses, elementPath: \InstanceStatus.systemStatus?.status, expected: .ok)),
            ],
            minDelayTime: .seconds(15),
            command: describeInstanceStatus
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilVolumeAvailable(
        _ input: DescribeVolumesRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \DescribeVolumesResult.volumes, elementPath: \Volume.state, expected: .available)),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeVolumesResult.volumes, elementPath: \Volume.state, expected: .deleted)),
            ],
            minDelayTime: .seconds(15),
            command: describeVolumes
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilVolumeDeleted(
        _ input: DescribeVolumesRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \DescribeVolumesResult.volumes, elementPath: \Volume.state, expected: .deleted)),
                .init(state: .success, matcher: AWSErrorCodeMatcher("InvalidVolume.NotFound")),
            ],
            minDelayTime: .seconds(15),
            command: describeVolumes
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilVolumeInUse(
        _ input: DescribeVolumesRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \DescribeVolumesResult.volumes, elementPath: \Volume.state, expected: .inUse)),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeVolumesResult.volumes, elementPath: \Volume.state, expected: .deleted)),
            ],
            minDelayTime: .seconds(15),
            command: describeVolumes
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilVpcAvailable(
        _ input: DescribeVpcsRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \DescribeVpcsResult.vpcs, elementPath: \Vpc.state, expected: .available)),
            ],
            minDelayTime: .seconds(15),
            command: describeVpcs
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilVpcExists(
        _ input: DescribeVpcsRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSSuccessMatcher()),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("InvalidVpcID.NotFound")),
            ],
            minDelayTime: .seconds(1),
            command: describeVpcs
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilVpcPeeringConnectionDeleted(
        _ input: DescribeVpcPeeringConnectionsRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \DescribeVpcPeeringConnectionsResult.vpcPeeringConnections, elementPath: \VpcPeeringConnection.status?.code, expected: .deleted)),
                .init(state: .success, matcher: AWSErrorCodeMatcher("InvalidVpcPeeringConnectionID.NotFound")),
            ],
            minDelayTime: .seconds(15),
            command: describeVpcPeeringConnections
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilVpcPeeringConnectionExists(
        _ input: DescribeVpcPeeringConnectionsRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSSuccessMatcher()),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("InvalidVpcPeeringConnectionID.NotFound")),
            ],
            minDelayTime: .seconds(15),
            command: describeVpcPeeringConnections
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilVpnConnectionAvailable(
        _ input: DescribeVpnConnectionsRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \DescribeVpnConnectionsResult.vpnConnections, elementPath: \VpnConnection.state, expected: .available)),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeVpnConnectionsResult.vpnConnections, elementPath: \VpnConnection.state, expected: .deleting)),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeVpnConnectionsResult.vpnConnections, elementPath: \VpnConnection.state, expected: .deleted)),
            ],
            minDelayTime: .seconds(15),
            command: describeVpnConnections
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilVpnConnectionDeleted(
        _ input: DescribeVpnConnectionsRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \DescribeVpnConnectionsResult.vpnConnections, elementPath: \VpnConnection.state, expected: .deleted)),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeVpnConnectionsResult.vpnConnections, elementPath: \VpnConnection.state, expected: .pending)),
            ],
            minDelayTime: .seconds(15),
            command: describeVpnConnections
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
}
