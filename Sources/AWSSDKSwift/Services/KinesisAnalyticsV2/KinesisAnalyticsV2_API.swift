// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
Amazon Kinesis Data Analytics is a fully managed service that you can use to process and analyze streaming data using SQL or Java. The service enables you to quickly author and run SQL or Java code against streaming sources to perform time series analytics, feed real-time dashboards, and create real-time metrics.
*/
public struct KinesisAnalyticsV2 {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "KinesisAnalytics_20180523",
            service: "kinesisanalytics",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-05-23",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [KinesisAnalyticsV2ErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }

    ///  Adds an Amazon CloudWatch log stream to monitor application configuration errors.
    public func addApplicationCloudWatchLoggingOption(_ input: AddApplicationCloudWatchLoggingOptionRequest) -> Future<AddApplicationCloudWatchLoggingOptionResponse> {
        return client.send(operation: "AddApplicationCloudWatchLoggingOption", path: "/", httpMethod: "POST", input: input)
    }

    ///   Adds a streaming source to your SQL-based Amazon Kinesis Data Analytics application.  You can add a streaming source when you create an application, or you can use this operation to add a streaming source after you create an application. For more information, see CreateApplication. Any configuration update, including adding a streaming source using this operation, results in a new version of the application. You can use the DescribeApplication operation to find the current application version. 
    public func addApplicationInput(_ input: AddApplicationInputRequest) -> Future<AddApplicationInputResponse> {
        return client.send(operation: "AddApplicationInput", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds an InputProcessingConfiguration to an SQL-based Kinesis Data Analytics application. An input processor pre-processes records on the input stream before the application's SQL code executes. Currently, the only input processor available is AWS Lambda.
    public func addApplicationInputProcessingConfiguration(_ input: AddApplicationInputProcessingConfigurationRequest) -> Future<AddApplicationInputProcessingConfigurationResponse> {
        return client.send(operation: "AddApplicationInputProcessingConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds an external destination to your SQL-based Amazon Kinesis Data Analytics application. If you want Kinesis Data Analytics to deliver data from an in-application stream within your application to an external destination (such as an Kinesis data stream, a Kinesis Data Firehose delivery stream, or an AWS Lambda function), you add the relevant configuration to your application using this operation. You can configure one or more outputs for your application. Each output configuration maps an in-application stream and an external destination.  You can use one of the output configurations to deliver data from your in-application error stream to an external destination so that you can analyze the errors.   Any configuration update, including adding a streaming source using this operation, results in a new version of the application. You can use the DescribeApplication operation to find the current application version.
    public func addApplicationOutput(_ input: AddApplicationOutputRequest) -> Future<AddApplicationOutputResponse> {
        return client.send(operation: "AddApplicationOutput", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds a reference data source to an existing SQL-based Amazon Kinesis Data Analytics application. Kinesis Data Analytics reads reference data (that is, an Amazon S3 object) and creates an in-application table within your application. In the request, you provide the source (S3 bucket name and object key name), name of the in-application table to create, and the necessary mapping information that describes how data in an Amazon S3 object maps to columns in the resulting in-application table.
    public func addApplicationReferenceDataSource(_ input: AddApplicationReferenceDataSourceRequest) -> Future<AddApplicationReferenceDataSourceResponse> {
        return client.send(operation: "AddApplicationReferenceDataSource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an Amazon Kinesis Data Analytics application. For information about creating a Kinesis Data Analytics application, see Creating an Application. 
    public func createApplication(_ input: CreateApplicationRequest) -> Future<CreateApplicationResponse> {
        return client.send(operation: "CreateApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a snapshot of the application's state data.
    public func createApplicationSnapshot(_ input: CreateApplicationSnapshotRequest) -> Future<CreateApplicationSnapshotResponse> {
        return client.send(operation: "CreateApplicationSnapshot", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified application. Kinesis Data Analytics halts application execution and deletes the application.
    public func deleteApplication(_ input: DeleteApplicationRequest) -> Future<DeleteApplicationResponse> {
        return client.send(operation: "DeleteApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an Amazon CloudWatch log stream from an Amazon Kinesis Data Analytics application. 
    public func deleteApplicationCloudWatchLoggingOption(_ input: DeleteApplicationCloudWatchLoggingOptionRequest) -> Future<DeleteApplicationCloudWatchLoggingOptionResponse> {
        return client.send(operation: "DeleteApplicationCloudWatchLoggingOption", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an InputProcessingConfiguration from an input.
    public func deleteApplicationInputProcessingConfiguration(_ input: DeleteApplicationInputProcessingConfigurationRequest) -> Future<DeleteApplicationInputProcessingConfigurationResponse> {
        return client.send(operation: "DeleteApplicationInputProcessingConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the output destination configuration from your SQL-based Amazon Kinesis Data Analytics application's configuration. Kinesis Data Analytics will no longer write data from the corresponding in-application stream to the external output destination.
    public func deleteApplicationOutput(_ input: DeleteApplicationOutputRequest) -> Future<DeleteApplicationOutputResponse> {
        return client.send(operation: "DeleteApplicationOutput", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a reference data source configuration from the specified SQL-based Amazon Kinesis Data Analytics application's configuration. If the application is running, Kinesis Data Analytics immediately removes the in-application table that you created using the AddApplicationReferenceDataSource operation. 
    public func deleteApplicationReferenceDataSource(_ input: DeleteApplicationReferenceDataSourceRequest) -> Future<DeleteApplicationReferenceDataSourceResponse> {
        return client.send(operation: "DeleteApplicationReferenceDataSource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a snapshot of application state.
    public func deleteApplicationSnapshot(_ input: DeleteApplicationSnapshotRequest) -> Future<DeleteApplicationSnapshotResponse> {
        return client.send(operation: "DeleteApplicationSnapshot", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a specific Amazon Kinesis Data Analytics application. If you want to retrieve a list of all applications in your account, use the ListApplications operation.
    public func describeApplication(_ input: DescribeApplicationRequest) -> Future<DescribeApplicationResponse> {
        return client.send(operation: "DescribeApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a snapshot of application state data.
    public func describeApplicationSnapshot(_ input: DescribeApplicationSnapshotRequest) -> Future<DescribeApplicationSnapshotResponse> {
        return client.send(operation: "DescribeApplicationSnapshot", path: "/", httpMethod: "POST", input: input)
    }

    ///  Infers a schema for an SQL-based Amazon Kinesis Data Analytics application by evaluating sample records on the specified streaming source (Kinesis data stream or Kinesis Data Firehose delivery stream) or Amazon S3 object. In the response, the operation returns the inferred schema and also the sample records that the operation used to infer the schema.  You can use the inferred schema when configuring a streaming source for your application. When you create an application using the Kinesis Data Analytics console, the console uses this operation to infer a schema and show it in the console user interface. 
    public func discoverInputSchema(_ input: DiscoverInputSchemaRequest) -> Future<DiscoverInputSchemaResponse> {
        return client.send(operation: "DiscoverInputSchema", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists information about the current application snapshots.
    public func listApplicationSnapshots(_ input: ListApplicationSnapshotsRequest) -> Future<ListApplicationSnapshotsResponse> {
        return client.send(operation: "ListApplicationSnapshots", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of Amazon Kinesis Data Analytics applications in your account. For each application, the response includes the application name, Amazon Resource Name (ARN), and status.  If you want detailed information about a specific application, use DescribeApplication.
    public func listApplications(_ input: ListApplicationsRequest) -> Future<ListApplicationsResponse> {
        return client.send(operation: "ListApplications", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the list of key-value tags assigned to the application.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> Future<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts the specified Amazon Kinesis Data Analytics application. After creating an application, you must exclusively call this operation to start your application.
    public func startApplication(_ input: StartApplicationRequest) -> Future<StartApplicationResponse> {
        return client.send(operation: "StartApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stops the application from processing data. You can stop an application only if it is in the running state. You can use the DescribeApplication operation to find the application state. 
    public func stopApplication(_ input: StopApplicationRequest) -> Future<StopApplicationResponse> {
        return client.send(operation: "StopApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds one or more key-value tags to a Kinesis Analytics application. Note that the maximum number of application tags includes system tags. The maximum number of user-defined application tags is 50.
    public func tagResource(_ input: TagResourceRequest) -> Future<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes one or more tags from a Kinesis Analytics application.
    public func untagResource(_ input: UntagResourceRequest) -> Future<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates an existing Amazon Kinesis Data Analytics application. Using this operation, you can update application code, input configuration, and output configuration.  Kinesis Data Analytics updates the ApplicationVersionId each time you update your application. 
    public func updateApplication(_ input: UpdateApplicationRequest) -> Future<UpdateApplicationResponse> {
        return client.send(operation: "UpdateApplication", path: "/", httpMethod: "POST", input: input)
    }
}
