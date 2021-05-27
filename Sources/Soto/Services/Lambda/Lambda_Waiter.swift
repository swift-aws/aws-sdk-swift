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

extension Lambda {
    public func waitUntilFunctionActive(
        _ input: GetFunctionConfigurationRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSPathMatcher(path: \FunctionConfiguration.state, expected: .active)),
                .init(state: .failure, matcher: AWSPathMatcher(path: \FunctionConfiguration.state, expected: .failed)),
                .init(state: .retry, matcher: AWSPathMatcher(path: \FunctionConfiguration.state, expected: .pending)),
            ],
            minDelayTime: .seconds(5),
            command: getFunctionConfiguration
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilFunctionExists(
        _ input: GetFunctionRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSSuccessMatcher()),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("ResourceNotFoundException")),
            ],
            minDelayTime: .seconds(1),
            command: getFunction
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilFunctionUpdated(
        _ input: GetFunctionConfigurationRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSPathMatcher(path: \FunctionConfiguration.lastUpdateStatus, expected: .successful)),
                .init(state: .failure, matcher: AWSPathMatcher(path: \FunctionConfiguration.lastUpdateStatus, expected: .failed)),
                .init(state: .retry, matcher: AWSPathMatcher(path: \FunctionConfiguration.lastUpdateStatus, expected: .inprogress)),
            ],
            minDelayTime: .seconds(5),
            command: getFunctionConfiguration
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
}
