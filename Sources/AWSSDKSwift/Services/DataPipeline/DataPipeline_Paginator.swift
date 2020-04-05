// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension DataPipeline {

    ///  Gets the object definitions for a set of objects associated with the pipeline. Object definitions are composed of a set of fields that define the properties of the object.
    public func describeObjectsPaginator(_ input: DescribeObjectsInput, onPage: @escaping (DescribeObjectsOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeObjects, tokenKey: \DescribeObjectsOutput.marker, onPage: onPage)
    }

    ///  Lists the pipeline identifiers for all active pipelines that you have permission to access.
    public func listPipelinesPaginator(_ input: ListPipelinesInput, onPage: @escaping (ListPipelinesOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listPipelines, tokenKey: \ListPipelinesOutput.marker, onPage: onPage)
    }

    ///  Queries the specified pipeline for the names of objects that match the specified set of conditions.
    public func queryObjectsPaginator(_ input: QueryObjectsInput, onPage: @escaping (QueryObjectsOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: queryObjects, tokenKey: \QueryObjectsOutput.marker, onPage: onPage)
    }

}

extension DataPipeline.DescribeObjectsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DataPipeline.DescribeObjectsInput {
        return .init(
            evaluateExpressions: self.evaluateExpressions, 
            marker: token, 
            objectIds: self.objectIds, 
            pipelineId: self.pipelineId
        )

    }
}

extension DataPipeline.ListPipelinesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DataPipeline.ListPipelinesInput {
        return .init(
            marker: token
        )

    }
}

extension DataPipeline.QueryObjectsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DataPipeline.QueryObjectsInput {
        return .init(
            limit: self.limit, 
            marker: token, 
            pipelineId: self.pipelineId, 
            query: self.query, 
            sphere: self.sphere
        )

    }
}


