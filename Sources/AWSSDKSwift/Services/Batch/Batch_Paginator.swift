// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension Batch {

    ///  Describes one or more of your compute environments. If you are using an unmanaged compute environment, you can use the DescribeComputeEnvironment operation to determine the ecsClusterArn that you should launch your Amazon ECS container instances into.
    public func describeComputeEnvironmentsPaginator(_ input: DescribeComputeEnvironmentsRequest, onPage: @escaping (DescribeComputeEnvironmentsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeComputeEnvironments, tokenKey: \DescribeComputeEnvironmentsResponse.nextToken, onPage: onPage)
    }

    ///  Describes a list of job definitions. You can specify a status (such as ACTIVE) to only return job definitions that match that status.
    public func describeJobDefinitionsPaginator(_ input: DescribeJobDefinitionsRequest, onPage: @escaping (DescribeJobDefinitionsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeJobDefinitions, tokenKey: \DescribeJobDefinitionsResponse.nextToken, onPage: onPage)
    }

    ///  Describes one or more of your job queues.
    public func describeJobQueuesPaginator(_ input: DescribeJobQueuesRequest, onPage: @escaping (DescribeJobQueuesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeJobQueues, tokenKey: \DescribeJobQueuesResponse.nextToken, onPage: onPage)
    }

    ///  Returns a list of AWS Batch jobs. You must specify only one of the following:   a job queue ID to return a list of jobs in that job queue   a multi-node parallel job ID to return a list of that job's nodes   an array job ID to return a list of that job's children   You can filter the results by job status with the jobStatus parameter. If you do not specify a status, only RUNNING jobs are returned.
    public func listJobsPaginator(_ input: ListJobsRequest, onPage: @escaping (ListJobsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listJobs, tokenKey: \ListJobsResponse.nextToken, onPage: onPage)
    }

}

extension Batch.DescribeComputeEnvironmentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Batch.DescribeComputeEnvironmentsRequest {
        return .init(
            computeEnvironments: self.computeEnvironments, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension Batch.DescribeJobDefinitionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Batch.DescribeJobDefinitionsRequest {
        return .init(
            jobDefinitionName: self.jobDefinitionName, 
            jobDefinitions: self.jobDefinitions, 
            maxResults: self.maxResults, 
            nextToken: token, 
            status: self.status
        )

    }
}

extension Batch.DescribeJobQueuesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Batch.DescribeJobQueuesRequest {
        return .init(
            jobQueues: self.jobQueues, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension Batch.ListJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Batch.ListJobsRequest {
        return .init(
            arrayJobId: self.arrayJobId, 
            jobQueue: self.jobQueue, 
            jobStatus: self.jobStatus, 
            maxResults: self.maxResults, 
            multiNodeJobId: self.multiNodeJobId, 
            nextToken: token
        )

    }
}


