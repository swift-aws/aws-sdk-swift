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

extension Transcribe {
    ///  Provides more information about the custom language models you've created. You can use the information in this list to find a specific custom language model. You can then use the  operation to get more information about it.
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
    public func listLanguageModelsPaginator<Result>(
        _ input: ListLanguageModelsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListLanguageModelsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listLanguageModels,
            inputKey: \ListLanguageModelsRequest.nextToken,
            outputKey: \ListLanguageModelsResponse.nextToken,
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
    public func listLanguageModelsPaginator(
        _ input: ListLanguageModelsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListLanguageModelsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listLanguageModels,
            inputKey: \ListLanguageModelsRequest.nextToken,
            outputKey: \ListLanguageModelsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists medical transcription jobs with a specified status or substring that matches their names.
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
    public func listMedicalTranscriptionJobsPaginator<Result>(
        _ input: ListMedicalTranscriptionJobsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListMedicalTranscriptionJobsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listMedicalTranscriptionJobs,
            inputKey: \ListMedicalTranscriptionJobsRequest.nextToken,
            outputKey: \ListMedicalTranscriptionJobsResponse.nextToken,
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
    public func listMedicalTranscriptionJobsPaginator(
        _ input: ListMedicalTranscriptionJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListMedicalTranscriptionJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listMedicalTranscriptionJobs,
            inputKey: \ListMedicalTranscriptionJobsRequest.nextToken,
            outputKey: \ListMedicalTranscriptionJobsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of vocabularies that match the specified criteria. If you don't enter a value in any of the request parameters, returns the entire list of vocabularies.
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
    public func listMedicalVocabulariesPaginator<Result>(
        _ input: ListMedicalVocabulariesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListMedicalVocabulariesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listMedicalVocabularies,
            inputKey: \ListMedicalVocabulariesRequest.nextToken,
            outputKey: \ListMedicalVocabulariesResponse.nextToken,
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
    public func listMedicalVocabulariesPaginator(
        _ input: ListMedicalVocabulariesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListMedicalVocabulariesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listMedicalVocabularies,
            inputKey: \ListMedicalVocabulariesRequest.nextToken,
            outputKey: \ListMedicalVocabulariesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists transcription jobs with the specified status.
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
    public func listTranscriptionJobsPaginator<Result>(
        _ input: ListTranscriptionJobsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListTranscriptionJobsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listTranscriptionJobs,
            inputKey: \ListTranscriptionJobsRequest.nextToken,
            outputKey: \ListTranscriptionJobsResponse.nextToken,
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
    public func listTranscriptionJobsPaginator(
        _ input: ListTranscriptionJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListTranscriptionJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTranscriptionJobs,
            inputKey: \ListTranscriptionJobsRequest.nextToken,
            outputKey: \ListTranscriptionJobsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of vocabularies that match the specified criteria. If no criteria are specified, returns the entire list of vocabularies.
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
    public func listVocabulariesPaginator<Result>(
        _ input: ListVocabulariesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListVocabulariesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listVocabularies,
            inputKey: \ListVocabulariesRequest.nextToken,
            outputKey: \ListVocabulariesResponse.nextToken,
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
    public func listVocabulariesPaginator(
        _ input: ListVocabulariesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListVocabulariesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listVocabularies,
            inputKey: \ListVocabulariesRequest.nextToken,
            outputKey: \ListVocabulariesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets information about vocabulary filters.
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
    public func listVocabularyFiltersPaginator<Result>(
        _ input: ListVocabularyFiltersRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListVocabularyFiltersResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listVocabularyFilters,
            inputKey: \ListVocabularyFiltersRequest.nextToken,
            outputKey: \ListVocabularyFiltersResponse.nextToken,
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
    public func listVocabularyFiltersPaginator(
        _ input: ListVocabularyFiltersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListVocabularyFiltersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listVocabularyFilters,
            inputKey: \ListVocabularyFiltersRequest.nextToken,
            outputKey: \ListVocabularyFiltersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension Transcribe.ListLanguageModelsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Transcribe.ListLanguageModelsRequest {
        return .init(
            maxResults: self.maxResults,
            nameContains: self.nameContains,
            nextToken: token,
            statusEquals: self.statusEquals
        )
    }
}

extension Transcribe.ListMedicalTranscriptionJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Transcribe.ListMedicalTranscriptionJobsRequest {
        return .init(
            jobNameContains: self.jobNameContains,
            maxResults: self.maxResults,
            nextToken: token,
            status: self.status
        )
    }
}

extension Transcribe.ListMedicalVocabulariesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Transcribe.ListMedicalVocabulariesRequest {
        return .init(
            maxResults: self.maxResults,
            nameContains: self.nameContains,
            nextToken: token,
            stateEquals: self.stateEquals
        )
    }
}

extension Transcribe.ListTranscriptionJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Transcribe.ListTranscriptionJobsRequest {
        return .init(
            jobNameContains: self.jobNameContains,
            maxResults: self.maxResults,
            nextToken: token,
            status: self.status
        )
    }
}

extension Transcribe.ListVocabulariesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Transcribe.ListVocabulariesRequest {
        return .init(
            maxResults: self.maxResults,
            nameContains: self.nameContains,
            nextToken: token,
            stateEquals: self.stateEquals
        )
    }
}

extension Transcribe.ListVocabularyFiltersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Transcribe.ListVocabularyFiltersRequest {
        return .init(
            maxResults: self.maxResults,
            nameContains: self.nameContains,
            nextToken: token
        )
    }
}