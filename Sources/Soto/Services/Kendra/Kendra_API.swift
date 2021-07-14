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

/// Service object for interacting with AWS Kendra service.
///
/// Amazon Kendra is a service for indexing large document sets.
public struct Kendra: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Kendra client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            amzTarget: "AWSKendraFrontendService",
            service: "kendra",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2019-02-03",
            endpoint: endpoint,
            errorType: KendraErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Removes one or more documents from an index. The documents must have been added with the BatchPutDocument operation. The documents are deleted asynchronously. You can see the progress of the deletion by using AWS CloudWatch. Any error messages related to the processing of the batch are sent to you CloudWatch log.
    public func batchDeleteDocument(_ input: BatchDeleteDocumentRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchDeleteDocumentResponse> {
        return self.client.execute(operation: "BatchDeleteDocument", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Adds one or more documents to an index. The BatchPutDocument operation enables you to ingest inline documents or a set of documents stored in an Amazon S3 bucket. Use this operation to ingest your text and unstructured text into an index, add custom attributes to the documents, and to attach an access control list to the documents added to the index. The documents are indexed asynchronously. You can see the progress of the batch using AWS CloudWatch. Any error messages related to processing the batch are sent to your AWS CloudWatch log.
    public func batchPutDocument(_ input: BatchPutDocumentRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchPutDocumentResponse> {
        return self.client.execute(operation: "BatchPutDocument", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Creates a data source that you use to with an Amazon Kendra index.  You specify a name, data source connector type and description for your data source. You also specify configuration information such as document metadata (author, source URI, and so on) and user context information.  CreateDataSource is a synchronous operation. The operation returns 200 if the data source was successfully created. Otherwise, an exception is raised.
    public func createDataSource(_ input: CreateDataSourceRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDataSourceResponse> {
        return self.client.execute(operation: "CreateDataSource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Creates an new set of frequently asked question (FAQ) questions and answers.
    public func createFaq(_ input: CreateFaqRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFaqResponse> {
        return self.client.execute(operation: "CreateFaq", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Creates a new Amazon Kendra index. Index creation is an asynchronous operation. To determine if index creation has completed, check the Status field returned from a call to DescribeIndex. The Status field is set to ACTIVE when the index is ready to use. Once the index is active you can index your documents using the BatchPutDocument operation or using one of the supported data sources.
    public func createIndex(_ input: CreateIndexRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateIndexResponse> {
        return self.client.execute(operation: "CreateIndex", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Creates a thesaurus for an index. The thesaurus contains a list of synonyms in Solr format.
    public func createThesaurus(_ input: CreateThesaurusRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateThesaurusResponse> {
        return self.client.execute(operation: "CreateThesaurus", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Deletes an Amazon Kendra data source. An exception is not thrown if the data source is already being deleted. While the data source is being deleted, the Status field returned by a call to the DescribeDataSource operation is set to DELETING. For more information, see Deleting Data Sources.
    @discardableResult public func deleteDataSource(_ input: DeleteDataSourceRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteDataSource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Removes an FAQ from an index.
    @discardableResult public func deleteFaq(_ input: DeleteFaqRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteFaq", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Deletes an existing Amazon Kendra index. An exception is not thrown if the index is already being deleted. While the index is being deleted, the Status field returned by a call to the DescribeIndex operation is set to DELETING.
    @discardableResult public func deleteIndex(_ input: DeleteIndexRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteIndex", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Deletes an existing Amazon Kendra thesaurus.
    @discardableResult public func deleteThesaurus(_ input: DeleteThesaurusRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteThesaurus", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Gets information about a Amazon Kendra data source.
    public func describeDataSource(_ input: DescribeDataSourceRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDataSourceResponse> {
        return self.client.execute(operation: "DescribeDataSource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Gets information about an FAQ list.
    public func describeFaq(_ input: DescribeFaqRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFaqResponse> {
        return self.client.execute(operation: "DescribeFaq", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Describes an existing Amazon Kendra index
    public func describeIndex(_ input: DescribeIndexRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIndexResponse> {
        return self.client.execute(operation: "DescribeIndex", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Describes an existing Amazon Kendra thesaurus.
    public func describeThesaurus(_ input: DescribeThesaurusRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeThesaurusResponse> {
        return self.client.execute(operation: "DescribeThesaurus", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Gets statistics about synchronizing Amazon Kendra with a data source.
    public func listDataSourceSyncJobs(_ input: ListDataSourceSyncJobsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDataSourceSyncJobsResponse> {
        return self.client.execute(operation: "ListDataSourceSyncJobs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Lists the data sources that you have created.
    public func listDataSources(_ input: ListDataSourcesRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDataSourcesResponse> {
        return self.client.execute(operation: "ListDataSources", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Gets a list of FAQ lists associated with an index.
    public func listFaqs(_ input: ListFaqsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListFaqsResponse> {
        return self.client.execute(operation: "ListFaqs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Lists the Amazon Kendra indexes that you have created.
    public func listIndices(_ input: ListIndicesRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListIndicesResponse> {
        return self.client.execute(operation: "ListIndices", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Gets a list of tags associated with a specified resource. Indexes, FAQs, and data sources can have tags associated with them.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Lists the Amazon Kendra thesauri associated with an index.
    public func listThesauri(_ input: ListThesauriRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListThesauriResponse> {
        return self.client.execute(operation: "ListThesauri", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Searches an active index. Use this API to search your documents using query. The Query operation enables to do faceted search and to filter results based on document attributes. It also enables you to provide user context that Amazon Kendra uses to enforce document access control in the search results.  Amazon Kendra searches your index for text content and question and answer (FAQ) content. By default the response contains three types of results.   Relevant passages   Matching FAQs   Relevant documents   You can specify that the query return only one type of result using the QueryResultTypeConfig parameter. Each query returns the 100 most relevant results.
    public func query(_ input: QueryRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryResult> {
        return self.client.execute(operation: "Query", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Starts a synchronization job for a data source. If a synchronization job is already in progress, Amazon Kendra returns a ResourceInUseException exception.
    public func startDataSourceSyncJob(_ input: StartDataSourceSyncJobRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartDataSourceSyncJobResponse> {
        return self.client.execute(operation: "StartDataSourceSyncJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Stops a running synchronization job. You can't stop a scheduled synchronization job.
    @discardableResult public func stopDataSourceSyncJob(_ input: StopDataSourceSyncJobRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "StopDataSourceSyncJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Enables you to provide feedback to Amazon Kendra to improve the performance of the service.
    @discardableResult public func submitFeedback(_ input: SubmitFeedbackRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "SubmitFeedback", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Adds the specified tag to the specified index, FAQ, or data source resource. If the tag already exists, the existing value is replaced with the new value.
    public func tagResource(_ input: TagResourceRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Removes a tag from an index, FAQ, or a data source.
    public func untagResource(_ input: UntagResourceRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Updates an existing Amazon Kendra data source.
    @discardableResult public func updateDataSource(_ input: UpdateDataSourceRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "UpdateDataSource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Updates an existing Amazon Kendra index.
    @discardableResult public func updateIndex(_ input: UpdateIndexRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "UpdateIndex", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Updates a thesaurus file associated with an index.
    @discardableResult public func updateThesaurus(_ input: UpdateThesaurusRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "UpdateThesaurus", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }
}

extension Kendra {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Kendra, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
