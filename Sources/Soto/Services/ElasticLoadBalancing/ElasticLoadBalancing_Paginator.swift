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

import SotoCore

// MARK: Paginators

extension ElasticLoadBalancing {
    ///  Describes the specified the load balancers. If no load balancers are specified, the call describes all of your load balancers.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func describeLoadBalancersPaginator<Result>(
        _ input: DescribeAccessPointsInput,
        _ initialValue: Result,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeAccessPointsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeLoadBalancers,
            inputKey: \DescribeAccessPointsInput.marker,
            outputKey: \DescribeAccessPointsOutput.nextMarker,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func describeLoadBalancersPaginator(
        _ input: DescribeAccessPointsInput,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeAccessPointsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeLoadBalancers,
            inputKey: \DescribeAccessPointsInput.marker,
            outputKey: \DescribeAccessPointsOutput.nextMarker,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension ElasticLoadBalancing.DescribeAccessPointsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ElasticLoadBalancing.DescribeAccessPointsInput {
        return .init(
            loadBalancerNames: self.loadBalancerNames,
            marker: token,
            pageSize: self.pageSize
        )
    }
}
