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
extension Schemas {
    ///  List the discoverers.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDiscoverersPaginator(
        _ input: ListDiscoverersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDiscoverersRequest, ListDiscoverersResponse> {
        return .init(
            input: input,
            command: listDiscoverers,
            inputKey: \ListDiscoverersRequest.nextToken,
            outputKey: \ListDiscoverersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List the registries.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listRegistriesPaginator(
        _ input: ListRegistriesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRegistriesRequest, ListRegistriesResponse> {
        return .init(
            input: input,
            command: listRegistries,
            inputKey: \ListRegistriesRequest.nextToken,
            outputKey: \ListRegistriesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Provides a list of the schema versions and related information.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSchemaVersionsPaginator(
        _ input: ListSchemaVersionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSchemaVersionsRequest, ListSchemaVersionsResponse> {
        return .init(
            input: input,
            command: listSchemaVersions,
            inputKey: \ListSchemaVersionsRequest.nextToken,
            outputKey: \ListSchemaVersionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List the schemas.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSchemasPaginator(
        _ input: ListSchemasRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSchemasRequest, ListSchemasResponse> {
        return .init(
            input: input,
            command: listSchemas,
            inputKey: \ListSchemasRequest.nextToken,
            outputKey: \ListSchemasResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Search the schemas
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func searchSchemasPaginator(
        _ input: SearchSchemasRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<SearchSchemasRequest, SearchSchemasResponse> {
        return .init(
            input: input,
            command: searchSchemas,
            inputKey: \SearchSchemasRequest.nextToken,
            outputKey: \SearchSchemasResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5)
