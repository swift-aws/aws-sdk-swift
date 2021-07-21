//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

#if compiler(>=5.5)

import SotoCore

// MARK: Paginators

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension EMR {
    ///  Provides information about the bootstrap actions associated with a cluster.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listBootstrapActionsPaginator(
        _ input: ListBootstrapActionsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListBootstrapActionsInput, ListBootstrapActionsOutput> {
        return .init(
            input: input,
            command: listBootstrapActions,
            inputKey: \ListBootstrapActionsInput.marker,
            outputKey: \ListBootstrapActionsOutput.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Provides the status of all clusters visible to this AWS account. Allows you to filter the list of clusters based on certain criteria; for example, filtering by cluster creation date and time or by status. This call returns a maximum of 50 clusters per call, but returns a marker to track the paging of the cluster list across multiple ListClusters calls.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listClustersPaginator(
        _ input: ListClustersInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListClustersInput, ListClustersOutput> {
        return .init(
            input: input,
            command: listClusters,
            inputKey: \ListClustersInput.marker,
            outputKey: \ListClustersOutput.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all available details about the instance fleets in a cluster.  The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listInstanceFleetsPaginator(
        _ input: ListInstanceFleetsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListInstanceFleetsInput, ListInstanceFleetsOutput> {
        return .init(
            input: input,
            command: listInstanceFleets,
            inputKey: \ListInstanceFleetsInput.marker,
            outputKey: \ListInstanceFleetsOutput.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Provides all available details about the instance groups in a cluster.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listInstanceGroupsPaginator(
        _ input: ListInstanceGroupsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListInstanceGroupsInput, ListInstanceGroupsOutput> {
        return .init(
            input: input,
            command: listInstanceGroups,
            inputKey: \ListInstanceGroupsInput.marker,
            outputKey: \ListInstanceGroupsOutput.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Provides information for all active EC2 instances and EC2 instances terminated in the last 30 days, up to a maximum of 2,000. EC2 instances in any of the following states are considered active: AWAITING_FULFILLMENT, PROVISIONING, BOOTSTRAPPING, RUNNING.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listInstancesPaginator(
        _ input: ListInstancesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListInstancesInput, ListInstancesOutput> {
        return .init(
            input: input,
            command: listInstances,
            inputKey: \ListInstancesInput.marker,
            outputKey: \ListInstancesOutput.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Provides summaries of all notebook executions. You can filter the list based on multiple criteria such as status, time range, and editor id. Returns a maximum of 50 notebook executions and a marker to track the paging of a longer notebook execution list across multiple ListNotebookExecution calls.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listNotebookExecutionsPaginator(
        _ input: ListNotebookExecutionsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListNotebookExecutionsInput, ListNotebookExecutionsOutput> {
        return .init(
            input: input,
            command: listNotebookExecutions,
            inputKey: \ListNotebookExecutionsInput.marker,
            outputKey: \ListNotebookExecutionsOutput.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all the security configurations visible to this account, providing their creation dates and times, and their names. This call returns a maximum of 50 clusters per call, but returns a marker to track the paging of the cluster list across multiple ListSecurityConfigurations calls.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSecurityConfigurationsPaginator(
        _ input: ListSecurityConfigurationsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSecurityConfigurationsInput, ListSecurityConfigurationsOutput> {
        return .init(
            input: input,
            command: listSecurityConfigurations,
            inputKey: \ListSecurityConfigurationsInput.marker,
            outputKey: \ListSecurityConfigurationsOutput.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Provides a list of steps for the cluster in reverse order unless you specify stepIds with the request of filter by StepStates. You can specify a maximum of 10 stepIDs.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listStepsPaginator(
        _ input: ListStepsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListStepsInput, ListStepsOutput> {
        return .init(
            input: input,
            command: listSteps,
            inputKey: \ListStepsInput.marker,
            outputKey: \ListStepsOutput.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of all user or group session mappings for the Amazon EMR Studio specified by StudioId.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listStudioSessionMappingsPaginator(
        _ input: ListStudioSessionMappingsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListStudioSessionMappingsInput, ListStudioSessionMappingsOutput> {
        return .init(
            input: input,
            command: listStudioSessionMappings,
            inputKey: \ListStudioSessionMappingsInput.marker,
            outputKey: \ListStudioSessionMappingsOutput.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of all Amazon EMR Studios associated with the AWS account. The list includes details such as ID, Studio Access URL, and creation time for each Studio.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listStudiosPaginator(
        _ input: ListStudiosInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListStudiosInput, ListStudiosOutput> {
        return .init(
            input: input,
            command: listStudios,
            inputKey: \ListStudiosInput.marker,
            outputKey: \ListStudiosOutput.marker,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5)
