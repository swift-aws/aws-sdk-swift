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
Client object for interacting with AWS SMS service.

AAWS Sever Migration Service This is the AWS Sever Migration Service API Reference. It provides descriptions, syntax, and usage examples for each of the actions and data types for the AWS Sever Migration Service (AWS SMS). The topic for each action shows the Query API request parameters and the XML response. You can also view the XML request elements in the WSDL. Alternatively, you can use one of the AWS SDKs to access an API that's tailored to the programming language or platform that you're using. For more information, see AWS SDKs. To learn more about the Server Migration Service, see the following resources:    AWS Sever Migration Service product page     AWS Sever Migration Service User Guide   
*/
public struct SMS {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the SMS client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - retryController: Object returning whether retries should be attempted. Possible options are NoRetry(), ExponentialRetry() or JitterRetry()
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        accessKeyId: String? = nil,
        secretAccessKey: String? = nil,
        sessionToken: String? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSSDKSwiftCore.Partition = .aws,
        endpoint: String? = nil,
        retryController: RetryController = JitterRetry(),
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            partition: region?.partition ?? partition,
            amzTarget: "AWSServerMigrationService_V2016_10_24",
            service: "sms",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2016-10-24",
            endpoint: endpoint,
            retryController: retryController,
            middlewares: middlewares,
            possibleErrorTypes: [SMSErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Creates an application. An application consists of one or more server groups. Each server group contain one or more servers.
    public func createApp(_ input: CreateAppRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAppResponse> {
        return client.send(operation: "CreateApp", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a replication job. The replication job schedules periodic replication runs to replicate your server to AWS. Each replication run creates an Amazon Machine Image (AMI).
    public func createReplicationJob(_ input: CreateReplicationJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateReplicationJobResponse> {
        return client.send(operation: "CreateReplicationJob", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes an existing application. Optionally deletes the launched stack associated with the application and all AWS SMS replication jobs for servers in the application.
    public func deleteApp(_ input: DeleteAppRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAppResponse> {
        return client.send(operation: "DeleteApp", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes existing launch configuration for an application.
    public func deleteAppLaunchConfiguration(_ input: DeleteAppLaunchConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAppLaunchConfigurationResponse> {
        return client.send(operation: "DeleteAppLaunchConfiguration", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes existing replication configuration for an application.
    public func deleteAppReplicationConfiguration(_ input: DeleteAppReplicationConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAppReplicationConfigurationResponse> {
        return client.send(operation: "DeleteAppReplicationConfiguration", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified replication job. After you delete a replication job, there are no further replication runs. AWS deletes the contents of the Amazon S3 bucket used to store AWS SMS artifacts. The AMIs created by the replication runs are not deleted.
    public func deleteReplicationJob(_ input: DeleteReplicationJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteReplicationJobResponse> {
        return client.send(operation: "DeleteReplicationJob", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes all servers from your server catalog.
    public func deleteServerCatalog(_ input: DeleteServerCatalogRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteServerCatalogResponse> {
        return client.send(operation: "DeleteServerCatalog", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Disassociates the specified connector from AWS SMS. After you disassociate a connector, it is no longer available to support replication jobs.
    public func disassociateConnector(_ input: DisassociateConnectorRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateConnectorResponse> {
        return client.send(operation: "DisassociateConnector", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Generates a target change set for a currently launched stack and writes it to an Amazon S3 object in the customer’s Amazon S3 bucket.
    public func generateChangeSet(_ input: GenerateChangeSetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GenerateChangeSetResponse> {
        return client.send(operation: "GenerateChangeSet", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Generates an Amazon CloudFormation template based on the current launch configuration and writes it to an Amazon S3 object in the customer’s Amazon S3 bucket.
    public func generateTemplate(_ input: GenerateTemplateRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GenerateTemplateResponse> {
        return client.send(operation: "GenerateTemplate", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieve information about an application.
    public func getApp(_ input: GetAppRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAppResponse> {
        return client.send(operation: "GetApp", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves the application launch configuration associated with an application.
    public func getAppLaunchConfiguration(_ input: GetAppLaunchConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAppLaunchConfigurationResponse> {
        return client.send(operation: "GetAppLaunchConfiguration", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves an application replication configuration associatd with an application.
    public func getAppReplicationConfiguration(_ input: GetAppReplicationConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAppReplicationConfigurationResponse> {
        return client.send(operation: "GetAppReplicationConfiguration", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the connectors registered with the AWS SMS.
    public func getConnectors(_ input: GetConnectorsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetConnectorsResponse> {
        return client.send(operation: "GetConnectors", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the specified replication job or all of your replication jobs.
    public func getReplicationJobs(_ input: GetReplicationJobsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetReplicationJobsResponse> {
        return client.send(operation: "GetReplicationJobs", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the replication runs for the specified replication job.
    public func getReplicationRuns(_ input: GetReplicationRunsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetReplicationRunsResponse> {
        return client.send(operation: "GetReplicationRuns", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the servers in your server catalog. Before you can describe your servers, you must import them using ImportServerCatalog.
    public func getServers(_ input: GetServersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetServersResponse> {
        return client.send(operation: "GetServers", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gathers a complete list of on-premises servers. Connectors must be installed and monitoring all servers that you want to import. This call returns immediately, but might take additional time to retrieve all the servers.
    public func importServerCatalog(_ input: ImportServerCatalogRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImportServerCatalogResponse> {
        return client.send(operation: "ImportServerCatalog", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Launches an application stack.
    public func launchApp(_ input: LaunchAppRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<LaunchAppResponse> {
        return client.send(operation: "LaunchApp", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a list of summaries for all applications.
    public func listApps(_ input: ListAppsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAppsResponse> {
        return client.send(operation: "ListApps", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a launch configuration for an application.
    public func putAppLaunchConfiguration(_ input: PutAppLaunchConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutAppLaunchConfigurationResponse> {
        return client.send(operation: "PutAppLaunchConfiguration", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates or updates a replication configuration for an application.
    public func putAppReplicationConfiguration(_ input: PutAppReplicationConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutAppReplicationConfigurationResponse> {
        return client.send(operation: "PutAppReplicationConfiguration", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Starts replicating an application.
    public func startAppReplication(_ input: StartAppReplicationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartAppReplicationResponse> {
        return client.send(operation: "StartAppReplication", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Starts an on-demand replication run for the specified replication job. This replication run starts immediately. This replication run is in addition to the ones already scheduled. There is a limit on the number of on-demand replications runs you can request in a 24-hour period.
    public func startOnDemandReplicationRun(_ input: StartOnDemandReplicationRunRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartOnDemandReplicationRunResponse> {
        return client.send(operation: "StartOnDemandReplicationRun", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Stops replicating an application.
    public func stopAppReplication(_ input: StopAppReplicationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopAppReplicationResponse> {
        return client.send(operation: "StopAppReplication", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Terminates the stack for an application.
    public func terminateApp(_ input: TerminateAppRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TerminateAppResponse> {
        return client.send(operation: "TerminateApp", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates an application.
    public func updateApp(_ input: UpdateAppRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateAppResponse> {
        return client.send(operation: "UpdateApp", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the specified settings for the specified replication job.
    public func updateReplicationJob(_ input: UpdateReplicationJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateReplicationJobResponse> {
        return client.send(operation: "UpdateReplicationJob", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }
}
