// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension AccessAnalyzer {

    ///  Retrieves a list of resources of the specified type that have been analyzed by the specified analyzer..
    public func listAnalyzedResourcesPaginator(_ input: ListAnalyzedResourcesRequest, onPage: @escaping (ListAnalyzedResourcesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listAnalyzedResources, tokenKey: \ListAnalyzedResourcesResponse.nextToken, onPage: onPage)
    }

    ///  Retrieves a list of analyzers.
    public func listAnalyzersPaginator(_ input: ListAnalyzersRequest, onPage: @escaping (ListAnalyzersResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listAnalyzers, tokenKey: \ListAnalyzersResponse.nextToken, onPage: onPage)
    }

    ///  Retrieves a list of archive rules created for the specified analyzer.
    public func listArchiveRulesPaginator(_ input: ListArchiveRulesRequest, onPage: @escaping (ListArchiveRulesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listArchiveRules, tokenKey: \ListArchiveRulesResponse.nextToken, onPage: onPage)
    }

    ///  Retrieves a list of findings generated by the specified analyzer.
    public func listFindingsPaginator(_ input: ListFindingsRequest, onPage: @escaping (ListFindingsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listFindings, tokenKey: \ListFindingsResponse.nextToken, onPage: onPage)
    }

}

extension AccessAnalyzer.ListAnalyzedResourcesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AccessAnalyzer.ListAnalyzedResourcesRequest {
        return .init(
            analyzerArn: self.analyzerArn, 
            maxResults: self.maxResults, 
            nextToken: token, 
            resourceType: self.resourceType
        )

    }
}

extension AccessAnalyzer.ListAnalyzersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AccessAnalyzer.ListAnalyzersRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            type: self.type
        )

    }
}

extension AccessAnalyzer.ListArchiveRulesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AccessAnalyzer.ListArchiveRulesRequest {
        return .init(
            analyzerName: self.analyzerName, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension AccessAnalyzer.ListFindingsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AccessAnalyzer.ListFindingsRequest {
        return .init(
            analyzerArn: self.analyzerArn, 
            filter: self.filter, 
            maxResults: self.maxResults, 
            nextToken: token, 
            sort: self.sort
        )

    }
}


