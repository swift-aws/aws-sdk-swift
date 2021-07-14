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

import SotoCore

// MARK: Paginators

extension GreengrassV2 {
    ///  Retrieves a paginated list of all versions for a component.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listComponentVersionsPaginator<Result>(
        _ input: ListComponentVersionsRequest,
        _ initialValue: Result,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListComponentVersionsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listComponentVersions,
            inputKey: \ListComponentVersionsRequest.nextToken,
            outputKey: \ListComponentVersionsResponse.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listComponentVersionsPaginator(
        _ input: ListComponentVersionsRequest,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListComponentVersionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listComponentVersions,
            inputKey: \ListComponentVersionsRequest.nextToken,
            outputKey: \ListComponentVersionsResponse.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves a paginated list of component summaries. This list includes components that you have permission to view.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listComponentsPaginator<Result>(
        _ input: ListComponentsRequest,
        _ initialValue: Result,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListComponentsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listComponents,
            inputKey: \ListComponentsRequest.nextToken,
            outputKey: \ListComponentsResponse.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listComponentsPaginator(
        _ input: ListComponentsRequest,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListComponentsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listComponents,
            inputKey: \ListComponentsRequest.nextToken,
            outputKey: \ListComponentsResponse.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves a paginated list of AWS IoT Greengrass core devices.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listCoreDevicesPaginator<Result>(
        _ input: ListCoreDevicesRequest,
        _ initialValue: Result,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListCoreDevicesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listCoreDevices,
            inputKey: \ListCoreDevicesRequest.nextToken,
            outputKey: \ListCoreDevicesResponse.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listCoreDevicesPaginator(
        _ input: ListCoreDevicesRequest,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListCoreDevicesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listCoreDevices,
            inputKey: \ListCoreDevicesRequest.nextToken,
            outputKey: \ListCoreDevicesResponse.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves a paginated list of deployments.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listDeploymentsPaginator<Result>(
        _ input: ListDeploymentsRequest,
        _ initialValue: Result,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListDeploymentsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listDeployments,
            inputKey: \ListDeploymentsRequest.nextToken,
            outputKey: \ListDeploymentsResponse.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listDeploymentsPaginator(
        _ input: ListDeploymentsRequest,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListDeploymentsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDeployments,
            inputKey: \ListDeploymentsRequest.nextToken,
            outputKey: \ListDeploymentsResponse.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves a paginated list of deployment jobs that AWS IoT Greengrass sends to AWS IoT Greengrass core devices.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listEffectiveDeploymentsPaginator<Result>(
        _ input: ListEffectiveDeploymentsRequest,
        _ initialValue: Result,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListEffectiveDeploymentsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listEffectiveDeployments,
            inputKey: \ListEffectiveDeploymentsRequest.nextToken,
            outputKey: \ListEffectiveDeploymentsResponse.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listEffectiveDeploymentsPaginator(
        _ input: ListEffectiveDeploymentsRequest,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListEffectiveDeploymentsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listEffectiveDeployments,
            inputKey: \ListEffectiveDeploymentsRequest.nextToken,
            outputKey: \ListEffectiveDeploymentsResponse.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves a paginated list of the components that a AWS IoT Greengrass core device runs.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listInstalledComponentsPaginator<Result>(
        _ input: ListInstalledComponentsRequest,
        _ initialValue: Result,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListInstalledComponentsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listInstalledComponents,
            inputKey: \ListInstalledComponentsRequest.nextToken,
            outputKey: \ListInstalledComponentsResponse.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - context: LoggingContext used for instrumentation
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listInstalledComponentsPaginator(
        _ input: ListInstalledComponentsRequest,
        context: LoggingContext,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListInstalledComponentsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listInstalledComponents,
            inputKey: \ListInstalledComponentsRequest.nextToken,
            outputKey: \ListInstalledComponentsResponse.nextToken,
            context: context,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension GreengrassV2.ListComponentVersionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GreengrassV2.ListComponentVersionsRequest {
        return .init(
            arn: self.arn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension GreengrassV2.ListComponentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GreengrassV2.ListComponentsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            scope: self.scope
        )
    }
}

extension GreengrassV2.ListCoreDevicesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GreengrassV2.ListCoreDevicesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            status: self.status,
            thingGroupArn: self.thingGroupArn
        )
    }
}

extension GreengrassV2.ListDeploymentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GreengrassV2.ListDeploymentsRequest {
        return .init(
            historyFilter: self.historyFilter,
            maxResults: self.maxResults,
            nextToken: token,
            targetArn: self.targetArn
        )
    }
}

extension GreengrassV2.ListEffectiveDeploymentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GreengrassV2.ListEffectiveDeploymentsRequest {
        return .init(
            coreDeviceThingName: self.coreDeviceThingName,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension GreengrassV2.ListInstalledComponentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GreengrassV2.ListInstalledComponentsRequest {
        return .init(
            coreDeviceThingName: self.coreDeviceThingName,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
