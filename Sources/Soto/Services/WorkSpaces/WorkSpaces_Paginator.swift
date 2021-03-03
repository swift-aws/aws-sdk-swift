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

extension WorkSpaces {
    ///  Retrieves a list that describes the available WorkSpace bundles. You can filter the results using either bundle ID or owner, but not both.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func describeWorkspaceBundlesPaginator<Result>(
        _ input: DescribeWorkspaceBundlesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeWorkspaceBundlesResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeWorkspaceBundles,
            inputKey: \DescribeWorkspaceBundlesRequest.nextToken,
            outputKey: \DescribeWorkspaceBundlesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func describeWorkspaceBundlesPaginator(
        _ input: DescribeWorkspaceBundlesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeWorkspaceBundlesResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeWorkspaceBundles,
            inputKey: \DescribeWorkspaceBundlesRequest.nextToken,
            outputKey: \DescribeWorkspaceBundlesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Describes the available directories that are registered with Amazon WorkSpaces.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func describeWorkspaceDirectoriesPaginator<Result>(
        _ input: DescribeWorkspaceDirectoriesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeWorkspaceDirectoriesResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeWorkspaceDirectories,
            inputKey: \DescribeWorkspaceDirectoriesRequest.nextToken,
            outputKey: \DescribeWorkspaceDirectoriesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func describeWorkspaceDirectoriesPaginator(
        _ input: DescribeWorkspaceDirectoriesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeWorkspaceDirectoriesResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeWorkspaceDirectories,
            inputKey: \DescribeWorkspaceDirectoriesRequest.nextToken,
            outputKey: \DescribeWorkspaceDirectoriesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Describes the specified WorkSpaces. You can filter the results by using the bundle identifier, directory identifier, or owner, but you can specify only one filter at a time.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func describeWorkspacesPaginator<Result>(
        _ input: DescribeWorkspacesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeWorkspacesResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeWorkspaces,
            inputKey: \DescribeWorkspacesRequest.nextToken,
            outputKey: \DescribeWorkspacesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func describeWorkspacesPaginator(
        _ input: DescribeWorkspacesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeWorkspacesResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeWorkspaces,
            inputKey: \DescribeWorkspacesRequest.nextToken,
            outputKey: \DescribeWorkspacesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension WorkSpaces.DescribeWorkspaceBundlesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> WorkSpaces.DescribeWorkspaceBundlesRequest {
        return .init(
            bundleIds: self.bundleIds,
            nextToken: token,
            owner: self.owner
        )
    }
}

extension WorkSpaces.DescribeWorkspaceDirectoriesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> WorkSpaces.DescribeWorkspaceDirectoriesRequest {
        return .init(
            directoryIds: self.directoryIds,
            limit: self.limit,
            nextToken: token
        )
    }
}

extension WorkSpaces.DescribeWorkspacesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> WorkSpaces.DescribeWorkspacesRequest {
        return .init(
            bundleId: self.bundleId,
            directoryId: self.directoryId,
            limit: self.limit,
            nextToken: token,
            userName: self.userName,
            workspaceIds: self.workspaceIds
        )
    }
}
