// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.


extension Batch {

    ///  Describes one or more of your compute environments. If you are using an unmanaged compute environment, you can use the DescribeComputeEnvironment operation to determine the ecsClusterArn that you should launch your Amazon ECS container instances into.
    public func describeComputeEnvironmentsPaginator(_ input: DescribeComputeEnvironmentsRequest) -> Future<[ComputeEnvironmentDetail]> {
        return client.paginate(input: input, command: describeComputeEnvironments, resultKey: "computeEnvironments", tokenKey: "nextToken")
    }
    
    ///  Describes a list of job definitions. You can specify a status (such as ACTIVE) to only return job definitions that match that status.
    public func describeJobDefinitionsPaginator(_ input: DescribeJobDefinitionsRequest) -> Future<[JobDefinition]> {
        return client.paginate(input: input, command: describeJobDefinitions, resultKey: "jobDefinitions", tokenKey: "nextToken")
    }
    
    ///  Describes one or more of your job queues.
    public func describeJobQueuesPaginator(_ input: DescribeJobQueuesRequest) -> Future<[JobQueueDetail]> {
        return client.paginate(input: input, command: describeJobQueues, resultKey: "jobQueues", tokenKey: "nextToken")
    }
    
    ///  Returns a list of AWS Batch jobs. You must specify only one of the following:   a job queue ID to return a list of jobs in that job queue   a multi-node parallel job ID to return a list of that job's nodes   an array job ID to return a list of that job's children   You can filter the results by job status with the jobStatus parameter. If you do not specify a status, only RUNNING jobs are returned.
    public func listJobsPaginator(_ input: ListJobsRequest) -> Future<[JobSummary]> {
        return client.paginate(input: input, command: listJobs, resultKey: "jobSummaryList", tokenKey: "nextToken")
    }
    
}

extension Batch.DescribeComputeEnvironmentsRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            computeEnvironments: original.computeEnvironments, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Batch.DescribeJobDefinitionsRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            jobDefinitionName: original.jobDefinitionName, 
            jobDefinitions: original.jobDefinitions, 
            maxResults: original.maxResults, 
            nextToken: token, 
            status: original.status
        )
    }
}

extension Batch.DescribeJobQueuesRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            jobQueues: original.jobQueues, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Batch.ListJobsRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            arrayJobId: original.arrayJobId, 
            jobQueue: original.jobQueue, 
            jobStatus: original.jobStatus, 
            maxResults: original.maxResults, 
            multiNodeJobId: original.multiNodeJobId, 
            nextToken: token
        )
    }
}

