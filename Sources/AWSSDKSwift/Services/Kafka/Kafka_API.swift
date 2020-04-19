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
import Foundation
import NIO

/**
Client object for interacting with AWS Kafka service.

The operations for managing an Amazon MSK cluster.
*/
public struct Kafka {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the Kafka client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        accessKeyId: String? = nil,
        secretAccessKey: String? = nil,
        sessionToken: String? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        endpoint: String? = nil,
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "kafka",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-11-14",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [KafkaErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Creates a new MSK cluster.
    public func createCluster(_ input: CreateClusterRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClusterResponse> {
        return client.send(operation: "CreateCluster", path: "/v1/clusters", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a new MSK configuration.
    public func createConfiguration(_ input: CreateConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateConfigurationResponse> {
        return client.send(operation: "CreateConfiguration", path: "/v1/configurations", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the MSK cluster specified by the Amazon Resource Name (ARN) in the request.
    public func deleteCluster(_ input: DeleteClusterRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteClusterResponse> {
        return client.send(operation: "DeleteCluster", path: "/v1/clusters/{clusterArn}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Returns a description of the MSK cluster whose Amazon Resource Name (ARN) is specified in the request.
    public func describeCluster(_ input: DescribeClusterRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterResponse> {
        return client.send(operation: "DescribeCluster", path: "/v1/clusters/{clusterArn}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a description of the cluster operation specified by the ARN.
    public func describeClusterOperation(_ input: DescribeClusterOperationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterOperationResponse> {
        return client.send(operation: "DescribeClusterOperation", path: "/v1/operations/{clusterOperationArn}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a description of this MSK configuration.
    public func describeConfiguration(_ input: DescribeConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConfigurationResponse> {
        return client.send(operation: "DescribeConfiguration", path: "/v1/configurations/{arn}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a description of this revision of the configuration.
    public func describeConfigurationRevision(_ input: DescribeConfigurationRevisionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConfigurationRevisionResponse> {
        return client.send(operation: "DescribeConfigurationRevision", path: "/v1/configurations/{arn}/revisions/{revision}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  A list of brokers that a client application can use to bootstrap.
    public func getBootstrapBrokers(_ input: GetBootstrapBrokersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetBootstrapBrokersResponse> {
        return client.send(operation: "GetBootstrapBrokers", path: "/v1/clusters/{clusterArn}/bootstrap-brokers", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a list of all the operations that have been performed on the specified MSK cluster.
    public func listClusterOperations(_ input: ListClusterOperationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListClusterOperationsResponse> {
        return client.send(operation: "ListClusterOperations", path: "/v1/clusters/{clusterArn}/operations", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a list of all the MSK clusters in the current Region.
    public func listClusters(_ input: ListClustersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListClustersResponse> {
        return client.send(operation: "ListClusters", path: "/v1/clusters", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a list of all the revisions of an MSK configuration.
    public func listConfigurationRevisions(_ input: ListConfigurationRevisionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListConfigurationRevisionsResponse> {
        return client.send(operation: "ListConfigurationRevisions", path: "/v1/configurations/{arn}/revisions", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a list of all the MSK configurations in this Region.
    public func listConfigurations(_ input: ListConfigurationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListConfigurationsResponse> {
        return client.send(operation: "ListConfigurations", path: "/v1/configurations", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a list of Kafka versions.
    public func listKafkaVersions(_ input: ListKafkaVersionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListKafkaVersionsResponse> {
        return client.send(operation: "ListKafkaVersions", path: "/v1/kafka-versions", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a list of the broker nodes in the cluster.
    public func listNodes(_ input: ListNodesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListNodesResponse> {
        return client.send(operation: "ListNodes", path: "/v1/clusters/{clusterArn}/nodes", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a list of the tags associated with the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/v1/tags/{resourceArn}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Adds tags to the specified MSK resource.
    @discardableResult public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "TagResource", path: "/v1/tags/{resourceArn}", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes the tags associated with the keys that are provided in the query.
    @discardableResult public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "UntagResource", path: "/v1/tags/{resourceArn}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Updates the number of broker nodes in the cluster. You can use this operation to increase the number of brokers in an existing cluster. You can't decrease the number of brokers.
    public func updateBrokerCount(_ input: UpdateBrokerCountRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateBrokerCountResponse> {
        return client.send(operation: "UpdateBrokerCount", path: "/v1/clusters/{clusterArn}/nodes/count", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Updates the EBS storage associated with MSK brokers.
    public func updateBrokerStorage(_ input: UpdateBrokerStorageRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateBrokerStorageResponse> {
        return client.send(operation: "UpdateBrokerStorage", path: "/v1/clusters/{clusterArn}/nodes/storage", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Updates the cluster with the configuration that is specified in the request body.
    public func updateClusterConfiguration(_ input: UpdateClusterConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateClusterConfigurationResponse> {
        return client.send(operation: "UpdateClusterConfiguration", path: "/v1/clusters/{clusterArn}/configuration", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Updates the monitoring settings for the cluster. You can use this operation to specify which Apache Kafka metrics you want Amazon MSK to send to Amazon CloudWatch. You can also specify settings for open monitoring with Prometheus.
    public func updateMonitoring(_ input: UpdateMonitoringRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateMonitoringResponse> {
        return client.send(operation: "UpdateMonitoring", path: "/v1/clusters/{clusterArn}/monitoring", httpMethod: "PUT", input: input, on: eventLoop)
    }
}
