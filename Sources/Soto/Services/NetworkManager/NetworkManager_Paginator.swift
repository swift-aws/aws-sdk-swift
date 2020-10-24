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

import SotoCore

// MARK: Paginators

extension NetworkManager {
    ///  Describes one or more global networks. By default, all global networks are described. To describe the objects in your global network, you must use the appropriate Get* action. For example, to list the transit gateways in your global network, use GetTransitGatewayRegistrations.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func describeGlobalNetworksPaginator<Result>(
        _ input: DescribeGlobalNetworksRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, DescribeGlobalNetworksResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeGlobalNetworks,
            tokenKey: \DescribeGlobalNetworksResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func describeGlobalNetworksPaginator(
        _ input: DescribeGlobalNetworksRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeGlobalNetworksResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeGlobalNetworks,
            tokenKey: \DescribeGlobalNetworksResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets the association information for customer gateways that are associated with devices and links in your global network.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func getCustomerGatewayAssociationsPaginator<Result>(
        _ input: GetCustomerGatewayAssociationsRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, GetCustomerGatewayAssociationsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getCustomerGatewayAssociations,
            tokenKey: \GetCustomerGatewayAssociationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func getCustomerGatewayAssociationsPaginator(
        _ input: GetCustomerGatewayAssociationsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetCustomerGatewayAssociationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getCustomerGatewayAssociations,
            tokenKey: \GetCustomerGatewayAssociationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets information about one or more of your devices in a global network.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func getDevicesPaginator<Result>(
        _ input: GetDevicesRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, GetDevicesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getDevices,
            tokenKey: \GetDevicesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func getDevicesPaginator(
        _ input: GetDevicesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetDevicesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getDevices,
            tokenKey: \GetDevicesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets the link associations for a device or a link. Either the device ID or the link ID must be specified.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func getLinkAssociationsPaginator<Result>(
        _ input: GetLinkAssociationsRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, GetLinkAssociationsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getLinkAssociations,
            tokenKey: \GetLinkAssociationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func getLinkAssociationsPaginator(
        _ input: GetLinkAssociationsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetLinkAssociationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getLinkAssociations,
            tokenKey: \GetLinkAssociationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets information about one or more links in a specified global network. If you specify the site ID, you cannot specify the type or provider in the same request. You can specify the type and provider in the same request.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func getLinksPaginator<Result>(
        _ input: GetLinksRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, GetLinksResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getLinks,
            tokenKey: \GetLinksResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func getLinksPaginator(
        _ input: GetLinksRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetLinksResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getLinks,
            tokenKey: \GetLinksResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets information about one or more of your sites in a global network.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func getSitesPaginator<Result>(
        _ input: GetSitesRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, GetSitesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getSites,
            tokenKey: \GetSitesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func getSitesPaginator(
        _ input: GetSitesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetSitesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getSites,
            tokenKey: \GetSitesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets information about the transit gateway registrations in a specified global network.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func getTransitGatewayRegistrationsPaginator<Result>(
        _ input: GetTransitGatewayRegistrationsRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, GetTransitGatewayRegistrationsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getTransitGatewayRegistrations,
            tokenKey: \GetTransitGatewayRegistrationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func getTransitGatewayRegistrationsPaginator(
        _ input: GetTransitGatewayRegistrationsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetTransitGatewayRegistrationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getTransitGatewayRegistrations,
            tokenKey: \GetTransitGatewayRegistrationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension NetworkManager.DescribeGlobalNetworksRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> NetworkManager.DescribeGlobalNetworksRequest {
        return .init(
            globalNetworkIds: self.globalNetworkIds,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension NetworkManager.GetCustomerGatewayAssociationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> NetworkManager.GetCustomerGatewayAssociationsRequest {
        return .init(
            customerGatewayArns: self.customerGatewayArns,
            globalNetworkId: self.globalNetworkId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension NetworkManager.GetDevicesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> NetworkManager.GetDevicesRequest {
        return .init(
            deviceIds: self.deviceIds,
            globalNetworkId: self.globalNetworkId,
            maxResults: self.maxResults,
            nextToken: token,
            siteId: self.siteId
        )
    }
}

extension NetworkManager.GetLinkAssociationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> NetworkManager.GetLinkAssociationsRequest {
        return .init(
            deviceId: self.deviceId,
            globalNetworkId: self.globalNetworkId,
            linkId: self.linkId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension NetworkManager.GetLinksRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> NetworkManager.GetLinksRequest {
        return .init(
            globalNetworkId: self.globalNetworkId,
            linkIds: self.linkIds,
            maxResults: self.maxResults,
            nextToken: token,
            provider: self.provider,
            siteId: self.siteId,
            type: self.type
        )
    }
}

extension NetworkManager.GetSitesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> NetworkManager.GetSitesRequest {
        return .init(
            globalNetworkId: self.globalNetworkId,
            maxResults: self.maxResults,
            nextToken: token,
            siteIds: self.siteIds
        )
    }
}

extension NetworkManager.GetTransitGatewayRegistrationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> NetworkManager.GetTransitGatewayRegistrationsRequest {
        return .init(
            globalNetworkId: self.globalNetworkId,
            maxResults: self.maxResults,
            nextToken: token,
            transitGatewayArns: self.transitGatewayArns
        )
    }
}
