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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto-codegenerator.
// DO NOT EDIT.

import SotoCore

// MARK: Paginators

extension CodeCommit {
    ///  Returns information about one or more merge conflicts in the attempted merge of two commit specifiers using the squash or three-way merge strategy. If the merge option for the attempted merge is specified as FAST_FORWARD_MERGE, an exception is thrown.
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
    public func describeMergeConflictsPaginator<Result>(
        _ input: DescribeMergeConflictsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeMergeConflictsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeMergeConflicts,
            inputKey: \DescribeMergeConflictsInput.nextToken,
            outputKey: \DescribeMergeConflictsOutput.nextToken,
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
    public func describeMergeConflictsPaginator(
        _ input: DescribeMergeConflictsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeMergeConflictsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeMergeConflicts,
            inputKey: \DescribeMergeConflictsInput.nextToken,
            outputKey: \DescribeMergeConflictsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns information about one or more pull request events.
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
    public func describePullRequestEventsPaginator<Result>(
        _ input: DescribePullRequestEventsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribePullRequestEventsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describePullRequestEvents,
            inputKey: \DescribePullRequestEventsInput.nextToken,
            outputKey: \DescribePullRequestEventsOutput.nextToken,
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
    public func describePullRequestEventsPaginator(
        _ input: DescribePullRequestEventsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribePullRequestEventsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describePullRequestEvents,
            inputKey: \DescribePullRequestEventsInput.nextToken,
            outputKey: \DescribePullRequestEventsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns information about reactions to a specified comment ID. Reactions from users who have been deleted will not be included in the count.
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
    public func getCommentReactionsPaginator<Result>(
        _ input: GetCommentReactionsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetCommentReactionsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getCommentReactions,
            inputKey: \GetCommentReactionsInput.nextToken,
            outputKey: \GetCommentReactionsOutput.nextToken,
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
    public func getCommentReactionsPaginator(
        _ input: GetCommentReactionsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetCommentReactionsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getCommentReactions,
            inputKey: \GetCommentReactionsInput.nextToken,
            outputKey: \GetCommentReactionsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns information about comments made on the comparison between two commits.  Reaction counts might include numbers from user identities who were deleted after the reaction was made. For a count of  reactions from active identities, use GetCommentReactions.
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
    public func getCommentsForComparedCommitPaginator<Result>(
        _ input: GetCommentsForComparedCommitInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetCommentsForComparedCommitOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getCommentsForComparedCommit,
            inputKey: \GetCommentsForComparedCommitInput.nextToken,
            outputKey: \GetCommentsForComparedCommitOutput.nextToken,
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
    public func getCommentsForComparedCommitPaginator(
        _ input: GetCommentsForComparedCommitInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetCommentsForComparedCommitOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getCommentsForComparedCommit,
            inputKey: \GetCommentsForComparedCommitInput.nextToken,
            outputKey: \GetCommentsForComparedCommitOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns comments made on a pull request.  Reaction counts might include numbers from user identities who were deleted after the reaction was made. For a count of  reactions from active identities, use GetCommentReactions.
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
    public func getCommentsForPullRequestPaginator<Result>(
        _ input: GetCommentsForPullRequestInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetCommentsForPullRequestOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getCommentsForPullRequest,
            inputKey: \GetCommentsForPullRequestInput.nextToken,
            outputKey: \GetCommentsForPullRequestOutput.nextToken,
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
    public func getCommentsForPullRequestPaginator(
        _ input: GetCommentsForPullRequestInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetCommentsForPullRequestOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getCommentsForPullRequest,
            inputKey: \GetCommentsForPullRequestInput.nextToken,
            outputKey: \GetCommentsForPullRequestOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns information about the differences in a valid commit specifier (such as a branch, tag, HEAD, commit ID, or other fully qualified reference). Results can be limited to a specified path.
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
    public func getDifferencesPaginator<Result>(
        _ input: GetDifferencesInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetDifferencesOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getDifferences,
            inputKey: \GetDifferencesInput.nextToken,
            outputKey: \GetDifferencesOutput.nextToken,
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
    public func getDifferencesPaginator(
        _ input: GetDifferencesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetDifferencesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getDifferences,
            inputKey: \GetDifferencesInput.nextToken,
            outputKey: \GetDifferencesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns information about merge conflicts between the before and after commit IDs for a pull request in a repository.
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
    public func getMergeConflictsPaginator<Result>(
        _ input: GetMergeConflictsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetMergeConflictsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getMergeConflicts,
            inputKey: \GetMergeConflictsInput.nextToken,
            outputKey: \GetMergeConflictsOutput.nextToken,
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
    public func getMergeConflictsPaginator(
        _ input: GetMergeConflictsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetMergeConflictsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getMergeConflicts,
            inputKey: \GetMergeConflictsInput.nextToken,
            outputKey: \GetMergeConflictsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists all approval rule templates in the specified AWS Region in your AWS account. If an AWS Region is not specified, the AWS Region where you are signed in is used.
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
    public func listApprovalRuleTemplatesPaginator<Result>(
        _ input: ListApprovalRuleTemplatesInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListApprovalRuleTemplatesOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listApprovalRuleTemplates,
            inputKey: \ListApprovalRuleTemplatesInput.nextToken,
            outputKey: \ListApprovalRuleTemplatesOutput.nextToken,
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
    public func listApprovalRuleTemplatesPaginator(
        _ input: ListApprovalRuleTemplatesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListApprovalRuleTemplatesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listApprovalRuleTemplates,
            inputKey: \ListApprovalRuleTemplatesInput.nextToken,
            outputKey: \ListApprovalRuleTemplatesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists all approval rule templates that are associated with a specified repository.
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
    public func listAssociatedApprovalRuleTemplatesForRepositoryPaginator<Result>(
        _ input: ListAssociatedApprovalRuleTemplatesForRepositoryInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListAssociatedApprovalRuleTemplatesForRepositoryOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listAssociatedApprovalRuleTemplatesForRepository,
            inputKey: \ListAssociatedApprovalRuleTemplatesForRepositoryInput.nextToken,
            outputKey: \ListAssociatedApprovalRuleTemplatesForRepositoryOutput.nextToken,
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
    public func listAssociatedApprovalRuleTemplatesForRepositoryPaginator(
        _ input: ListAssociatedApprovalRuleTemplatesForRepositoryInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListAssociatedApprovalRuleTemplatesForRepositoryOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAssociatedApprovalRuleTemplatesForRepository,
            inputKey: \ListAssociatedApprovalRuleTemplatesForRepositoryInput.nextToken,
            outputKey: \ListAssociatedApprovalRuleTemplatesForRepositoryOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets information about one or more branches in a repository.
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
    public func listBranchesPaginator<Result>(
        _ input: ListBranchesInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListBranchesOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listBranches,
            inputKey: \ListBranchesInput.nextToken,
            outputKey: \ListBranchesOutput.nextToken,
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
    public func listBranchesPaginator(
        _ input: ListBranchesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListBranchesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listBranches,
            inputKey: \ListBranchesInput.nextToken,
            outputKey: \ListBranchesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of pull requests for a specified repository. The return list can be refined by pull request  status or pull request author ARN.
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
    public func listPullRequestsPaginator<Result>(
        _ input: ListPullRequestsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListPullRequestsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listPullRequests,
            inputKey: \ListPullRequestsInput.nextToken,
            outputKey: \ListPullRequestsOutput.nextToken,
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
    public func listPullRequestsPaginator(
        _ input: ListPullRequestsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListPullRequestsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPullRequests,
            inputKey: \ListPullRequestsInput.nextToken,
            outputKey: \ListPullRequestsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets information about one or more repositories.
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
    public func listRepositoriesPaginator<Result>(
        _ input: ListRepositoriesInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListRepositoriesOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listRepositories,
            inputKey: \ListRepositoriesInput.nextToken,
            outputKey: \ListRepositoriesOutput.nextToken,
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
    public func listRepositoriesPaginator(
        _ input: ListRepositoriesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListRepositoriesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listRepositories,
            inputKey: \ListRepositoriesInput.nextToken,
            outputKey: \ListRepositoriesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists all repositories associated with the specified approval rule template.
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
    public func listRepositoriesForApprovalRuleTemplatePaginator<Result>(
        _ input: ListRepositoriesForApprovalRuleTemplateInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListRepositoriesForApprovalRuleTemplateOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listRepositoriesForApprovalRuleTemplate,
            inputKey: \ListRepositoriesForApprovalRuleTemplateInput.nextToken,
            outputKey: \ListRepositoriesForApprovalRuleTemplateOutput.nextToken,
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
    public func listRepositoriesForApprovalRuleTemplatePaginator(
        _ input: ListRepositoriesForApprovalRuleTemplateInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListRepositoriesForApprovalRuleTemplateOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listRepositoriesForApprovalRuleTemplate,
            inputKey: \ListRepositoriesForApprovalRuleTemplateInput.nextToken,
            outputKey: \ListRepositoriesForApprovalRuleTemplateOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension CodeCommit.DescribeMergeConflictsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCommit.DescribeMergeConflictsInput {
        return .init(
            conflictDetailLevel: self.conflictDetailLevel,
            conflictResolutionStrategy: self.conflictResolutionStrategy,
            destinationCommitSpecifier: self.destinationCommitSpecifier,
            filePath: self.filePath,
            maxMergeHunks: self.maxMergeHunks,
            mergeOption: self.mergeOption,
            nextToken: token,
            repositoryName: self.repositoryName,
            sourceCommitSpecifier: self.sourceCommitSpecifier
        )
    }
}

extension CodeCommit.DescribePullRequestEventsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCommit.DescribePullRequestEventsInput {
        return .init(
            actorArn: self.actorArn,
            maxResults: self.maxResults,
            nextToken: token,
            pullRequestEventType: self.pullRequestEventType,
            pullRequestId: self.pullRequestId
        )
    }
}

extension CodeCommit.GetCommentReactionsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCommit.GetCommentReactionsInput {
        return .init(
            commentId: self.commentId,
            maxResults: self.maxResults,
            nextToken: token,
            reactionUserArn: self.reactionUserArn
        )
    }
}

extension CodeCommit.GetCommentsForComparedCommitInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCommit.GetCommentsForComparedCommitInput {
        return .init(
            afterCommitId: self.afterCommitId,
            beforeCommitId: self.beforeCommitId,
            maxResults: self.maxResults,
            nextToken: token,
            repositoryName: self.repositoryName
        )
    }
}

extension CodeCommit.GetCommentsForPullRequestInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCommit.GetCommentsForPullRequestInput {
        return .init(
            afterCommitId: self.afterCommitId,
            beforeCommitId: self.beforeCommitId,
            maxResults: self.maxResults,
            nextToken: token,
            pullRequestId: self.pullRequestId,
            repositoryName: self.repositoryName
        )
    }
}

extension CodeCommit.GetDifferencesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCommit.GetDifferencesInput {
        return .init(
            afterCommitSpecifier: self.afterCommitSpecifier,
            afterPath: self.afterPath,
            beforeCommitSpecifier: self.beforeCommitSpecifier,
            beforePath: self.beforePath,
            maxResults: self.maxResults,
            nextToken: token,
            repositoryName: self.repositoryName
        )
    }
}

extension CodeCommit.GetMergeConflictsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCommit.GetMergeConflictsInput {
        return .init(
            conflictDetailLevel: self.conflictDetailLevel,
            conflictResolutionStrategy: self.conflictResolutionStrategy,
            destinationCommitSpecifier: self.destinationCommitSpecifier,
            maxConflictFiles: self.maxConflictFiles,
            mergeOption: self.mergeOption,
            nextToken: token,
            repositoryName: self.repositoryName,
            sourceCommitSpecifier: self.sourceCommitSpecifier
        )
    }
}

extension CodeCommit.ListApprovalRuleTemplatesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCommit.ListApprovalRuleTemplatesInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension CodeCommit.ListAssociatedApprovalRuleTemplatesForRepositoryInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCommit.ListAssociatedApprovalRuleTemplatesForRepositoryInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            repositoryName: self.repositoryName
        )
    }
}

extension CodeCommit.ListBranchesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCommit.ListBranchesInput {
        return .init(
            nextToken: token,
            repositoryName: self.repositoryName
        )
    }
}

extension CodeCommit.ListPullRequestsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCommit.ListPullRequestsInput {
        return .init(
            authorArn: self.authorArn,
            maxResults: self.maxResults,
            nextToken: token,
            pullRequestStatus: self.pullRequestStatus,
            repositoryName: self.repositoryName
        )
    }
}

extension CodeCommit.ListRepositoriesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCommit.ListRepositoriesInput {
        return .init(
            nextToken: token,
            order: self.order,
            sortBy: self.sortBy
        )
    }
}

extension CodeCommit.ListRepositoriesForApprovalRuleTemplateInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCommit.ListRepositoriesForApprovalRuleTemplateInput {
        return .init(
            approvalRuleTemplateName: self.approvalRuleTemplateName,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
