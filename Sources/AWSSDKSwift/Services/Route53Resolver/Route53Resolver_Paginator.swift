// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension Route53Resolver {

    ///  Gets the IP addresses for a specified Resolver endpoint.
    public func listResolverEndpointIpAddressesPaginator(_ input: ListResolverEndpointIpAddressesRequest, onPage: @escaping (ListResolverEndpointIpAddressesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listResolverEndpointIpAddresses, tokenKey: \ListResolverEndpointIpAddressesResponse.nextToken, onPage: onPage)
    }

    ///  Lists all the Resolver endpoints that were created using the current AWS account.
    public func listResolverEndpointsPaginator(_ input: ListResolverEndpointsRequest, onPage: @escaping (ListResolverEndpointsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listResolverEndpoints, tokenKey: \ListResolverEndpointsResponse.nextToken, onPage: onPage)
    }

    ///  Lists information about associations between Amazon VPCs and query logging configurations.
    public func listResolverQueryLogConfigAssociationsPaginator(_ input: ListResolverQueryLogConfigAssociationsRequest, onPage: @escaping (ListResolverQueryLogConfigAssociationsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listResolverQueryLogConfigAssociations, tokenKey: \ListResolverQueryLogConfigAssociationsResponse.nextToken, onPage: onPage)
    }

    ///  Lists information about the specified query logging configurations. Each configuration defines where you want Resolver to save DNS query logs and specifies the VPCs that you want to log queries for.
    public func listResolverQueryLogConfigsPaginator(_ input: ListResolverQueryLogConfigsRequest, onPage: @escaping (ListResolverQueryLogConfigsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listResolverQueryLogConfigs, tokenKey: \ListResolverQueryLogConfigsResponse.nextToken, onPage: onPage)
    }

    ///  Lists the associations that were created between Resolver rules and VPCs using the current AWS account.
    public func listResolverRuleAssociationsPaginator(_ input: ListResolverRuleAssociationsRequest, onPage: @escaping (ListResolverRuleAssociationsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listResolverRuleAssociations, tokenKey: \ListResolverRuleAssociationsResponse.nextToken, onPage: onPage)
    }

    ///  Lists the Resolver rules that were created using the current AWS account.
    public func listResolverRulesPaginator(_ input: ListResolverRulesRequest, onPage: @escaping (ListResolverRulesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listResolverRules, tokenKey: \ListResolverRulesResponse.nextToken, onPage: onPage)
    }

    ///  Lists the tags that you associated with the specified resource.
    public func listTagsForResourcePaginator(_ input: ListTagsForResourceRequest, onPage: @escaping (ListTagsForResourceResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTagsForResource, tokenKey: \ListTagsForResourceResponse.nextToken, onPage: onPage)
    }

}

extension Route53Resolver.ListResolverEndpointIpAddressesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Route53Resolver.ListResolverEndpointIpAddressesRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            resolverEndpointId: self.resolverEndpointId
        )

    }
}

extension Route53Resolver.ListResolverEndpointsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Route53Resolver.ListResolverEndpointsRequest {
        return .init(
            filters: self.filters, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension Route53Resolver.ListResolverQueryLogConfigAssociationsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Route53Resolver.ListResolverQueryLogConfigAssociationsRequest {
        return .init(
            filters: self.filters, 
            maxResults: self.maxResults, 
            nextToken: token, 
            sortBy: self.sortBy, 
            sortOrder: self.sortOrder
        )

    }
}

extension Route53Resolver.ListResolverQueryLogConfigsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Route53Resolver.ListResolverQueryLogConfigsRequest {
        return .init(
            filters: self.filters, 
            maxResults: self.maxResults, 
            nextToken: token, 
            sortBy: self.sortBy, 
            sortOrder: self.sortOrder
        )

    }
}

extension Route53Resolver.ListResolverRuleAssociationsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Route53Resolver.ListResolverRuleAssociationsRequest {
        return .init(
            filters: self.filters, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension Route53Resolver.ListResolverRulesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Route53Resolver.ListResolverRulesRequest {
        return .init(
            filters: self.filters, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension Route53Resolver.ListTagsForResourceRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Route53Resolver.ListTagsForResourceRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            resourceArn: self.resourceArn
        )

    }
}


