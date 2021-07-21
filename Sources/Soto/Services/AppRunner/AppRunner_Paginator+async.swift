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

// MARK: Paginators

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension AppRunner {
    ///  Return a description of custom domain names that are associated with an AWS App Runner service.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeCustomDomainsPaginator(
        _ input: DescribeCustomDomainsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeCustomDomainsRequest, DescribeCustomDomainsResponse> {
        return .init(
            input: input,
            command: describeCustomDomains,
            inputKey: \DescribeCustomDomainsRequest.nextToken,
            outputKey: \DescribeCustomDomainsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of AWS App Runner automatic scaling configurations in your AWS account. You can query the revisions for a specific configuration name or the revisions for all configurations in your account. You can optionally query only the latest revision of each requested name.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAutoScalingConfigurationsPaginator(
        _ input: ListAutoScalingConfigurationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAutoScalingConfigurationsRequest, ListAutoScalingConfigurationsResponse> {
        return .init(
            input: input,
            command: listAutoScalingConfigurations,
            inputKey: \ListAutoScalingConfigurationsRequest.nextToken,
            outputKey: \ListAutoScalingConfigurationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of AWS App Runner connections that are associated with your AWS account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listConnectionsPaginator(
        _ input: ListConnectionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListConnectionsRequest, ListConnectionsResponse> {
        return .init(
            input: input,
            command: listConnections,
            inputKey: \ListConnectionsRequest.nextToken,
            outputKey: \ListConnectionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Return a list of operations that occurred on an AWS App Runner service. The resulting list of OperationSummary objects is sorted in reverse chronological order. The first object on the list represents the last started operation.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listOperationsPaginator(
        _ input: ListOperationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListOperationsRequest, ListOperationsResponse> {
        return .init(
            input: input,
            command: listOperations,
            inputKey: \ListOperationsRequest.nextToken,
            outputKey: \ListOperationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of running AWS App Runner services in your AWS account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listServicesPaginator(
        _ input: ListServicesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListServicesRequest, ListServicesResponse> {
        return .init(
            input: input,
            command: listServices,
            inputKey: \ListServicesRequest.nextToken,
            outputKey: \ListServicesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5)
