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

extension MachineLearning {
    public func BatchPredictionAvailableWaiter(
        _ input: DescribeBatchPredictionsInput,
        maxWaitTime: TimeAmount,
        logger: Logger,
        on eventLoop: EventLoop
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \DescribeBatchPredictionsOutput.results, elementPath: \BatchPrediction.status, expected: .completed)),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeBatchPredictionsOutput.results, elementPath: \BatchPrediction.status, expected: .failed)),
            ],
            command: describeBatchPredictions
        )
        return self.client.wait(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func DataSourceAvailableWaiter(
        _ input: DescribeDataSourcesInput,
        maxWaitTime: TimeAmount,
        logger: Logger,
        on eventLoop: EventLoop
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \DescribeDataSourcesOutput.results, elementPath: \DataSource.status, expected: .completed)),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeDataSourcesOutput.results, elementPath: \DataSource.status, expected: .failed)),
            ],
            command: describeDataSources
        )
        return self.client.wait(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func EvaluationAvailableWaiter(
        _ input: DescribeEvaluationsInput,
        maxWaitTime: TimeAmount,
        logger: Logger,
        on eventLoop: EventLoop
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \DescribeEvaluationsOutput.results, elementPath: \Evaluation.status, expected: .completed)),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeEvaluationsOutput.results, elementPath: \Evaluation.status, expected: .failed)),
            ],
            command: describeEvaluations
        )
        return self.client.wait(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func MLModelAvailableWaiter(
        _ input: DescribeMLModelsInput,
        maxWaitTime: TimeAmount,
        logger: Logger,
        on eventLoop: EventLoop
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSAllPathMatcher(arrayPath: \DescribeMLModelsOutput.results, elementPath: \MLModel.status, expected: .completed)),
                .init(state: .failure, matcher: AWSAnyPathMatcher(arrayPath: \DescribeMLModelsOutput.results, elementPath: \MLModel.status, expected: .failed)),
            ],
            command: describeMLModels
        )
        return self.client.wait(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
}
