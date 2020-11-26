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

/// Client object for interacting with AWS NetworkFirewall service.
///
/// This is the API Reference for AWS Network Firewall. This guide is for developers who need detailed information about the Network Firewall API actions, data types, and errors.    The REST API requires you to handle connection details, such as calculating signatures, handling request retries, and error handling. For general information about using the AWS REST APIs, see AWS APIs.  To access Network Firewall using the REST API endpoint: https://network-firewall.&lt;region&gt;.amazonaws.com     Alternatively, you can use one of the AWS SDKs to access an API that's tailored to the programming language or platform that you're using. For more information, see AWS SDKs.   For descriptions of Network Firewall features, including and step-by-step instructions on how to use them through the Network Firewall console, see the Network Firewall Developer Guide.   Network Firewall is a stateful, managed, network firewall and intrusion detection and prevention service for Amazon Virtual Private Cloud (Amazon VPC). With Network Firewall, you can filter traffic at the perimeter of your VPC. This includes filtering traffic going to and coming from an internet gateway, NAT gateway, or over VPN or AWS Direct Connect. Network Firewall uses rules that are compatible with Suricata, a free, open source intrusion detection system (IDS) engine. For information about Suricata, see the Suricata website. You can use Network Firewall to monitor and protect your VPC traffic in a number of ways. The following are just a few examples:    Allow domains or IP addresses for known AWS service endpoints, such as Amazon S3, and block all other forms of traffic.   Use custom lists of known bad domains to limit the types of domain names that your applications can access.   Perform deep packet inspection on traffic entering or leaving your VPC.   Rate limit traffic going from AWS to on-premises IP destinations.   Use stateful protocol detection to filter protocols like HTTPS, regardless of the port used.   To enable Network Firewall for your VPCs, you perform steps in both Amazon VPC and in Network Firewall. For information about using Amazon VPC, see Amazon VPC User Guide. To start using Network Firewall, do the following:    (Optional) If you don't already have a VPC that you want to protect, create it in Amazon VPC.    In Amazon VPC, in each Availability Zone where you want to have a firewall endpoint, create a subnet for the sole use of Network Firewall.    In Network Firewall, create stateless and stateful rule groups, to define the components of the network traffic filtering behavior that you want your firewall to have.    In Network Firewall, create a firewall policy that uses your rule groups and specifies additional default traffic filtering behavior.    In Network Firewall, create a firewall and specify your new firewall policy and VPC subnets. Network Firewall creates a firewall endpoint in each subnet that you specify, with the behavior that's defined in the firewall policy.   In Amazon VPC, use ingress routing enhancements to route traffic through the new firewall endpoints.
public struct NetworkFirewall: AWSService {
    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the NetworkFirewall client
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
            amzTarget: "NetworkFirewall_20201112",
            service: "network-firewall",
            serviceProtocol: .json(version: "1.0"),
            apiVersion: "2020-11-12",
            endpoint: endpoint,
            errorType: NetworkFirewallErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    ///  Associates a FirewallPolicy to a Firewall.  A firewall policy defines how to monitor and manage your VPC network traffic, using a collection of inspection rule groups and other settings. Each firewall requires one firewall policy association, and you can use the same firewall policy for multiple firewalls.
    public func associateFirewallPolicy(_ input: AssociateFirewallPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateFirewallPolicyResponse> {
        return self.client.execute(operation: "AssociateFirewallPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Associates the specified subnets in the Amazon VPC to the firewall. You can specify one subnet for each of the Availability Zones that the VPC spans.  This request creates an AWS Network Firewall firewall endpoint in each of the subnets. To enable the firewall's protections, you must also modify the VPC's route tables for each subnet's Availability Zone, to redirect the traffic that's coming into and going out of the zone through the firewall endpoint.
    public func associateSubnets(_ input: AssociateSubnetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateSubnetsResponse> {
        return self.client.execute(operation: "AssociateSubnets", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates an AWS Network Firewall Firewall and accompanying FirewallStatus for a VPC.  The firewall defines the configuration settings for an AWS Network Firewall firewall. The settings that you can define at creation include the firewall policy, the subnets in your VPC to use for the firewall endpoints, and any tags that are attached to the firewall AWS resource.  After you create a firewall, you can provide additional settings, like the logging configuration.  To update the settings for a firewall, you use the operations that apply to the settings themselves, for example UpdateLoggingConfiguration, AssociateSubnets, and UpdateFirewallDeleteProtection.  To manage a firewall's tags, use the standard AWS resource tagging operations, ListTagsForResource, TagResource, and UntagResource. To retrieve information about firewalls, use ListFirewalls and DescribeFirewall.
    public func createFirewall(_ input: CreateFirewallRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFirewallResponse> {
        return self.client.execute(operation: "CreateFirewall", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates the firewall policy for the firewall according to the specifications.  An AWS Network Firewall firewall policy defines the behavior of a firewall, in a collection of stateless and stateful rule groups and other settings. You can use one firewall policy for multiple firewalls.
    public func createFirewallPolicy(_ input: CreateFirewallPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFirewallPolicyResponse> {
        return self.client.execute(operation: "CreateFirewallPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates the specified stateless or stateful rule group, which includes the rules for network traffic inspection, a capacity setting, and tags.  You provide your rule group specification in your request using either RuleGroup or Rules.
    public func createRuleGroup(_ input: CreateRuleGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRuleGroupResponse> {
        return self.client.execute(operation: "CreateRuleGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes the specified Firewall and its FirewallStatus. This operation requires the firewall's DeleteProtection flag to be FALSE. You can't revert this operation.  You can check whether a firewall is in use by reviewing the route tables for the Availability Zones where you have firewall subnet mappings. Retrieve the subnet mappings by calling DescribeFirewall. You define and update the route tables through Amazon VPC. As needed, update the route tables for the zones to remove the firewall endpoints. When the route tables no longer use the firewall endpoints, you can remove the firewall safely. To delete a firewall, remove the delete protection if you need to using UpdateFirewallDeleteProtection, then delete the firewall by calling DeleteFirewall.
    public func deleteFirewall(_ input: DeleteFirewallRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteFirewallResponse> {
        return self.client.execute(operation: "DeleteFirewall", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes the specified FirewallPolicy.
    public func deleteFirewallPolicy(_ input: DeleteFirewallPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteFirewallPolicyResponse> {
        return self.client.execute(operation: "DeleteFirewallPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes a resource policy that you created in a PutResourcePolicy request.
    public func deleteResourcePolicy(_ input: DeleteResourcePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteResourcePolicyResponse> {
        return self.client.execute(operation: "DeleteResourcePolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes the specified RuleGroup.
    public func deleteRuleGroup(_ input: DeleteRuleGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRuleGroupResponse> {
        return self.client.execute(operation: "DeleteRuleGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns the data objects for the specified firewall.
    public func describeFirewall(_ input: DescribeFirewallRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFirewallResponse> {
        return self.client.execute(operation: "DescribeFirewall", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns the data objects for the specified firewall policy.
    public func describeFirewallPolicy(_ input: DescribeFirewallPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFirewallPolicyResponse> {
        return self.client.execute(operation: "DescribeFirewallPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns the logging configuration for the specified firewall.
    public func describeLoggingConfiguration(_ input: DescribeLoggingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLoggingConfigurationResponse> {
        return self.client.execute(operation: "DescribeLoggingConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Retrieves a resource policy that you created in a PutResourcePolicy request.
    public func describeResourcePolicy(_ input: DescribeResourcePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourcePolicyResponse> {
        return self.client.execute(operation: "DescribeResourcePolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns the data objects for the specified rule group.
    public func describeRuleGroup(_ input: DescribeRuleGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRuleGroupResponse> {
        return self.client.execute(operation: "DescribeRuleGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Removes the specified subnet associations from the firewall. This removes the firewall endpoints from the subnets and removes any network filtering protections that the endpoints were providing.
    public func disassociateSubnets(_ input: DisassociateSubnetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateSubnetsResponse> {
        return self.client.execute(operation: "DisassociateSubnets", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Retrieves the metadata for the firewall policies that you have defined. Depending on your setting for max results and the number of firewall policies, a single call might not return the full list.
    public func listFirewallPolicies(_ input: ListFirewallPoliciesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListFirewallPoliciesResponse> {
        return self.client.execute(operation: "ListFirewallPolicies", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Retrieves the metadata for the firewalls that you have defined. If you provide VPC identifiers in your request, this returns only the firewalls for those VPCs. Depending on your setting for max results and the number of firewalls, a single call might not return the full list.
    public func listFirewalls(_ input: ListFirewallsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListFirewallsResponse> {
        return self.client.execute(operation: "ListFirewalls", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Retrieves the metadata for the rule groups that you have defined. Depending on your setting for max results and the number of rule groups, a single call might not return the full list.
    public func listRuleGroups(_ input: ListRuleGroupsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRuleGroupsResponse> {
        return self.client.execute(operation: "ListRuleGroups", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Retrieves the tags associated with the specified resource. Tags are key:value pairs that you can use to categorize and manage your resources, for purposes like billing. For example, you might set the tag key to "customer" and the value to the customer name or ID. You can specify one or more tags to add to each AWS resource, up to 50 tags for a resource. You can tag the AWS resources that you manage through AWS Network Firewall: firewalls, firewall policies, and rule groups.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates or updates an AWS Identity and Access Management policy for your rule group or firewall policy. Use this to share rule groups and firewall policies between accounts. This operation works in conjunction with the AWS Resource Access Manager (RAM) service to manage resource sharing for Network Firewall.  Use this operation to create or update a resource policy for your rule group or firewall policy. In the policy, you specify the accounts that you want to share the resource with and the operations that you want the accounts to be able to perform.  When you add an account in the resource policy, you then run the following Resource Access Manager (RAM) operations to access and accept the shared rule group or firewall policy.     GetResourceShareInvitations - Returns the Amazon Resource Names (ARNs) of the resource share invitations.     AcceptResourceShareInvitation - Accepts the share invitation for a specified resource share.    For additional information about resource sharing using RAM, see AWS Resource Access Manager User Guide.
    public func putResourcePolicy(_ input: PutResourcePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutResourcePolicyResponse> {
        return self.client.execute(operation: "PutResourcePolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Adds the specified tags to the specified resource. Tags are key:value pairs that you can use to categorize and manage your resources, for purposes like billing. For example, you might set the tag key to "customer" and the value to the customer name or ID. You can specify one or more tags to add to each AWS resource, up to 50 tags for a resource. You can tag the AWS resources that you manage through AWS Network Firewall: firewalls, firewall policies, and rule groups.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Removes the tags with the specified keys from the specified resource. Tags are key:value pairs that you can use to categorize and manage your resources, for purposes like billing. For example, you might set the tag key to "customer" and the value to the customer name or ID. You can specify one or more tags to add to each AWS resource, up to 50 tags for a resource. You can manage tags for the AWS resources that you manage through AWS Network Firewall: firewalls, firewall policies, and rule groups.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Modifies the flag, DeleteProtection, which indicates whether it is possible to delete the firewall. If the flag is set to TRUE, the firewall is protected against deletion. This setting helps protect against accidentally deleting a firewall that's in use.
    public func updateFirewallDeleteProtection(_ input: UpdateFirewallDeleteProtectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFirewallDeleteProtectionResponse> {
        return self.client.execute(operation: "UpdateFirewallDeleteProtection", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Modifies the description for the specified firewall. Use the description to help you identify the firewall when you're working with it.
    public func updateFirewallDescription(_ input: UpdateFirewallDescriptionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFirewallDescriptionResponse> {
        return self.client.execute(operation: "UpdateFirewallDescription", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates the properties of the specified firewall policy.
    public func updateFirewallPolicy(_ input: UpdateFirewallPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFirewallPolicyResponse> {
        return self.client.execute(operation: "UpdateFirewallPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func updateFirewallPolicyChangeProtection(_ input: UpdateFirewallPolicyChangeProtectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFirewallPolicyChangeProtectionResponse> {
        return self.client.execute(operation: "UpdateFirewallPolicyChangeProtection", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Sets the logging configuration for the specified firewall.  To change the logging configuration, retrieve the LoggingConfiguration by calling DescribeLoggingConfiguration, then change it and provide the modified object to this update call. You must change the logging configuration one LogDestinationConfig at a time inside the retrieved LoggingConfiguration object.  You can perform only one of the following actions in any call to UpdateLoggingConfiguration:    Create a new log destination object by adding a single LogDestinationConfig array element to LogDestinationConfigs.   Delete a log destination object by removing a single LogDestinationConfig array element from LogDestinationConfigs.   Change the LogDestination setting in a single LogDestinationConfig array element.   You can't change the LogDestinationType or LogType in a LogDestinationConfig. To change these settings, delete the existing LogDestinationConfig object and create a new one, using two separate calls to this update operation.
    public func updateLoggingConfiguration(_ input: UpdateLoggingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateLoggingConfigurationResponse> {
        return self.client.execute(operation: "UpdateLoggingConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates the rule settings for the specified rule group. You use a rule group by reference in one or more firewall policies. When you modify a rule group, you modify all firewall policies that use the rule group.  To update a rule group, first call DescribeRuleGroup to retrieve the current RuleGroup object, update the object as needed, and then provide the updated object to this call.
    public func updateRuleGroup(_ input: UpdateRuleGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRuleGroupResponse> {
        return self.client.execute(operation: "UpdateRuleGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func updateSubnetChangeProtection(_ input: UpdateSubnetChangeProtectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateSubnetChangeProtectionResponse> {
        return self.client.execute(operation: "UpdateSubnetChangeProtection", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension NetworkFirewall {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: NetworkFirewall, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
