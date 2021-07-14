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

extension Athena {
    ///  Streams the results of a single query execution specified by QueryExecutionId from the Athena query results location in Amazon S3. For more information, see Query Results in the Amazon Athena User Guide. This request does not execute the query but returns results. Use StartQueryExecution to run a query. To stream query results successfully, the IAM principal with permission to call GetQueryResults also must have permissions to the Amazon S3 GetObject action for the Athena query results location.  IAM principals with permission to the Amazon S3 GetObject action for the query results location are able to retrieve query results from Amazon S3 even if permission to the GetQueryResults action is denied. To restrict user or role access, ensure that Amazon S3 permissions to the Athena query location are denied.
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
    public func getQueryResultsPaginator<Result>(
        _ input: GetQueryResultsInput,
        _ initialValue: Result,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetQueryResultsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getQueryResults,
            inputKey: \GetQueryResultsInput.nextToken,
            outputKey: \GetQueryResultsOutput.nextToken,
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
    public func getQueryResultsPaginator(
        _ input: GetQueryResultsInput,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetQueryResultsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getQueryResults,
            inputKey: \GetQueryResultsInput.nextToken,
            outputKey: \GetQueryResultsOutput.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the data catalogs in the current AWS account.
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
    public func listDataCatalogsPaginator<Result>(
        _ input: ListDataCatalogsInput,
        _ initialValue: Result,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListDataCatalogsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listDataCatalogs,
            inputKey: \ListDataCatalogsInput.nextToken,
            outputKey: \ListDataCatalogsOutput.nextToken,
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
    public func listDataCatalogsPaginator(
        _ input: ListDataCatalogsInput,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListDataCatalogsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDataCatalogs,
            inputKey: \ListDataCatalogsInput.nextToken,
            outputKey: \ListDataCatalogsOutput.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the databases in the specified data catalog.
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
    public func listDatabasesPaginator<Result>(
        _ input: ListDatabasesInput,
        _ initialValue: Result,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListDatabasesOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listDatabases,
            inputKey: \ListDatabasesInput.nextToken,
            outputKey: \ListDatabasesOutput.nextToken,
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
    public func listDatabasesPaginator(
        _ input: ListDatabasesInput,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListDatabasesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDatabases,
            inputKey: \ListDatabasesInput.nextToken,
            outputKey: \ListDatabasesOutput.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Provides a list of available query IDs only for queries saved in the specified workgroup. Requires that you have access to the specified workgroup. If a workgroup is not specified, lists the saved queries for the primary workgroup. For code samples using the AWS SDK for Java, see Examples and Code Samples in the Amazon Athena User Guide.
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
    public func listNamedQueriesPaginator<Result>(
        _ input: ListNamedQueriesInput,
        _ initialValue: Result,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListNamedQueriesOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listNamedQueries,
            inputKey: \ListNamedQueriesInput.nextToken,
            outputKey: \ListNamedQueriesOutput.nextToken,
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
    public func listNamedQueriesPaginator(
        _ input: ListNamedQueriesInput,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListNamedQueriesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listNamedQueries,
            inputKey: \ListNamedQueriesInput.nextToken,
            outputKey: \ListNamedQueriesOutput.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the prepared statements in the specfied workgroup.
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
    public func listPreparedStatementsPaginator<Result>(
        _ input: ListPreparedStatementsInput,
        _ initialValue: Result,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListPreparedStatementsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listPreparedStatements,
            inputKey: \ListPreparedStatementsInput.nextToken,
            outputKey: \ListPreparedStatementsOutput.nextToken,
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
    public func listPreparedStatementsPaginator(
        _ input: ListPreparedStatementsInput,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListPreparedStatementsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPreparedStatements,
            inputKey: \ListPreparedStatementsInput.nextToken,
            outputKey: \ListPreparedStatementsOutput.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Provides a list of available query execution IDs for the queries in the specified workgroup. If a workgroup is not specified, returns a list of query execution IDs for the primary workgroup. Requires you to have access to the workgroup in which the queries ran. For code samples using the AWS SDK for Java, see Examples and Code Samples in the Amazon Athena User Guide.
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
    public func listQueryExecutionsPaginator<Result>(
        _ input: ListQueryExecutionsInput,
        _ initialValue: Result,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListQueryExecutionsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listQueryExecutions,
            inputKey: \ListQueryExecutionsInput.nextToken,
            outputKey: \ListQueryExecutionsOutput.nextToken,
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
    public func listQueryExecutionsPaginator(
        _ input: ListQueryExecutionsInput,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListQueryExecutionsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listQueryExecutions,
            inputKey: \ListQueryExecutionsInput.nextToken,
            outputKey: \ListQueryExecutionsOutput.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the metadata for the tables in the specified data catalog database.
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
    public func listTableMetadataPaginator<Result>(
        _ input: ListTableMetadataInput,
        _ initialValue: Result,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListTableMetadataOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listTableMetadata,
            inputKey: \ListTableMetadataInput.nextToken,
            outputKey: \ListTableMetadataOutput.nextToken,
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
    public func listTableMetadataPaginator(
        _ input: ListTableMetadataInput,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListTableMetadataOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTableMetadata,
            inputKey: \ListTableMetadataInput.nextToken,
            outputKey: \ListTableMetadataOutput.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the tags associated with an Athena workgroup or data catalog resource.
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
    public func listTagsForResourcePaginator<Result>(
        _ input: ListTagsForResourceInput,
        _ initialValue: Result,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListTagsForResourceOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listTagsForResource,
            inputKey: \ListTagsForResourceInput.nextToken,
            outputKey: \ListTagsForResourceOutput.nextToken,
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
    public func listTagsForResourcePaginator(
        _ input: ListTagsForResourceInput,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListTagsForResourceOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTagsForResource,
            inputKey: \ListTagsForResourceInput.nextToken,
            outputKey: \ListTagsForResourceOutput.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists available workgroups for the account.
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
    public func listWorkGroupsPaginator<Result>(
        _ input: ListWorkGroupsInput,
        _ initialValue: Result,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListWorkGroupsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listWorkGroups,
            inputKey: \ListWorkGroupsInput.nextToken,
            outputKey: \ListWorkGroupsOutput.nextToken,
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
    public func listWorkGroupsPaginator(
        _ input: ListWorkGroupsInput,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListWorkGroupsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listWorkGroups,
            inputKey: \ListWorkGroupsInput.nextToken,
            outputKey: \ListWorkGroupsOutput.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension Athena.GetQueryResultsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Athena.GetQueryResultsInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            queryExecutionId: self.queryExecutionId
        )
    }
}

extension Athena.ListDataCatalogsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Athena.ListDataCatalogsInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Athena.ListDatabasesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Athena.ListDatabasesInput {
        return .init(
            catalogName: self.catalogName,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Athena.ListNamedQueriesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Athena.ListNamedQueriesInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            workGroup: self.workGroup
        )
    }
}

extension Athena.ListPreparedStatementsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Athena.ListPreparedStatementsInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            workGroup: self.workGroup
        )
    }
}

extension Athena.ListQueryExecutionsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Athena.ListQueryExecutionsInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            workGroup: self.workGroup
        )
    }
}

extension Athena.ListTableMetadataInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Athena.ListTableMetadataInput {
        return .init(
            catalogName: self.catalogName,
            databaseName: self.databaseName,
            expression: self.expression,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Athena.ListTagsForResourceInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Athena.ListTagsForResourceInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceARN: self.resourceARN
        )
    }
}

extension Athena.ListWorkGroupsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Athena.ListWorkGroupsInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
