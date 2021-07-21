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

#if compiler(>=5.5)

import SotoCore

// MARK: Waiters

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension SageMaker {
    public func waitUntilEndpointDeleted(
        _ input: DescribeEndpointInput,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSErrorCodeMatcher("ValidationException")),
                .init(state: .failure, matcher: try! JMESPathMatcher("endpointStatus", expected: "Failed")),
            ],
            minDelayTime: .seconds(30),
            command: describeEndpoint
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilEndpointInService(
        _ input: DescribeEndpointInput,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("endpointStatus", expected: "InService")),
                .init(state: .failure, matcher: try! JMESPathMatcher("endpointStatus", expected: "Failed")),
                .init(state: .failure, matcher: AWSErrorCodeMatcher("ValidationException")),
            ],
            minDelayTime: .seconds(30),
            command: describeEndpoint
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilNotebookInstanceDeleted(
        _ input: DescribeNotebookInstanceInput,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSErrorCodeMatcher("ValidationException")),
                .init(state: .failure, matcher: try! JMESPathMatcher("notebookInstanceStatus", expected: "Failed")),
            ],
            minDelayTime: .seconds(30),
            command: describeNotebookInstance
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilNotebookInstanceInService(
        _ input: DescribeNotebookInstanceInput,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("notebookInstanceStatus", expected: "InService")),
                .init(state: .failure, matcher: try! JMESPathMatcher("notebookInstanceStatus", expected: "Failed")),
            ],
            minDelayTime: .seconds(30),
            command: describeNotebookInstance
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilNotebookInstanceStopped(
        _ input: DescribeNotebookInstanceInput,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("notebookInstanceStatus", expected: "Stopped")),
                .init(state: .failure, matcher: try! JMESPathMatcher("notebookInstanceStatus", expected: "Failed")),
            ],
            minDelayTime: .seconds(30),
            command: describeNotebookInstance
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilProcessingJobCompletedOrStopped(
        _ input: DescribeProcessingJobRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("processingJobStatus", expected: "Completed")),
                .init(state: .success, matcher: try! JMESPathMatcher("processingJobStatus", expected: "Stopped")),
                .init(state: .failure, matcher: try! JMESPathMatcher("processingJobStatus", expected: "Failed")),
                .init(state: .failure, matcher: AWSErrorCodeMatcher("ValidationException")),
            ],
            minDelayTime: .seconds(60),
            command: describeProcessingJob
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilTrainingJobCompletedOrStopped(
        _ input: DescribeTrainingJobRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("trainingJobStatus", expected: "Completed")),
                .init(state: .success, matcher: try! JMESPathMatcher("trainingJobStatus", expected: "Stopped")),
                .init(state: .failure, matcher: try! JMESPathMatcher("trainingJobStatus", expected: "Failed")),
                .init(state: .failure, matcher: AWSErrorCodeMatcher("ValidationException")),
            ],
            minDelayTime: .seconds(120),
            command: describeTrainingJob
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilTransformJobCompletedOrStopped(
        _ input: DescribeTransformJobRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("transformJobStatus", expected: "Completed")),
                .init(state: .success, matcher: try! JMESPathMatcher("transformJobStatus", expected: "Stopped")),
                .init(state: .failure, matcher: try! JMESPathMatcher("transformJobStatus", expected: "Failed")),
                .init(state: .failure, matcher: AWSErrorCodeMatcher("ValidationException")),
            ],
            minDelayTime: .seconds(60),
            command: describeTransformJob
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5)
