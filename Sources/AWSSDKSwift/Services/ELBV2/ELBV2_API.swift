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
Client object for interacting with AWS ELBV2 service.

Elastic Load Balancing A load balancer distributes incoming traffic across targets, such as your EC2 instances. This enables you to increase the availability of your application. The load balancer also monitors the health of its registered targets and ensures that it routes traffic only to healthy targets. You configure your load balancer to accept incoming traffic by specifying one or more listeners, which are configured with a protocol and port number for connections from clients to the load balancer. You configure a target group with a protocol and port number for connections from the load balancer to the targets, and with health check settings to be used when checking the health status of the targets. Elastic Load Balancing supports the following types of load balancers: Application Load Balancers, Network Load Balancers, and Classic Load Balancers. This reference covers Application Load Balancers and Network Load Balancers. An Application Load Balancer makes routing and load balancing decisions at the application layer (HTTP/HTTPS). A Network Load Balancer makes routing and load balancing decisions at the transport layer (TCP/TLS). Both Application Load Balancers and Network Load Balancers can route requests to one or more ports on each EC2 instance or container instance in your virtual private cloud (VPC). For more information, see the Elastic Load Balancing User Guide. All Elastic Load Balancing operations are idempotent, which means that they complete at most one time. If you repeat an operation, it succeeds.
*/
public struct ELBV2 {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the ELBV2 client
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
            service: "elasticloadbalancing",
            serviceProtocol: .query,
            apiVersion: "2015-12-01",
            endpoint: endpoint,
            serviceEndpoints: ["fips-us-east-1": "elasticloadbalancing-fips.us-east-1.amazonaws.com", "fips-us-east-2": "elasticloadbalancing-fips.us-east-2.amazonaws.com", "fips-us-west-1": "elasticloadbalancing-fips.us-west-1.amazonaws.com", "fips-us-west-2": "elasticloadbalancing-fips.us-west-2.amazonaws.com"],
            middlewares: middlewares,
            possibleErrorTypes: [ELBV2ErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Adds the specified SSL server certificate to the certificate list for the specified HTTPS or TLS listener. If the certificate in already in the certificate list, the call is successful but the certificate is not added again. To get the certificate list for a listener, use DescribeListenerCertificates. To remove certificates from the certificate list for a listener, use RemoveListenerCertificates. To replace the default certificate for a listener, use ModifyListener. For more information, see SSL Certificates in the Application Load Balancers Guide.
    public func addListenerCertificates(_ input: AddListenerCertificatesInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddListenerCertificatesOutput> {
        return client.send(operation: "AddListenerCertificates", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Adds the specified tags to the specified Elastic Load Balancing resource. You can tag your Application Load Balancers, Network Load Balancers, and your target groups. Each tag consists of a key and an optional value. If a resource already has a tag with the same key, AddTags updates its value. To list the current tags for your resources, use DescribeTags. To remove tags from your resources, use RemoveTags.
    public func addTags(_ input: AddTagsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddTagsOutput> {
        return client.send(operation: "AddTags", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a listener for the specified Application Load Balancer or Network Load Balancer. To update a listener, use ModifyListener. When you are finished with a listener, you can delete it using DeleteListener. If you are finished with both the listener and the load balancer, you can delete them both using DeleteLoadBalancer. This operation is idempotent, which means that it completes at most one time. If you attempt to create multiple listeners with the same settings, each call succeeds. For more information, see Listeners for Your Application Load Balancers in the Application Load Balancers Guide and Listeners for Your Network Load Balancers in the Network Load Balancers Guide.
    public func createListener(_ input: CreateListenerInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateListenerOutput> {
        return client.send(operation: "CreateListener", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates an Application Load Balancer or a Network Load Balancer. When you create a load balancer, you can specify security groups, public subnets, IP address type, and tags. Otherwise, you could do so later using SetSecurityGroups, SetSubnets, SetIpAddressType, and AddTags. To create listeners for your load balancer, use CreateListener. To describe your current load balancers, see DescribeLoadBalancers. When you are finished with a load balancer, you can delete it using DeleteLoadBalancer. For limit information, see Limits for Your Application Load Balancer in the Application Load Balancers Guide and Limits for Your Network Load Balancer in the Network Load Balancers Guide. This operation is idempotent, which means that it completes at most one time. If you attempt to create multiple load balancers with the same settings, each call succeeds. For more information, see Application Load Balancers in the Application Load Balancers Guide and Network Load Balancers in the Network Load Balancers Guide.
    public func createLoadBalancer(_ input: CreateLoadBalancerInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLoadBalancerOutput> {
        return client.send(operation: "CreateLoadBalancer", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a rule for the specified listener. The listener must be associated with an Application Load Balancer. Rules are evaluated in priority order, from the lowest value to the highest value. When the conditions for a rule are met, its actions are performed. If the conditions for no rules are met, the actions for the default rule are performed. For more information, see Listener Rules in the Application Load Balancers Guide. To view your current rules, use DescribeRules. To update a rule, use ModifyRule. To set the priorities of your rules, use SetRulePriorities. To delete a rule, use DeleteRule.
    public func createRule(_ input: CreateRuleInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRuleOutput> {
        return client.send(operation: "CreateRule", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a target group. To register targets with the target group, use RegisterTargets. To update the health check settings for the target group, use ModifyTargetGroup. To monitor the health of targets in the target group, use DescribeTargetHealth. To route traffic to the targets in a target group, specify the target group in an action using CreateListener or CreateRule. To delete a target group, use DeleteTargetGroup. This operation is idempotent, which means that it completes at most one time. If you attempt to create multiple target groups with the same settings, each call succeeds. For more information, see Target Groups for Your Application Load Balancers in the Application Load Balancers Guide or Target Groups for Your Network Load Balancers in the Network Load Balancers Guide.
    public func createTargetGroup(_ input: CreateTargetGroupInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTargetGroupOutput> {
        return client.send(operation: "CreateTargetGroup", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified listener. Alternatively, your listener is deleted when you delete the load balancer to which it is attached, using DeleteLoadBalancer.
    public func deleteListener(_ input: DeleteListenerInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteListenerOutput> {
        return client.send(operation: "DeleteListener", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified Application Load Balancer or Network Load Balancer and its attached listeners. You can't delete a load balancer if deletion protection is enabled. If the load balancer does not exist or has already been deleted, the call succeeds. Deleting a load balancer does not affect its registered targets. For example, your EC2 instances continue to run and are still registered to their target groups. If you no longer need these EC2 instances, you can stop or terminate them.
    public func deleteLoadBalancer(_ input: DeleteLoadBalancerInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLoadBalancerOutput> {
        return client.send(operation: "DeleteLoadBalancer", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified rule.
    public func deleteRule(_ input: DeleteRuleInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRuleOutput> {
        return client.send(operation: "DeleteRule", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified target group. You can delete a target group if it is not referenced by any actions. Deleting a target group also deletes any associated health checks.
    public func deleteTargetGroup(_ input: DeleteTargetGroupInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTargetGroupOutput> {
        return client.send(operation: "DeleteTargetGroup", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deregisters the specified targets from the specified target group. After the targets are deregistered, they no longer receive traffic from the load balancer.
    public func deregisterTargets(_ input: DeregisterTargetsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeregisterTargetsOutput> {
        return client.send(operation: "DeregisterTargets", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the current Elastic Load Balancing resource limits for your AWS account. For more information, see Limits for Your Application Load Balancers in the Application Load Balancer Guide or Limits for Your Network Load Balancers in the Network Load Balancers Guide.
    public func describeAccountLimits(_ input: DescribeAccountLimitsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccountLimitsOutput> {
        return client.send(operation: "DescribeAccountLimits", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the default certificate and the certificate list for the specified HTTPS or TLS listener. If the default certificate is also in the certificate list, it appears twice in the results (once with IsDefault set to true and once with IsDefault set to false). For more information, see SSL Certificates in the Application Load Balancers Guide.
    public func describeListenerCertificates(_ input: DescribeListenerCertificatesInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeListenerCertificatesOutput> {
        return client.send(operation: "DescribeListenerCertificates", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the specified listeners or the listeners for the specified Application Load Balancer or Network Load Balancer. You must specify either a load balancer or one or more listeners. For an HTTPS or TLS listener, the output includes the default certificate for the listener. To describe the certificate list for the listener, use DescribeListenerCertificates.
    public func describeListeners(_ input: DescribeListenersInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeListenersOutput> {
        return client.send(operation: "DescribeListeners", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the attributes for the specified Application Load Balancer or Network Load Balancer. For more information, see Load Balancer Attributes in the Application Load Balancers Guide or Load Balancer Attributes in the Network Load Balancers Guide.
    public func describeLoadBalancerAttributes(_ input: DescribeLoadBalancerAttributesInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLoadBalancerAttributesOutput> {
        return client.send(operation: "DescribeLoadBalancerAttributes", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the specified load balancers or all of your load balancers. To describe the listeners for a load balancer, use DescribeListeners. To describe the attributes for a load balancer, use DescribeLoadBalancerAttributes.
    public func describeLoadBalancers(_ input: DescribeLoadBalancersInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLoadBalancersOutput> {
        return client.send(operation: "DescribeLoadBalancers", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the specified rules or the rules for the specified listener. You must specify either a listener or one or more rules.
    public func describeRules(_ input: DescribeRulesInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRulesOutput> {
        return client.send(operation: "DescribeRules", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the specified policies or all policies used for SSL negotiation. For more information, see Security Policies in the Application Load Balancers Guide.
    public func describeSSLPolicies(_ input: DescribeSSLPoliciesInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSSLPoliciesOutput> {
        return client.send(operation: "DescribeSSLPolicies", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the tags for the specified resources. You can describe the tags for one or more Application Load Balancers, Network Load Balancers, and target groups.
    public func describeTags(_ input: DescribeTagsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTagsOutput> {
        return client.send(operation: "DescribeTags", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the attributes for the specified target group. For more information, see Target Group Attributes in the Application Load Balancers Guide or Target Group Attributes in the Network Load Balancers Guide.
    public func describeTargetGroupAttributes(_ input: DescribeTargetGroupAttributesInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTargetGroupAttributesOutput> {
        return client.send(operation: "DescribeTargetGroupAttributes", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the specified target groups or all of your target groups. By default, all target groups are described. Alternatively, you can specify one of the following to filter the results: the ARN of the load balancer, the names of one or more target groups, or the ARNs of one or more target groups. To describe the targets for a target group, use DescribeTargetHealth. To describe the attributes of a target group, use DescribeTargetGroupAttributes.
    public func describeTargetGroups(_ input: DescribeTargetGroupsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTargetGroupsOutput> {
        return client.send(operation: "DescribeTargetGroups", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the health of the specified targets or all of your targets.
    public func describeTargetHealth(_ input: DescribeTargetHealthInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTargetHealthOutput> {
        return client.send(operation: "DescribeTargetHealth", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Replaces the specified properties of the specified listener. Any properties that you do not specify remain unchanged. Changing the protocol from HTTPS to HTTP, or from TLS to TCP, removes the security policy and default certificate properties. If you change the protocol from HTTP to HTTPS, or from TCP to TLS, you must add the security policy and default certificate properties. To add an item to a list, remove an item from a list, or update an item in a list, you must provide the entire list. For example, to add an action, specify a list with the current actions plus the new action.
    public func modifyListener(_ input: ModifyListenerInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyListenerOutput> {
        return client.send(operation: "ModifyListener", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Modifies the specified attributes of the specified Application Load Balancer or Network Load Balancer. If any of the specified attributes can't be modified as requested, the call fails. Any existing attributes that you do not modify retain their current values.
    public func modifyLoadBalancerAttributes(_ input: ModifyLoadBalancerAttributesInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLoadBalancerAttributesOutput> {
        return client.send(operation: "ModifyLoadBalancerAttributes", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Replaces the specified properties of the specified rule. Any properties that you do not specify are unchanged. To add an item to a list, remove an item from a list, or update an item in a list, you must provide the entire list. For example, to add an action, specify a list with the current actions plus the new action. To modify the actions for the default rule, use ModifyListener.
    public func modifyRule(_ input: ModifyRuleInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRuleOutput> {
        return client.send(operation: "ModifyRule", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Modifies the health checks used when evaluating the health state of the targets in the specified target group. To monitor the health of the targets, use DescribeTargetHealth.
    public func modifyTargetGroup(_ input: ModifyTargetGroupInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTargetGroupOutput> {
        return client.send(operation: "ModifyTargetGroup", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Modifies the specified attributes of the specified target group.
    public func modifyTargetGroupAttributes(_ input: ModifyTargetGroupAttributesInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTargetGroupAttributesOutput> {
        return client.send(operation: "ModifyTargetGroupAttributes", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Registers the specified targets with the specified target group. If the target is an EC2 instance, it must be in the running state when you register it. By default, the load balancer routes requests to registered targets using the protocol and port for the target group. Alternatively, you can override the port for a target when you register it. You can register each EC2 instance or IP address with the same target group multiple times using different ports. With a Network Load Balancer, you cannot register instances by instance ID if they have the following instance types: C1, CC1, CC2, CG1, CG2, CR1, CS1, G1, G2, HI1, HS1, M1, M2, M3, and T1. You can register instances of these types by IP address. To remove a target from a target group, use DeregisterTargets.
    public func registerTargets(_ input: RegisterTargetsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterTargetsOutput> {
        return client.send(operation: "RegisterTargets", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes the specified certificate from the certificate list for the specified HTTPS or TLS listener. You can't remove the default certificate for a listener. To replace the default certificate, call ModifyListener. To list the certificates for your listener, use DescribeListenerCertificates.
    public func removeListenerCertificates(_ input: RemoveListenerCertificatesInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveListenerCertificatesOutput> {
        return client.send(operation: "RemoveListenerCertificates", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes the specified tags from the specified Elastic Load Balancing resource. To list the current tags for your resources, use DescribeTags.
    public func removeTags(_ input: RemoveTagsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveTagsOutput> {
        return client.send(operation: "RemoveTags", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Sets the type of IP addresses used by the subnets of the specified Application Load Balancer or Network Load Balancer.
    public func setIpAddressType(_ input: SetIpAddressTypeInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetIpAddressTypeOutput> {
        return client.send(operation: "SetIpAddressType", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Sets the priorities of the specified rules. You can reorder the rules as long as there are no priority conflicts in the new order. Any existing rules that you do not specify retain their current priority.
    public func setRulePriorities(_ input: SetRulePrioritiesInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetRulePrioritiesOutput> {
        return client.send(operation: "SetRulePriorities", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Associates the specified security groups with the specified Application Load Balancer. The specified security groups override the previously associated security groups. You can't specify a security group for a Network Load Balancer.
    public func setSecurityGroups(_ input: SetSecurityGroupsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetSecurityGroupsOutput> {
        return client.send(operation: "SetSecurityGroups", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Enables the Availability Zones for the specified public subnets for the specified load balancer. The specified subnets replace the previously enabled subnets. When you specify subnets for a Network Load Balancer, you must include all subnets that were enabled previously, with their existing configurations, plus any additional subnets.
    public func setSubnets(_ input: SetSubnetsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetSubnetsOutput> {
        return client.send(operation: "SetSubnets", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }
}
