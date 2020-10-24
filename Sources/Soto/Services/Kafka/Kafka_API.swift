//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

@_exported import SotoCore

/*
 Client object for interacting with AWS Kafka service.

 The operations for managing an Amazon MSK cluster.
 */
public struct Kafka: AWSService {
    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Kafka client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "kafka",
            serviceProtocol: .restjson,
            apiVersion: "2018-11-14",
            endpoint: endpoint,
            errorType: KafkaErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    ///  Associates one or more Scram Secrets with an Amazon MSK cluster.
    public func batchAssociateScramSecret(_ input: BatchAssociateScramSecretRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<BatchAssociateScramSecretResponse> {
        return self.client.execute(operation: "BatchAssociateScramSecret", path: "/v1/clusters/{clusterArn}/scram-secrets", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Disassociates one or more Scram Secrets from an Amazon MSK cluster.
    public func batchDisassociateScramSecret(_ input: BatchDisassociateScramSecretRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<BatchDisassociateScramSecretResponse> {
        return self.client.execute(operation: "BatchDisassociateScramSecret", path: "/v1/clusters/{clusterArn}/scram-secrets", httpMethod: .PATCH, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a new MSK cluster.
    public func createCluster(_ input: CreateClusterRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateClusterResponse> {
        return self.client.execute(operation: "CreateCluster", path: "/v1/clusters", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a new MSK configuration.
    public func createConfiguration(_ input: CreateConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateConfigurationResponse> {
        return self.client.execute(operation: "CreateConfiguration", path: "/v1/configurations", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes the MSK cluster specified by the Amazon Resource Name (ARN) in the request.
    public func deleteCluster(_ input: DeleteClusterRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteClusterResponse> {
        return self.client.execute(operation: "DeleteCluster", path: "/v1/clusters/{clusterArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes the specified MSK configuration. The configuration must be in the ACTIVE or DELETE_FAILED state.
    public func deleteConfiguration(_ input: DeleteConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteConfigurationResponse> {
        return self.client.execute(operation: "DeleteConfiguration", path: "/v1/configurations/{arn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a description of the MSK cluster whose Amazon Resource Name (ARN) is specified in the request.
    public func describeCluster(_ input: DescribeClusterRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeClusterResponse> {
        return self.client.execute(operation: "DescribeCluster", path: "/v1/clusters/{clusterArn}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a description of the cluster operation specified by the ARN.
    public func describeClusterOperation(_ input: DescribeClusterOperationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeClusterOperationResponse> {
        return self.client.execute(operation: "DescribeClusterOperation", path: "/v1/operations/{clusterOperationArn}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a description of this MSK configuration.
    public func describeConfiguration(_ input: DescribeConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeConfigurationResponse> {
        return self.client.execute(operation: "DescribeConfiguration", path: "/v1/configurations/{arn}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a description of this revision of the configuration.
    public func describeConfigurationRevision(_ input: DescribeConfigurationRevisionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeConfigurationRevisionResponse> {
        return self.client.execute(operation: "DescribeConfigurationRevision", path: "/v1/configurations/{arn}/revisions/{revision}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  A list of brokers that a client application can use to bootstrap.
    public func getBootstrapBrokers(_ input: GetBootstrapBrokersRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetBootstrapBrokersResponse> {
        return self.client.execute(operation: "GetBootstrapBrokers", path: "/v1/clusters/{clusterArn}/bootstrap-brokers", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets the Apache Kafka versions to which you can update the MSK cluster.
    public func getCompatibleKafkaVersions(_ input: GetCompatibleKafkaVersionsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetCompatibleKafkaVersionsResponse> {
        return self.client.execute(operation: "GetCompatibleKafkaVersions", path: "/v1/compatible-kafka-versions", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of all the operations that have been performed on the specified MSK cluster.
    public func listClusterOperations(_ input: ListClusterOperationsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListClusterOperationsResponse> {
        return self.client.execute(operation: "ListClusterOperations", path: "/v1/clusters/{clusterArn}/operations", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of all the MSK clusters in the current Region.
    public func listClusters(_ input: ListClustersRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListClustersResponse> {
        return self.client.execute(operation: "ListClusters", path: "/v1/clusters", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of all the revisions of an MSK configuration.
    public func listConfigurationRevisions(_ input: ListConfigurationRevisionsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListConfigurationRevisionsResponse> {
        return self.client.execute(operation: "ListConfigurationRevisions", path: "/v1/configurations/{arn}/revisions", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of all the MSK configurations in this Region.
    public func listConfigurations(_ input: ListConfigurationsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListConfigurationsResponse> {
        return self.client.execute(operation: "ListConfigurations", path: "/v1/configurations", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of Kafka versions.
    public func listKafkaVersions(_ input: ListKafkaVersionsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListKafkaVersionsResponse> {
        return self.client.execute(operation: "ListKafkaVersions", path: "/v1/kafka-versions", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of the broker nodes in the cluster.
    public func listNodes(_ input: ListNodesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListNodesResponse> {
        return self.client.execute(operation: "ListNodes", path: "/v1/clusters/{clusterArn}/nodes", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of the Scram Secrets associated with an Amazon MSK cluster.
    public func listScramSecrets(_ input: ListScramSecretsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListScramSecretsResponse> {
        return self.client.execute(operation: "ListScramSecrets", path: "/v1/clusters/{clusterArn}/scram-secrets", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of the tags associated with the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/v1/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Executes a reboot on a broker.
    public func rebootBroker(_ input: RebootBrokerRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<RebootBrokerResponse> {
        return self.client.execute(operation: "RebootBroker", path: "/v1/clusters/{clusterArn}/reboot-broker", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Adds tags to the specified MSK resource.
    @discardableResult public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "TagResource", path: "/v1/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Removes the tags associated with the keys that are provided in the query.
    @discardableResult public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "UntagResource", path: "/v1/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates the number of broker nodes in the cluster. You can use this operation to increase the number of brokers in an existing cluster. You can't decrease the number of brokers.
    public func updateBrokerCount(_ input: UpdateBrokerCountRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateBrokerCountResponse> {
        return self.client.execute(operation: "UpdateBrokerCount", path: "/v1/clusters/{clusterArn}/nodes/count", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates the EBS storage associated with MSK brokers.
    public func updateBrokerStorage(_ input: UpdateBrokerStorageRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateBrokerStorageResponse> {
        return self.client.execute(operation: "UpdateBrokerStorage", path: "/v1/clusters/{clusterArn}/nodes/storage", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates the cluster with the configuration that is specified in the request body.
    public func updateClusterConfiguration(_ input: UpdateClusterConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateClusterConfigurationResponse> {
        return self.client.execute(operation: "UpdateClusterConfiguration", path: "/v1/clusters/{clusterArn}/configuration", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates the Apache Kafka version for the cluster.
    public func updateClusterKafkaVersion(_ input: UpdateClusterKafkaVersionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateClusterKafkaVersionResponse> {
        return self.client.execute(operation: "UpdateClusterKafkaVersion", path: "/v1/clusters/{clusterArn}/version", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates an existing MSK configuration. The configuration must be in the Active state.
    public func updateConfiguration(_ input: UpdateConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateConfigurationResponse> {
        return self.client.execute(operation: "UpdateConfiguration", path: "/v1/configurations/{arn}", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates the monitoring settings for the cluster. You can use this operation to specify which Apache Kafka metrics you want Amazon MSK to send to Amazon CloudWatch. You can also specify settings for open monitoring with Prometheus.
    public func updateMonitoring(_ input: UpdateMonitoringRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateMonitoringResponse> {
        return self.client.execute(operation: "UpdateMonitoring", path: "/v1/clusters/{clusterArn}/monitoring", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }
}

extension Kafka {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Kafka, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
