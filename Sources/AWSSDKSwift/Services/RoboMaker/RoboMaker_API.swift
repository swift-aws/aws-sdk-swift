//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import NIO

/**
Client object for interacting with AWS RoboMaker service.

This section provides documentation for the AWS RoboMaker API operations.
*/
public struct RoboMaker {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: ServiceConfig

    //MARK: Initialization

    /// Initialize the RoboMaker client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - retryPolicy: Object returning whether retries should be attempted. Possible options are NoRetry(), ExponentialRetry() or JitterRetry()
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        credentialProvider: CredentialProvider? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSSDKSwiftCore.Partition = .aws,
        endpoint: String? = nil,
        retryPolicy: RetryPolicy = JitterRetry(),
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.serviceConfig = ServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "robomaker",
            serviceProtocol: .restjson,
            apiVersion: "2018-06-29",
            endpoint: endpoint,
            possibleErrorTypes: [RoboMakerErrorType.self]
        )
        self.client = AWSClient(
            credentialProvider: credentialProvider,
            serviceConfig: serviceConfig,
            retryPolicy: retryPolicy,
            middlewares: middlewares,
            httpClientProvider: httpClientProvider
        )
    }
    
    func syncShutdown() throws {
        try client.syncShutdown()
    }
    
    //MARK: API Calls

    ///  Describes one or more simulation jobs.
    public func batchDescribeSimulationJob(_ input: BatchDescribeSimulationJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchDescribeSimulationJobResponse> {
        return client.send(operation: "BatchDescribeSimulationJob", path: "/batchDescribeSimulationJob", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Cancels the specified deployment job.
    public func cancelDeploymentJob(_ input: CancelDeploymentJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelDeploymentJobResponse> {
        return client.send(operation: "CancelDeploymentJob", path: "/cancelDeploymentJob", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Cancels the specified simulation job.
    public func cancelSimulationJob(_ input: CancelSimulationJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelSimulationJobResponse> {
        return client.send(operation: "CancelSimulationJob", path: "/cancelSimulationJob", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Cancels a simulation job batch. When you cancel a simulation job batch, you are also cancelling all of the active simulation jobs created as part of the batch. 
    public func cancelSimulationJobBatch(_ input: CancelSimulationJobBatchRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelSimulationJobBatchResponse> {
        return client.send(operation: "CancelSimulationJobBatch", path: "/cancelSimulationJobBatch", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deploys a specific version of a robot application to robots in a fleet. The robot application must have a numbered applicationVersion for consistency reasons. To create a new version, use CreateRobotApplicationVersion or see Creating a Robot Application Version.   After 90 days, deployment jobs expire and will be deleted. They will no longer be accessible.  
    public func createDeploymentJob(_ input: CreateDeploymentJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDeploymentJobResponse> {
        return client.send(operation: "CreateDeploymentJob", path: "/createDeploymentJob", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a fleet, a logical group of robots running the same robot application.
    public func createFleet(_ input: CreateFleetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFleetResponse> {
        return client.send(operation: "CreateFleet", path: "/createFleet", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a robot.
    public func createRobot(_ input: CreateRobotRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRobotResponse> {
        return client.send(operation: "CreateRobot", path: "/createRobot", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a robot application. 
    public func createRobotApplication(_ input: CreateRobotApplicationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRobotApplicationResponse> {
        return client.send(operation: "CreateRobotApplication", path: "/createRobotApplication", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a version of a robot application.
    public func createRobotApplicationVersion(_ input: CreateRobotApplicationVersionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRobotApplicationVersionResponse> {
        return client.send(operation: "CreateRobotApplicationVersion", path: "/createRobotApplicationVersion", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a simulation application.
    public func createSimulationApplication(_ input: CreateSimulationApplicationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSimulationApplicationResponse> {
        return client.send(operation: "CreateSimulationApplication", path: "/createSimulationApplication", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a simulation application with a specific revision id.
    public func createSimulationApplicationVersion(_ input: CreateSimulationApplicationVersionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSimulationApplicationVersionResponse> {
        return client.send(operation: "CreateSimulationApplicationVersion", path: "/createSimulationApplicationVersion", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a simulation job.  After 90 days, simulation jobs expire and will be deleted. They will no longer be accessible.  
    public func createSimulationJob(_ input: CreateSimulationJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSimulationJobResponse> {
        return client.send(operation: "CreateSimulationJob", path: "/createSimulationJob", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a fleet.
    public func deleteFleet(_ input: DeleteFleetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteFleetResponse> {
        return client.send(operation: "DeleteFleet", path: "/deleteFleet", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a robot.
    public func deleteRobot(_ input: DeleteRobotRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRobotResponse> {
        return client.send(operation: "DeleteRobot", path: "/deleteRobot", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a robot application.
    public func deleteRobotApplication(_ input: DeleteRobotApplicationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRobotApplicationResponse> {
        return client.send(operation: "DeleteRobotApplication", path: "/deleteRobotApplication", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a simulation application.
    public func deleteSimulationApplication(_ input: DeleteSimulationApplicationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSimulationApplicationResponse> {
        return client.send(operation: "DeleteSimulationApplication", path: "/deleteSimulationApplication", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deregisters a robot.
    public func deregisterRobot(_ input: DeregisterRobotRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeregisterRobotResponse> {
        return client.send(operation: "DeregisterRobot", path: "/deregisterRobot", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes a deployment job.
    public func describeDeploymentJob(_ input: DescribeDeploymentJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeploymentJobResponse> {
        return client.send(operation: "DescribeDeploymentJob", path: "/describeDeploymentJob", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes a fleet.
    public func describeFleet(_ input: DescribeFleetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFleetResponse> {
        return client.send(operation: "DescribeFleet", path: "/describeFleet", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes a robot.
    public func describeRobot(_ input: DescribeRobotRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRobotResponse> {
        return client.send(operation: "DescribeRobot", path: "/describeRobot", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes a robot application.
    public func describeRobotApplication(_ input: DescribeRobotApplicationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRobotApplicationResponse> {
        return client.send(operation: "DescribeRobotApplication", path: "/describeRobotApplication", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes a simulation application.
    public func describeSimulationApplication(_ input: DescribeSimulationApplicationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSimulationApplicationResponse> {
        return client.send(operation: "DescribeSimulationApplication", path: "/describeSimulationApplication", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes a simulation job.
    public func describeSimulationJob(_ input: DescribeSimulationJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSimulationJobResponse> {
        return client.send(operation: "DescribeSimulationJob", path: "/describeSimulationJob", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes a simulation job batch.
    public func describeSimulationJobBatch(_ input: DescribeSimulationJobBatchRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSimulationJobBatchResponse> {
        return client.send(operation: "DescribeSimulationJobBatch", path: "/describeSimulationJobBatch", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a list of deployment jobs for a fleet. You can optionally provide filters to retrieve specific deployment jobs. 
    public func listDeploymentJobs(_ input: ListDeploymentJobsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDeploymentJobsResponse> {
        return client.send(operation: "ListDeploymentJobs", path: "/listDeploymentJobs", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a list of fleets. You can optionally provide filters to retrieve specific fleets. 
    public func listFleets(_ input: ListFleetsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListFleetsResponse> {
        return client.send(operation: "ListFleets", path: "/listFleets", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a list of robot application. You can optionally provide filters to retrieve specific robot applications.
    public func listRobotApplications(_ input: ListRobotApplicationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRobotApplicationsResponse> {
        return client.send(operation: "ListRobotApplications", path: "/listRobotApplications", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a list of robots. You can optionally provide filters to retrieve specific robots.
    public func listRobots(_ input: ListRobotsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRobotsResponse> {
        return client.send(operation: "ListRobots", path: "/listRobots", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a list of simulation applications. You can optionally provide filters to retrieve specific simulation applications. 
    public func listSimulationApplications(_ input: ListSimulationApplicationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSimulationApplicationsResponse> {
        return client.send(operation: "ListSimulationApplications", path: "/listSimulationApplications", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a list simulation job batches. You can optionally provide filters to retrieve specific simulation batch jobs. 
    public func listSimulationJobBatches(_ input: ListSimulationJobBatchesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSimulationJobBatchesResponse> {
        return client.send(operation: "ListSimulationJobBatches", path: "/listSimulationJobBatches", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a list of simulation jobs. You can optionally provide filters to retrieve specific simulation jobs. 
    public func listSimulationJobs(_ input: ListSimulationJobsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSimulationJobsResponse> {
        return client.send(operation: "ListSimulationJobs", path: "/listSimulationJobs", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists all tags on a AWS RoboMaker resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Registers a robot with a fleet.
    public func registerRobot(_ input: RegisterRobotRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterRobotResponse> {
        return client.send(operation: "RegisterRobot", path: "/registerRobot", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Restarts a running simulation job.
    public func restartSimulationJob(_ input: RestartSimulationJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RestartSimulationJobResponse> {
        return client.send(operation: "RestartSimulationJob", path: "/restartSimulationJob", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Starts a new simulation job batch. The batch is defined using one or more SimulationJobRequest objects. 
    public func startSimulationJobBatch(_ input: StartSimulationJobBatchRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartSimulationJobBatchResponse> {
        return client.send(operation: "StartSimulationJobBatch", path: "/startSimulationJobBatch", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Syncrhonizes robots in a fleet to the latest deployment. This is helpful if robots were added after a deployment.
    public func syncDeploymentJob(_ input: SyncDeploymentJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SyncDeploymentJobResponse> {
        return client.send(operation: "SyncDeploymentJob", path: "/syncDeploymentJob", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Adds or edits tags for a AWS RoboMaker resource. Each tag consists of a tag key and a tag value. Tag keys and tag values are both required, but tag values can be empty strings.  For information about the rules that apply to tag keys and tag values, see User-Defined Tag Restrictions in the AWS Billing and Cost Management User Guide. 
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes the specified tags from the specified AWS RoboMaker resource. To remove a tag, specify the tag key. To change the tag value of an existing tag key, use  TagResource . 
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Updates a robot application.
    public func updateRobotApplication(_ input: UpdateRobotApplicationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRobotApplicationResponse> {
        return client.send(operation: "UpdateRobotApplication", path: "/updateRobotApplication", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates a simulation application.
    public func updateSimulationApplication(_ input: UpdateSimulationApplicationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateSimulationApplicationResponse> {
        return client.send(operation: "UpdateSimulationApplication", path: "/updateSimulationApplication", httpMethod: "POST", input: input, on: eventLoop)
    }
}
