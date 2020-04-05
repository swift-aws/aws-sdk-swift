// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension DataSync {

    ///  Returns a list of agents owned by an AWS account in the AWS Region specified in the request. The returned list is ordered by agent Amazon Resource Name (ARN). By default, this operation returns a maximum of 100 agents. This operation supports pagination that enables you to optionally reduce the number of agents returned in a response. If you have more agents than are returned in a response (that is, the response returns only a truncated list of your agents), the response contains a marker that you can specify in your next request to fetch the next page of agents.
    public func listAgentsPaginator(_ input: ListAgentsRequest, onPage: @escaping (ListAgentsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listAgents, tokenKey: \ListAgentsResponse.nextToken, onPage: onPage)
    }

    ///  Returns a lists of source and destination locations. If you have more locations than are returned in a response (that is, the response returns only a truncated list of your agents), the response contains a token that you can specify in your next request to fetch the next page of locations.
    public func listLocationsPaginator(_ input: ListLocationsRequest, onPage: @escaping (ListLocationsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listLocations, tokenKey: \ListLocationsResponse.nextToken, onPage: onPage)
    }

    ///  Returns all the tags associated with a specified resources. 
    public func listTagsForResourcePaginator(_ input: ListTagsForResourceRequest, onPage: @escaping (ListTagsForResourceResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTagsForResource, tokenKey: \ListTagsForResourceResponse.nextToken, onPage: onPage)
    }

    ///  Returns a list of executed tasks.
    public func listTaskExecutionsPaginator(_ input: ListTaskExecutionsRequest, onPage: @escaping (ListTaskExecutionsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTaskExecutions, tokenKey: \ListTaskExecutionsResponse.nextToken, onPage: onPage)
    }

    ///  Returns a list of all the tasks.
    public func listTasksPaginator(_ input: ListTasksRequest, onPage: @escaping (ListTasksResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTasks, tokenKey: \ListTasksResponse.nextToken, onPage: onPage)
    }

}

extension DataSync.ListAgentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DataSync.ListAgentsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension DataSync.ListLocationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DataSync.ListLocationsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension DataSync.ListTagsForResourceRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DataSync.ListTagsForResourceRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            resourceArn: self.resourceArn
        )

    }
}

extension DataSync.ListTaskExecutionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DataSync.ListTaskExecutionsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            taskArn: self.taskArn
        )

    }
}

extension DataSync.ListTasksRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DataSync.ListTasksRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}


