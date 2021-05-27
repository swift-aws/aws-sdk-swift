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

extension CloudFormation {
    public func waitUntilChangeSetCreateComplete(
        _ input: DescribeChangeSetInput,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSPathMatcher(path: \DescribeChangeSetOutput.status, expected: .createComplete)),
                .init(state: .failure, matcher: AWSPathMatcher(path: \DescribeChangeSetOutput.status, expected: .failed)),
                .init(state: .failure, matcher: AWSErrorCodeMatcher("ValidationError")),
            ],
            minDelayTime: .seconds(30),
            command: describeChangeSet
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilStackCreateComplete(
        _ input: DescribeStacksInput,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \DescribeStacksOutput.stacks, elementPath: \Stack.stackStatus, expected: .createComplete)),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeStacksOutput.stacks, elementPath: \Stack.stackStatus, expected: .createFailed)),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeStacksOutput.stacks, elementPath: \Stack.stackStatus, expected: .deleteComplete)),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeStacksOutput.stacks, elementPath: \Stack.stackStatus, expected: .deleteFailed)),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeStacksOutput.stacks, elementPath: \Stack.stackStatus, expected: .rollbackFailed)),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeStacksOutput.stacks, elementPath: \Stack.stackStatus, expected: .rollbackComplete)),
                .init(state: .failure, matcher: AWSErrorCodeMatcher("ValidationError")),
            ],
            minDelayTime: .seconds(30),
            command: describeStacks
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilStackDeleteComplete(
        _ input: DescribeStacksInput,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \DescribeStacksOutput.stacks, elementPath: \Stack.stackStatus, expected: .deleteComplete)),
                .init(state: .success, matcher: AWSErrorCodeMatcher("ValidationError")),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeStacksOutput.stacks, elementPath: \Stack.stackStatus, expected: .deleteFailed)),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeStacksOutput.stacks, elementPath: \Stack.stackStatus, expected: .createFailed)),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeStacksOutput.stacks, elementPath: \Stack.stackStatus, expected: .rollbackFailed)),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeStacksOutput.stacks, elementPath: \Stack.stackStatus, expected: .updateRollbackInProgress)),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeStacksOutput.stacks, elementPath: \Stack.stackStatus, expected: .updateRollbackFailed)),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeStacksOutput.stacks, elementPath: \Stack.stackStatus, expected: .updateRollbackComplete)),
            ],
            minDelayTime: .seconds(30),
            command: describeStacks
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilStackExists(
        _ input: DescribeStacksInput,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSSuccessMatcher()),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("ValidationError")),
            ],
            minDelayTime: .seconds(5),
            command: describeStacks
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilStackImportComplete(
        _ input: DescribeStacksInput,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \DescribeStacksOutput.stacks, elementPath: \Stack.stackStatus, expected: .importComplete)),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeStacksOutput.stacks, elementPath: \Stack.stackStatus, expected: .rollbackComplete)),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeStacksOutput.stacks, elementPath: \Stack.stackStatus, expected: .rollbackFailed)),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeStacksOutput.stacks, elementPath: \Stack.stackStatus, expected: .importRollbackInProgress)),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeStacksOutput.stacks, elementPath: \Stack.stackStatus, expected: .importRollbackFailed)),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeStacksOutput.stacks, elementPath: \Stack.stackStatus, expected: .importRollbackComplete)),
                .init(state: .failure, matcher: AWSErrorCodeMatcher("ValidationError")),
            ],
            minDelayTime: .seconds(30),
            command: describeStacks
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilStackRollbackComplete(
        _ input: DescribeStacksInput,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \DescribeStacksOutput.stacks, elementPath: \Stack.stackStatus, expected: .updateRollbackComplete)),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeStacksOutput.stacks, elementPath: \Stack.stackStatus, expected: .updateFailed)),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeStacksOutput.stacks, elementPath: \Stack.stackStatus, expected: .updateRollbackFailed)),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeStacksOutput.stacks, elementPath: \Stack.stackStatus, expected: .deleteFailed)),
                .init(state: .failure, matcher: AWSErrorCodeMatcher("ValidationError")),
            ],
            minDelayTime: .seconds(30),
            command: describeStacks
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilStackUpdateComplete(
        _ input: DescribeStacksInput,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \DescribeStacksOutput.stacks, elementPath: \Stack.stackStatus, expected: .updateComplete)),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeStacksOutput.stacks, elementPath: \Stack.stackStatus, expected: .updateFailed)),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeStacksOutput.stacks, elementPath: \Stack.stackStatus, expected: .updateRollbackFailed)),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeStacksOutput.stacks, elementPath: \Stack.stackStatus, expected: .updateRollbackComplete)),
                .init(state: .failure, matcher: AWSErrorCodeMatcher("ValidationError")),
            ],
            minDelayTime: .seconds(30),
            command: describeStacks
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilTypeRegistrationComplete(
        _ input: DescribeTypeRegistrationInput,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSPathMatcher(path: \DescribeTypeRegistrationOutput.progressStatus, expected: .complete)),
                .init(state: .failure, matcher: AWSPathMatcher(path: \DescribeTypeRegistrationOutput.progressStatus, expected: .failed)),
            ],
            minDelayTime: .seconds(30),
            command: describeTypeRegistration
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
}
