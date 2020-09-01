//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

// MARK: Paginators

extension Macie {

    ///  Lists all Amazon Macie Classic member accounts for the current Amazon Macie Classic master account.
    public func listMemberAccountsPaginator(
        _ input: ListMemberAccountsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListMemberAccountsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listMemberAccounts,
            tokenKey: \ListMemberAccountsResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists all the S3 resources associated with Amazon Macie Classic. If memberAccountId isn't specified, the action lists the S3 resources associated with Amazon Macie Classic for the current master account. If memberAccountId is specified, the action lists the S3 resources associated with Amazon Macie Classic for the specified member account. 
    public func listS3ResourcesPaginator(
        _ input: ListS3ResourcesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListS3ResourcesResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listS3Resources,
            tokenKey: \ListS3ResourcesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

}

extension Macie.ListMemberAccountsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Macie.ListMemberAccountsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension Macie.ListS3ResourcesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Macie.ListS3ResourcesRequest {
        return .init(
            maxResults: self.maxResults,
            memberAccountId: self.memberAccountId,
            nextToken: token
        )

    }
}

