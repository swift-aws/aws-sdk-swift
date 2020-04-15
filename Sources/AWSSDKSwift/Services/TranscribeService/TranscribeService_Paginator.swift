// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension TranscribeService {

    ///  Lists medical transcription jobs with a specified status or substring that matches their names.
    public func listMedicalTranscriptionJobsPaginator(_ input: ListMedicalTranscriptionJobsRequest, onPage: @escaping (ListMedicalTranscriptionJobsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listMedicalTranscriptionJobs, tokenKey: \ListMedicalTranscriptionJobsResponse.nextToken, onPage: onPage)
    }

    ///  Lists transcription jobs with the specified status.
    public func listTranscriptionJobsPaginator(_ input: ListTranscriptionJobsRequest, onPage: @escaping (ListTranscriptionJobsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTranscriptionJobs, tokenKey: \ListTranscriptionJobsResponse.nextToken, onPage: onPage)
    }

    ///  Returns a list of vocabularies that match the specified criteria. If no criteria are specified, returns the entire list of vocabularies.
    public func listVocabulariesPaginator(_ input: ListVocabulariesRequest, onPage: @escaping (ListVocabulariesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listVocabularies, tokenKey: \ListVocabulariesResponse.nextToken, onPage: onPage)
    }

    ///  Gets information about vocabulary filters.
    public func listVocabularyFiltersPaginator(_ input: ListVocabularyFiltersRequest, onPage: @escaping (ListVocabularyFiltersResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listVocabularyFilters, tokenKey: \ListVocabularyFiltersResponse.nextToken, onPage: onPage)
    }

}

extension TranscribeService.ListMedicalTranscriptionJobsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> TranscribeService.ListMedicalTranscriptionJobsRequest {
        return .init(
            jobNameContains: self.jobNameContains, 
            maxResults: self.maxResults, 
            nextToken: token, 
            status: self.status
        )

    }
}

extension TranscribeService.ListTranscriptionJobsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> TranscribeService.ListTranscriptionJobsRequest {
        return .init(
            jobNameContains: self.jobNameContains, 
            maxResults: self.maxResults, 
            nextToken: token, 
            status: self.status
        )

    }
}

extension TranscribeService.ListVocabulariesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> TranscribeService.ListVocabulariesRequest {
        return .init(
            maxResults: self.maxResults, 
            nameContains: self.nameContains, 
            nextToken: token, 
            stateEquals: self.stateEquals
        )

    }
}

extension TranscribeService.ListVocabularyFiltersRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> TranscribeService.ListVocabularyFiltersRequest {
        return .init(
            maxResults: self.maxResults, 
            nameContains: self.nameContains, 
            nextToken: token
        )

    }
}


