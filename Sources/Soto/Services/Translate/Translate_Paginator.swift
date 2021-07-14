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

extension Translate {
    ///  Provides a list of your parallel data resources in Amazon Translate.
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
    public func listParallelDataPaginator<Result>(
        _ input: ListParallelDataRequest,
        _ initialValue: Result,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListParallelDataResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listParallelData,
            inputKey: \ListParallelDataRequest.nextToken,
            outputKey: \ListParallelDataResponse.nextToken,
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
    public func listParallelDataPaginator(
        _ input: ListParallelDataRequest,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListParallelDataResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listParallelData,
            inputKey: \ListParallelDataRequest.nextToken,
            outputKey: \ListParallelDataResponse.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Provides a list of custom terminologies associated with your account.
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
    public func listTerminologiesPaginator<Result>(
        _ input: ListTerminologiesRequest,
        _ initialValue: Result,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListTerminologiesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listTerminologies,
            inputKey: \ListTerminologiesRequest.nextToken,
            outputKey: \ListTerminologiesResponse.nextToken,
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
    public func listTerminologiesPaginator(
        _ input: ListTerminologiesRequest,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListTerminologiesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTerminologies,
            inputKey: \ListTerminologiesRequest.nextToken,
            outputKey: \ListTerminologiesResponse.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets a list of the batch translation jobs that you have submitted.
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
    public func listTextTranslationJobsPaginator<Result>(
        _ input: ListTextTranslationJobsRequest,
        _ initialValue: Result,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListTextTranslationJobsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listTextTranslationJobs,
            inputKey: \ListTextTranslationJobsRequest.nextToken,
            outputKey: \ListTextTranslationJobsResponse.nextToken,
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
    public func listTextTranslationJobsPaginator(
        _ input: ListTextTranslationJobsRequest,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListTextTranslationJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTextTranslationJobs,
            inputKey: \ListTextTranslationJobsRequest.nextToken,
            outputKey: \ListTextTranslationJobsResponse.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension Translate.ListParallelDataRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Translate.ListParallelDataRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Translate.ListTerminologiesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Translate.ListTerminologiesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Translate.ListTextTranslationJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Translate.ListTextTranslationJobsRequest {
        return .init(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
