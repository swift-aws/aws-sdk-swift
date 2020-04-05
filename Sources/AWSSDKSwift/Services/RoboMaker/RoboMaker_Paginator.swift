// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension RoboMaker {

    ///  Returns a list of deployment jobs for a fleet. You can optionally provide filters to retrieve specific deployment jobs. 
    public func listDeploymentJobsPaginator(_ input: ListDeploymentJobsRequest, onPage: @escaping (ListDeploymentJobsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDeploymentJobs, tokenKey: \ListDeploymentJobsResponse.nextToken, onPage: onPage)
    }

    ///  Returns a list of fleets. You can optionally provide filters to retrieve specific fleets. 
    public func listFleetsPaginator(_ input: ListFleetsRequest, onPage: @escaping (ListFleetsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listFleets, tokenKey: \ListFleetsResponse.nextToken, onPage: onPage)
    }

    ///  Returns a list of robot application. You can optionally provide filters to retrieve specific robot applications.
    public func listRobotApplicationsPaginator(_ input: ListRobotApplicationsRequest, onPage: @escaping (ListRobotApplicationsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listRobotApplications, tokenKey: \ListRobotApplicationsResponse.nextToken, onPage: onPage)
    }

    ///  Returns a list of robots. You can optionally provide filters to retrieve specific robots.
    public func listRobotsPaginator(_ input: ListRobotsRequest, onPage: @escaping (ListRobotsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listRobots, tokenKey: \ListRobotsResponse.nextToken, onPage: onPage)
    }

    ///  Returns a list of simulation applications. You can optionally provide filters to retrieve specific simulation applications. 
    public func listSimulationApplicationsPaginator(_ input: ListSimulationApplicationsRequest, onPage: @escaping (ListSimulationApplicationsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listSimulationApplications, tokenKey: \ListSimulationApplicationsResponse.nextToken, onPage: onPage)
    }

    ///  Returns a list simulation job batches. You can optionally provide filters to retrieve specific simulation batch jobs. 
    public func listSimulationJobBatchesPaginator(_ input: ListSimulationJobBatchesRequest, onPage: @escaping (ListSimulationJobBatchesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listSimulationJobBatches, tokenKey: \ListSimulationJobBatchesResponse.nextToken, onPage: onPage)
    }

    ///  Returns a list of simulation jobs. You can optionally provide filters to retrieve specific simulation jobs. 
    public func listSimulationJobsPaginator(_ input: ListSimulationJobsRequest, onPage: @escaping (ListSimulationJobsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listSimulationJobs, tokenKey: \ListSimulationJobsResponse.nextToken, onPage: onPage)
    }

}

extension RoboMaker.ListDeploymentJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RoboMaker.ListDeploymentJobsRequest {
        return .init(
            filters: self.filters, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension RoboMaker.ListFleetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RoboMaker.ListFleetsRequest {
        return .init(
            filters: self.filters, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension RoboMaker.ListRobotApplicationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RoboMaker.ListRobotApplicationsRequest {
        return .init(
            filters: self.filters, 
            maxResults: self.maxResults, 
            nextToken: token, 
            versionQualifier: self.versionQualifier
        )

    }
}

extension RoboMaker.ListRobotsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RoboMaker.ListRobotsRequest {
        return .init(
            filters: self.filters, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension RoboMaker.ListSimulationApplicationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RoboMaker.ListSimulationApplicationsRequest {
        return .init(
            filters: self.filters, 
            maxResults: self.maxResults, 
            nextToken: token, 
            versionQualifier: self.versionQualifier
        )

    }
}

extension RoboMaker.ListSimulationJobBatchesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RoboMaker.ListSimulationJobBatchesRequest {
        return .init(
            filters: self.filters, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension RoboMaker.ListSimulationJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RoboMaker.ListSimulationJobsRequest {
        return .init(
            filters: self.filters, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}


