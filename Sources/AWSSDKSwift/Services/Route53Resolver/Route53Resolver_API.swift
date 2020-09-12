// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS Route53Resolver service.

When you create a VPC using Amazon VPC, you automatically get DNS resolution within the VPC from Route 53 Resolver. By default, Resolver answers DNS queries for VPC domain names such as domain names for EC2 instances or ELB load balancers. Resolver performs recursive lookups against public name servers for all other domain names. You can also configure DNS resolution between your VPC and your network over a Direct Connect or VPN connection:  Forward DNS queries from resolvers on your network to Route 53 Resolver  DNS resolvers on your network can forward DNS queries to Resolver in a specified VPC. This allows your DNS resolvers to easily resolve domain names for AWS resources such as EC2 instances or records in a Route 53 private hosted zone. For more information, see How DNS Resolvers on Your Network Forward DNS Queries to Route 53 Resolver in the Amazon Route 53 Developer Guide.  Conditionally forward queries from a VPC to resolvers on your network  You can configure Resolver to forward queries that it receives from EC2 instances in your VPCs to DNS resolvers on your network. To forward selected queries, you create Resolver rules that specify the domain names for the DNS queries that you want to forward (such as example.com), and the IP addresses of the DNS resolvers on your network that you want to forward the queries to. If a query matches multiple rules (example.com, acme.example.com), Resolver chooses the rule with the most specific match (acme.example.com) and forwards the query to the IP addresses that you specified in that rule. For more information, see How Route 53 Resolver Forwards DNS Queries from Your VPCs to Your Network in the Amazon Route 53 Developer Guide. Like Amazon VPC, Resolver is regional. In each region where you have VPCs, you can choose whether to forward queries from your VPCs to your network (outbound queries), from your network to your VPCs (inbound queries), or both.
*/
public struct Route53Resolver {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the Route53Resolver client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - eventLoopGroupProvider: EventLoopGroup to use. Use `useAWSClientShared` if the client shall manage its own EventLoopGroup.
    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider = .useAWSClientShared) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "Route53Resolver",
            service: "route53resolver",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-04-01",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [Route53ResolverErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }
    
    //MARK: API Calls

    ///  Adds IP addresses to an inbound or an outbound Resolver endpoint. If you want to add more than one IP address, submit one AssociateResolverEndpointIpAddress request for each IP address. To remove an IP address from an endpoint, see DisassociateResolverEndpointIpAddress. 
    public func associateResolverEndpointIpAddress(_ input: AssociateResolverEndpointIpAddressRequest) -> EventLoopFuture<AssociateResolverEndpointIpAddressResponse> {
        return client.send(operation: "AssociateResolverEndpointIpAddress", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associates an Amazon VPC with a specified query logging configuration. Route 53 Resolver logs DNS queries that originate in all of the Amazon VPCs that are associated with a specified query logging configuration. To associate more than one VPC with a configuration, submit one AssociateResolverQueryLogConfig request for each VPC.  The VPCs that you associate with a query logging configuration must be in the same Region as the configuration.  To remove a VPC from a query logging configuration, see DisassociateResolverQueryLogConfig. 
    public func associateResolverQueryLogConfig(_ input: AssociateResolverQueryLogConfigRequest) -> EventLoopFuture<AssociateResolverQueryLogConfigResponse> {
        return client.send(operation: "AssociateResolverQueryLogConfig", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associates a Resolver rule with a VPC. When you associate a rule with a VPC, Resolver forwards all DNS queries for the domain name that is specified in the rule and that originate in the VPC. The queries are forwarded to the IP addresses for the DNS resolvers that are specified in the rule. For more information about rules, see CreateResolverRule. 
    public func associateResolverRule(_ input: AssociateResolverRuleRequest) -> EventLoopFuture<AssociateResolverRuleResponse> {
        return client.send(operation: "AssociateResolverRule", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a Resolver endpoint. There are two types of Resolver endpoints, inbound and outbound:   An inbound Resolver endpoint forwards DNS queries to the DNS service for a VPC from your network.   An outbound Resolver endpoint forwards DNS queries from the DNS service for a VPC to your network.  
    public func createResolverEndpoint(_ input: CreateResolverEndpointRequest) -> EventLoopFuture<CreateResolverEndpointResponse> {
        return client.send(operation: "CreateResolverEndpoint", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a Resolver query logging configuration, which defines where you want Resolver to save DNS query logs that originate in your VPCs. Resolver can log queries only for VPCs that are in the same Region as the query logging configuration. To specify which VPCs you want to log queries for, you use AssociateResolverQueryLogConfig. For more information, see AssociateResolverQueryLogConfig.  You can optionally use AWS Resource Access Manager (AWS RAM) to share a query logging configuration with other AWS accounts. The other accounts can then associate VPCs with the configuration. The query logs that Resolver creates for a configuration include all DNS queries that originate in all VPCs that are associated with the configuration.
    public func createResolverQueryLogConfig(_ input: CreateResolverQueryLogConfigRequest) -> EventLoopFuture<CreateResolverQueryLogConfigResponse> {
        return client.send(operation: "CreateResolverQueryLogConfig", path: "/", httpMethod: "POST", input: input)
    }

    ///  For DNS queries that originate in your VPCs, specifies which Resolver endpoint the queries pass through, one domain name that you want to forward to your network, and the IP addresses of the DNS resolvers in your network.
    public func createResolverRule(_ input: CreateResolverRuleRequest) -> EventLoopFuture<CreateResolverRuleResponse> {
        return client.send(operation: "CreateResolverRule", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a Resolver endpoint. The effect of deleting a Resolver endpoint depends on whether it's an inbound or an outbound Resolver endpoint:    Inbound: DNS queries from your network are no longer routed to the DNS service for the specified VPC.    Outbound: DNS queries from a VPC are no longer routed to your network.  
    public func deleteResolverEndpoint(_ input: DeleteResolverEndpointRequest) -> EventLoopFuture<DeleteResolverEndpointResponse> {
        return client.send(operation: "DeleteResolverEndpoint", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a query logging configuration. When you delete a configuration, Resolver stops logging DNS queries for all of the Amazon VPCs that are associated with the configuration. This also applies if the query logging configuration is shared with other AWS accounts, and the other accounts have associated VPCs with the shared configuration. Before you can delete a query logging configuration, you must first disassociate all VPCs from the configuration. See DisassociateResolverQueryLogConfig. If you used Resource Access Manager (RAM) to share a query logging configuration with other accounts, you must stop sharing the configuration before you can delete a configuration. The accounts that you shared the configuration with can first disassociate VPCs that they associated with the configuration, but that's not necessary. If you stop sharing the configuration, those VPCs are automatically disassociated from the configuration.
    public func deleteResolverQueryLogConfig(_ input: DeleteResolverQueryLogConfigRequest) -> EventLoopFuture<DeleteResolverQueryLogConfigResponse> {
        return client.send(operation: "DeleteResolverQueryLogConfig", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a Resolver rule. Before you can delete a Resolver rule, you must disassociate it from all the VPCs that you associated the Resolver rule with. For more information, see DisassociateResolverRule.
    public func deleteResolverRule(_ input: DeleteResolverRuleRequest) -> EventLoopFuture<DeleteResolverRuleResponse> {
        return client.send(operation: "DeleteResolverRule", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes IP addresses from an inbound or an outbound Resolver endpoint. If you want to remove more than one IP address, submit one DisassociateResolverEndpointIpAddress request for each IP address. To add an IP address to an endpoint, see AssociateResolverEndpointIpAddress. 
    public func disassociateResolverEndpointIpAddress(_ input: DisassociateResolverEndpointIpAddressRequest) -> EventLoopFuture<DisassociateResolverEndpointIpAddressResponse> {
        return client.send(operation: "DisassociateResolverEndpointIpAddress", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disassociates a VPC from a query logging configuration.  Before you can delete a query logging configuration, you must first disassociate all VPCs from the configuration. If you used Resource Access Manager (RAM) to share a query logging configuration with other accounts, VPCs can be disassociated from the configuration in the following ways:   The accounts that you shared the configuration with can disassociate VPCs from the configuration.   You can stop sharing the configuration.   
    public func disassociateResolverQueryLogConfig(_ input: DisassociateResolverQueryLogConfigRequest) -> EventLoopFuture<DisassociateResolverQueryLogConfigResponse> {
        return client.send(operation: "DisassociateResolverQueryLogConfig", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes the association between a specified Resolver rule and a specified VPC.  If you disassociate a Resolver rule from a VPC, Resolver stops forwarding DNS queries for the domain name that you specified in the Resolver rule.  
    public func disassociateResolverRule(_ input: DisassociateResolverRuleRequest) -> EventLoopFuture<DisassociateResolverRuleResponse> {
        return client.send(operation: "DisassociateResolverRule", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about a specified Resolver endpoint, such as whether it's an inbound or an outbound Resolver endpoint, and the current status of the endpoint.
    public func getResolverEndpoint(_ input: GetResolverEndpointRequest) -> EventLoopFuture<GetResolverEndpointResponse> {
        return client.send(operation: "GetResolverEndpoint", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about a specified Resolver query logging configuration, such as the number of VPCs that the configuration is logging queries for and the location that logs are sent to. 
    public func getResolverQueryLogConfig(_ input: GetResolverQueryLogConfigRequest) -> EventLoopFuture<GetResolverQueryLogConfigResponse> {
        return client.send(operation: "GetResolverQueryLogConfig", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about a specified association between a Resolver query logging configuration and an Amazon VPC. When you associate a VPC with a query logging configuration, Resolver logs DNS queries that originate in that VPC.
    public func getResolverQueryLogConfigAssociation(_ input: GetResolverQueryLogConfigAssociationRequest) -> EventLoopFuture<GetResolverQueryLogConfigAssociationResponse> {
        return client.send(operation: "GetResolverQueryLogConfigAssociation", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about a query logging policy. A query logging policy specifies the Resolver query logging operations and resources that you want to allow another AWS account to be able to use.
    public func getResolverQueryLogConfigPolicy(_ input: GetResolverQueryLogConfigPolicyRequest) -> EventLoopFuture<GetResolverQueryLogConfigPolicyResponse> {
        return client.send(operation: "GetResolverQueryLogConfigPolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about a specified Resolver rule, such as the domain name that the rule forwards DNS queries for and the ID of the outbound Resolver endpoint that the rule is associated with.
    public func getResolverRule(_ input: GetResolverRuleRequest) -> EventLoopFuture<GetResolverRuleResponse> {
        return client.send(operation: "GetResolverRule", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about an association between a specified Resolver rule and a VPC. You associate a Resolver rule and a VPC using AssociateResolverRule. 
    public func getResolverRuleAssociation(_ input: GetResolverRuleAssociationRequest) -> EventLoopFuture<GetResolverRuleAssociationResponse> {
        return client.send(operation: "GetResolverRuleAssociation", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about a Resolver rule policy. A Resolver rule policy specifies the Resolver operations and resources that you want to allow another AWS account to be able to use. 
    public func getResolverRulePolicy(_ input: GetResolverRulePolicyRequest) -> EventLoopFuture<GetResolverRulePolicyResponse> {
        return client.send(operation: "GetResolverRulePolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the IP addresses for a specified Resolver endpoint.
    public func listResolverEndpointIpAddresses(_ input: ListResolverEndpointIpAddressesRequest) -> EventLoopFuture<ListResolverEndpointIpAddressesResponse> {
        return client.send(operation: "ListResolverEndpointIpAddresses", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all the Resolver endpoints that were created using the current AWS account.
    public func listResolverEndpoints(_ input: ListResolverEndpointsRequest) -> EventLoopFuture<ListResolverEndpointsResponse> {
        return client.send(operation: "ListResolverEndpoints", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists information about associations between Amazon VPCs and query logging configurations.
    public func listResolverQueryLogConfigAssociations(_ input: ListResolverQueryLogConfigAssociationsRequest) -> EventLoopFuture<ListResolverQueryLogConfigAssociationsResponse> {
        return client.send(operation: "ListResolverQueryLogConfigAssociations", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists information about the specified query logging configurations. Each configuration defines where you want Resolver to save DNS query logs and specifies the VPCs that you want to log queries for.
    public func listResolverQueryLogConfigs(_ input: ListResolverQueryLogConfigsRequest) -> EventLoopFuture<ListResolverQueryLogConfigsResponse> {
        return client.send(operation: "ListResolverQueryLogConfigs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the associations that were created between Resolver rules and VPCs using the current AWS account.
    public func listResolverRuleAssociations(_ input: ListResolverRuleAssociationsRequest) -> EventLoopFuture<ListResolverRuleAssociationsResponse> {
        return client.send(operation: "ListResolverRuleAssociations", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the Resolver rules that were created using the current AWS account.
    public func listResolverRules(_ input: ListResolverRulesRequest) -> EventLoopFuture<ListResolverRulesResponse> {
        return client.send(operation: "ListResolverRules", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the tags that you associated with the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Specifies an AWS account that you want to share a query logging configuration with, the query logging configuration that you want to share, and the operations that you want the account to be able to perform on the configuration.
    public func putResolverQueryLogConfigPolicy(_ input: PutResolverQueryLogConfigPolicyRequest) -> EventLoopFuture<PutResolverQueryLogConfigPolicyResponse> {
        return client.send(operation: "PutResolverQueryLogConfigPolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Specifies an AWS account that you want to share rules with, the Resolver rules that you want to share, and the operations that you want the account to be able to perform on those rules.
    public func putResolverRulePolicy(_ input: PutResolverRulePolicyRequest) -> EventLoopFuture<PutResolverRulePolicyResponse> {
        return client.send(operation: "PutResolverRulePolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds one or more tags to a specified resource.
    public func tagResource(_ input: TagResourceRequest) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes one or more tags from a specified resource.
    public func untagResource(_ input: UntagResourceRequest) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the name of an inbound or an outbound Resolver endpoint. 
    public func updateResolverEndpoint(_ input: UpdateResolverEndpointRequest) -> EventLoopFuture<UpdateResolverEndpointResponse> {
        return client.send(operation: "UpdateResolverEndpoint", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates settings for a specified Resolver rule. ResolverRuleId is required, and all other parameters are optional. If you don't specify a parameter, it retains its current value.
    public func updateResolverRule(_ input: UpdateResolverRuleRequest) -> EventLoopFuture<UpdateResolverRuleResponse> {
        return client.send(operation: "UpdateResolverRule", path: "/", httpMethod: "POST", input: input)
    }
}
