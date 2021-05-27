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

extension DatabaseMigrationService {
    public func waitUntilEndpointDeleted(
        _ input: DescribeEndpointsMessage,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSErrorCodeMatcher("ResourceNotFoundFault")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeEndpointsResponse.endpoints, elementPath: \Endpoint.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeEndpointsResponse.endpoints, elementPath: \Endpoint.status, expected: "string")),
            ],
            minDelayTime: .seconds(5),
            command: describeEndpoints
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilReplicationInstanceAvailable(
        _ input: DescribeReplicationInstancesMessage,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \DescribeReplicationInstancesResponse.replicationInstances, elementPath: \ReplicationInstance.replicationInstanceStatus, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeReplicationInstancesResponse.replicationInstances, elementPath: \ReplicationInstance.replicationInstanceStatus, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeReplicationInstancesResponse.replicationInstances, elementPath: \ReplicationInstance.replicationInstanceStatus, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeReplicationInstancesResponse.replicationInstances, elementPath: \ReplicationInstance.replicationInstanceStatus, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeReplicationInstancesResponse.replicationInstances, elementPath: \ReplicationInstance.replicationInstanceStatus, expected: "string")),
            ],
            minDelayTime: .seconds(60),
            command: describeReplicationInstances
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilReplicationInstanceDeleted(
        _ input: DescribeReplicationInstancesMessage,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeReplicationInstancesResponse.replicationInstances, elementPath: \ReplicationInstance.replicationInstanceStatus, expected: "string")),
                .init(state: .success, matcher: AWSErrorCodeMatcher("ResourceNotFoundFault")),
            ],
            minDelayTime: .seconds(15),
            command: describeReplicationInstances
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilReplicationTaskDeleted(
        _ input: DescribeReplicationTasksMessage,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeReplicationTasksResponse.replicationTasks, elementPath: \ReplicationTask.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeReplicationTasksResponse.replicationTasks, elementPath: \ReplicationTask.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeReplicationTasksResponse.replicationTasks, elementPath: \ReplicationTask.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeReplicationTasksResponse.replicationTasks, elementPath: \ReplicationTask.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeReplicationTasksResponse.replicationTasks, elementPath: \ReplicationTask.status, expected: "string")),
                .init(state: .success, matcher: AWSErrorCodeMatcher("ResourceNotFoundFault")),
            ],
            minDelayTime: .seconds(15),
            command: describeReplicationTasks
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilReplicationTaskReady(
        _ input: DescribeReplicationTasksMessage,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \DescribeReplicationTasksResponse.replicationTasks, elementPath: \ReplicationTask.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeReplicationTasksResponse.replicationTasks, elementPath: \ReplicationTask.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeReplicationTasksResponse.replicationTasks, elementPath: \ReplicationTask.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeReplicationTasksResponse.replicationTasks, elementPath: \ReplicationTask.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeReplicationTasksResponse.replicationTasks, elementPath: \ReplicationTask.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeReplicationTasksResponse.replicationTasks, elementPath: \ReplicationTask.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeReplicationTasksResponse.replicationTasks, elementPath: \ReplicationTask.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeReplicationTasksResponse.replicationTasks, elementPath: \ReplicationTask.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeReplicationTasksResponse.replicationTasks, elementPath: \ReplicationTask.status, expected: "string")),
            ],
            minDelayTime: .seconds(15),
            command: describeReplicationTasks
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilReplicationTaskRunning(
        _ input: DescribeReplicationTasksMessage,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \DescribeReplicationTasksResponse.replicationTasks, elementPath: \ReplicationTask.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeReplicationTasksResponse.replicationTasks, elementPath: \ReplicationTask.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeReplicationTasksResponse.replicationTasks, elementPath: \ReplicationTask.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeReplicationTasksResponse.replicationTasks, elementPath: \ReplicationTask.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeReplicationTasksResponse.replicationTasks, elementPath: \ReplicationTask.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeReplicationTasksResponse.replicationTasks, elementPath: \ReplicationTask.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeReplicationTasksResponse.replicationTasks, elementPath: \ReplicationTask.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeReplicationTasksResponse.replicationTasks, elementPath: \ReplicationTask.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeReplicationTasksResponse.replicationTasks, elementPath: \ReplicationTask.status, expected: "string")),
            ],
            minDelayTime: .seconds(15),
            command: describeReplicationTasks
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilReplicationTaskStopped(
        _ input: DescribeReplicationTasksMessage,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \DescribeReplicationTasksResponse.replicationTasks, elementPath: \ReplicationTask.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeReplicationTasksResponse.replicationTasks, elementPath: \ReplicationTask.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeReplicationTasksResponse.replicationTasks, elementPath: \ReplicationTask.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeReplicationTasksResponse.replicationTasks, elementPath: \ReplicationTask.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeReplicationTasksResponse.replicationTasks, elementPath: \ReplicationTask.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeReplicationTasksResponse.replicationTasks, elementPath: \ReplicationTask.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeReplicationTasksResponse.replicationTasks, elementPath: \ReplicationTask.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeReplicationTasksResponse.replicationTasks, elementPath: \ReplicationTask.status, expected: "string")),
            ],
            minDelayTime: .seconds(15),
            command: describeReplicationTasks
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilTestConnectionSucceeds(
        _ input: DescribeConnectionsMessage,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \DescribeConnectionsResponse.connections, elementPath: \Connection.status, expected: "string")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeConnectionsResponse.connections, elementPath: \Connection.status, expected: "string")),
            ],
            minDelayTime: .seconds(5),
            command: describeConnections
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
}
