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

/// Client object for interacting with AWS ElasticLoadBalancingv2 service.
///
/// Elastic Load Balancing A load balancer distributes incoming traffic across targets, such as your EC2 instances. This enables you to increase the availability of your application. The load balancer also monitors the health of its registered targets and ensures that it routes traffic only to healthy targets. You configure your load balancer to accept incoming traffic by specifying one or more listeners, which are configured with a protocol and port number for connections from clients to the load balancer. You configure a target group with a protocol and port number for connections from the load balancer to the targets, and with health check settings to be used when checking the health status of the targets. Elastic Load Balancing supports the following types of load balancers: Application Load Balancers, Network Load Balancers, Gateway Load Balancers, and Classic Load Balancers. This reference covers the following load balancer types:   Application Load Balancer - Operates at the application layer (layer 7) and supports HTTP and HTTPS.   Network Load Balancer - Operates at the transport layer (layer 4) and supports TCP, TLS, and UDP.   Gateway Load Balancer - Operates at the network layer (layer 3).   For more information, see the Elastic Load Balancing User Guide. All Elastic Load Balancing operations are idempotent, which means that they complete at most one time. If you repeat an operation, it succeeds.
public struct ElasticLoadBalancingv2: AWSService {
    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the ElasticLoadBalancingv2 client
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
            service: "elasticloadbalancing",
            serviceProtocol: .query,
            apiVersion: "2015-12-01",
            endpoint: endpoint,
            errorType: ElasticLoadBalancingv2ErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    ///  Adds the specified SSL server certificate to the certificate list for the specified HTTPS or TLS listener. If the certificate in already in the certificate list, the call is successful but the certificate is not added again. For more information, see HTTPS listeners in the Application Load Balancers Guide or TLS listeners in the Network Load Balancers Guide.
    public func addListenerCertificates(_ input: AddListenerCertificatesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddListenerCertificatesOutput> {
        return self.client.execute(operation: "AddListenerCertificates", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Adds the specified tags to the specified Elastic Load Balancing resource. You can tag your Application Load Balancers, Network Load Balancers, Gateway Load Balancers, target groups, listeners, and rules. Each tag consists of a key and an optional value. If a resource already has a tag with the same key, AddTags updates its value.
    public func addTags(_ input: AddTagsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddTagsOutput> {
        return self.client.execute(operation: "AddTags", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a listener for the specified Application Load Balancer, Network Load Balancer. or Gateway Load Balancer. For more information, see the following:    Listeners for your Application Load Balancers     Listeners for your Network Load Balancers     Listeners for your Gateway Load Balancers    This operation is idempotent, which means that it completes at most one time. If you attempt to create multiple listeners with the same settings, each call succeeds.
    public func createListener(_ input: CreateListenerInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateListenerOutput> {
        return self.client.execute(operation: "CreateListener", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates an Application Load Balancer, Network Load Balancer, or Gateway Load Balancer. For more information, see the following:    Application Load Balancers     Network Load Balancers     Gateway Load Balancers    This operation is idempotent, which means that it completes at most one time. If you attempt to create multiple load balancers with the same settings, each call succeeds.
    public func createLoadBalancer(_ input: CreateLoadBalancerInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLoadBalancerOutput> {
        return self.client.execute(operation: "CreateLoadBalancer", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a rule for the specified listener. The listener must be associated with an Application Load Balancer. Each rule consists of a priority, one or more actions, and one or more conditions. Rules are evaluated in priority order, from the lowest value to the highest value. When the conditions for a rule are met, its actions are performed. If the conditions for no rules are met, the actions for the default rule are performed. For more information, see Listener rules in the Application Load Balancers Guide.
    public func createRule(_ input: CreateRuleInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRuleOutput> {
        return self.client.execute(operation: "CreateRule", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a target group. For more information, see the following:    Target groups for your Application Load Balancers     Target groups for your Network Load Balancers     Target groups for your Gateway Load Balancers    This operation is idempotent, which means that it completes at most one time. If you attempt to create multiple target groups with the same settings, each call succeeds.
    public func createTargetGroup(_ input: CreateTargetGroupInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTargetGroupOutput> {
        return self.client.execute(operation: "CreateTargetGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes the specified listener. Alternatively, your listener is deleted when you delete the load balancer to which it is attached.
    public func deleteListener(_ input: DeleteListenerInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteListenerOutput> {
        return self.client.execute(operation: "DeleteListener", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes the specified Application Load Balancer, Network Load Balancer, or Gateway Load Balancer. Deleting a load balancer also deletes its listeners. You can't delete a load balancer if deletion protection is enabled. If the load balancer does not exist or has already been deleted, the call succeeds. Deleting a load balancer does not affect its registered targets. For example, your EC2 instances continue to run and are still registered to their target groups. If you no longer need these EC2 instances, you can stop or terminate them.
    public func deleteLoadBalancer(_ input: DeleteLoadBalancerInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLoadBalancerOutput> {
        return self.client.execute(operation: "DeleteLoadBalancer", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes the specified rule. You can't delete the default rule.
    public func deleteRule(_ input: DeleteRuleInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRuleOutput> {
        return self.client.execute(operation: "DeleteRule", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes the specified target group. You can delete a target group if it is not referenced by any actions. Deleting a target group also deletes any associated health checks. Deleting a target group does not affect its registered targets. For example, any EC2 instances continue to run until you stop or terminate them.
    public func deleteTargetGroup(_ input: DeleteTargetGroupInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTargetGroupOutput> {
        return self.client.execute(operation: "DeleteTargetGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deregisters the specified targets from the specified target group. After the targets are deregistered, they no longer receive traffic from the load balancer.
    public func deregisterTargets(_ input: DeregisterTargetsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeregisterTargetsOutput> {
        return self.client.execute(operation: "DeregisterTargets", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Describes the current Elastic Load Balancing resource limits for your AWS account. For more information, see the following:    Quotas for your Application Load Balancers     Quotas for your Network Load Balancers     Quotas for your Gateway Load Balancers
    public func describeAccountLimits(_ input: DescribeAccountLimitsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccountLimitsOutput> {
        return self.client.execute(operation: "DescribeAccountLimits", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Describes the default certificate and the certificate list for the specified HTTPS or TLS listener. If the default certificate is also in the certificate list, it appears twice in the results (once with IsDefault set to true and once with IsDefault set to false). For more information, see SSL certificates in the Application Load Balancers Guide or Server certificates in the Network Load Balancers Guide.
    public func describeListenerCertificates(_ input: DescribeListenerCertificatesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeListenerCertificatesOutput> {
        return self.client.execute(operation: "DescribeListenerCertificates", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Describes the specified listeners or the listeners for the specified Application Load Balancer, Network Load Balancer, or Gateway Load Balancer. You must specify either a load balancer or one or more listeners.
    public func describeListeners(_ input: DescribeListenersInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeListenersOutput> {
        return self.client.execute(operation: "DescribeListeners", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Describes the attributes for the specified Application Load Balancer, Network Load Balancer, or Gateway Load Balancer. For more information, see the following:    Load balancer attributes in the Application Load Balancers Guide     Load balancer attributes in the Network Load Balancers Guide     Load balancer attributes in the Gateway Load Balancers Guide
    public func describeLoadBalancerAttributes(_ input: DescribeLoadBalancerAttributesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLoadBalancerAttributesOutput> {
        return self.client.execute(operation: "DescribeLoadBalancerAttributes", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Describes the specified load balancers or all of your load balancers.
    public func describeLoadBalancers(_ input: DescribeLoadBalancersInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLoadBalancersOutput> {
        return self.client.execute(operation: "DescribeLoadBalancers", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Describes the specified rules or the rules for the specified listener. You must specify either a listener or one or more rules.
    public func describeRules(_ input: DescribeRulesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRulesOutput> {
        return self.client.execute(operation: "DescribeRules", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Describes the specified policies or all policies used for SSL negotiation. For more information, see Security policies in the Application Load Balancers Guide or Security policies in the Network Load Balancers Guide.
    public func describeSSLPolicies(_ input: DescribeSSLPoliciesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSSLPoliciesOutput> {
        return self.client.execute(operation: "DescribeSSLPolicies", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Describes the tags for the specified Elastic Load Balancing resources. You can describe the tags for one or more Application Load Balancers, Network Load Balancers, Gateway Load Balancers, target groups, listeners, or rules.
    public func describeTags(_ input: DescribeTagsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTagsOutput> {
        return self.client.execute(operation: "DescribeTags", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Describes the attributes for the specified target group. For more information, see the following:    Target group attributes in the Application Load Balancers Guide     Target group attributes in the Network Load Balancers Guide     Target group attributes in the Gateway Load Balancers Guide
    public func describeTargetGroupAttributes(_ input: DescribeTargetGroupAttributesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTargetGroupAttributesOutput> {
        return self.client.execute(operation: "DescribeTargetGroupAttributes", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Describes the specified target groups or all of your target groups. By default, all target groups are described. Alternatively, you can specify one of the following to filter the results: the ARN of the load balancer, the names of one or more target groups, or the ARNs of one or more target groups.
    public func describeTargetGroups(_ input: DescribeTargetGroupsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTargetGroupsOutput> {
        return self.client.execute(operation: "DescribeTargetGroups", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Describes the health of the specified targets or all of your targets.
    public func describeTargetHealth(_ input: DescribeTargetHealthInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTargetHealthOutput> {
        return self.client.execute(operation: "DescribeTargetHealth", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Replaces the specified properties of the specified listener. Any properties that you do not specify remain unchanged. Changing the protocol from HTTPS to HTTP, or from TLS to TCP, removes the security policy and default certificate properties. If you change the protocol from HTTP to HTTPS, or from TCP to TLS, you must add the security policy and default certificate properties. To add an item to a list, remove an item from a list, or update an item in a list, you must provide the entire list. For example, to add an action, specify a list with the current actions plus the new action.
    public func modifyListener(_ input: ModifyListenerInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyListenerOutput> {
        return self.client.execute(operation: "ModifyListener", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Modifies the specified attributes of the specified Application Load Balancer, Network Load Balancer, or Gateway Load Balancer. If any of the specified attributes can't be modified as requested, the call fails. Any existing attributes that you do not modify retain their current values.
    public func modifyLoadBalancerAttributes(_ input: ModifyLoadBalancerAttributesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLoadBalancerAttributesOutput> {
        return self.client.execute(operation: "ModifyLoadBalancerAttributes", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Replaces the specified properties of the specified rule. Any properties that you do not specify are unchanged. To add an item to a list, remove an item from a list, or update an item in a list, you must provide the entire list. For example, to add an action, specify a list with the current actions plus the new action.
    public func modifyRule(_ input: ModifyRuleInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRuleOutput> {
        return self.client.execute(operation: "ModifyRule", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Modifies the health checks used when evaluating the health state of the targets in the specified target group.
    public func modifyTargetGroup(_ input: ModifyTargetGroupInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTargetGroupOutput> {
        return self.client.execute(operation: "ModifyTargetGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Modifies the specified attributes of the specified target group.
    public func modifyTargetGroupAttributes(_ input: ModifyTargetGroupAttributesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTargetGroupAttributesOutput> {
        return self.client.execute(operation: "ModifyTargetGroupAttributes", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Registers the specified targets with the specified target group. If the target is an EC2 instance, it must be in the running state when you register it. By default, the load balancer routes requests to registered targets using the protocol and port for the target group. Alternatively, you can override the port for a target when you register it. You can register each EC2 instance or IP address with the same target group multiple times using different ports. With a Network Load Balancer, you cannot register instances by instance ID if they have the following instance types: C1, CC1, CC2, CG1, CG2, CR1, CS1, G1, G2, HI1, HS1, M1, M2, M3, and T1. You can register instances of these types by IP address.
    public func registerTargets(_ input: RegisterTargetsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterTargetsOutput> {
        return self.client.execute(operation: "RegisterTargets", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Removes the specified certificate from the certificate list for the specified HTTPS or TLS listener.
    public func removeListenerCertificates(_ input: RemoveListenerCertificatesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveListenerCertificatesOutput> {
        return self.client.execute(operation: "RemoveListenerCertificates", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Removes the specified tags from the specified Elastic Load Balancing resources. You can remove the tags for one or more Application Load Balancers, Network Load Balancers, Gateway Load Balancers, target groups, listeners, or rules.
    public func removeTags(_ input: RemoveTagsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveTagsOutput> {
        return self.client.execute(operation: "RemoveTags", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Sets the type of IP addresses used by the subnets of the specified Application Load Balancer or Network Load Balancer.
    public func setIpAddressType(_ input: SetIpAddressTypeInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetIpAddressTypeOutput> {
        return self.client.execute(operation: "SetIpAddressType", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Sets the priorities of the specified rules. You can reorder the rules as long as there are no priority conflicts in the new order. Any existing rules that you do not specify retain their current priority.
    public func setRulePriorities(_ input: SetRulePrioritiesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetRulePrioritiesOutput> {
        return self.client.execute(operation: "SetRulePriorities", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Associates the specified security groups with the specified Application Load Balancer. The specified security groups override the previously associated security groups. You can't specify a security group for a Network Load Balancer or Gateway Load Balancer.
    public func setSecurityGroups(_ input: SetSecurityGroupsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetSecurityGroupsOutput> {
        return self.client.execute(operation: "SetSecurityGroups", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Enables the Availability Zones for the specified public subnets for the specified Application Load Balancer or Network Load Balancer. The specified subnets replace the previously enabled subnets. When you specify subnets for a Network Load Balancer, you must include all subnets that were enabled previously, with their existing configurations, plus any additional subnets.
    public func setSubnets(_ input: SetSubnetsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetSubnetsOutput> {
        return self.client.execute(operation: "SetSubnets", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension ElasticLoadBalancingv2 {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: ElasticLoadBalancingv2, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
