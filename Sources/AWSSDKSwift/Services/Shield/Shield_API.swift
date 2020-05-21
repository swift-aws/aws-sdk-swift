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
import NIO

/**
Client object for interacting with AWS Shield service.

AWS Shield Advanced This is the AWS Shield Advanced API Reference. This guide is for developers who need detailed information about the AWS Shield Advanced API actions, data types, and errors. For detailed information about AWS WAF and AWS Shield Advanced features and an overview of how to use the AWS WAF and AWS Shield Advanced APIs, see the AWS WAF and AWS Shield Developer Guide.
*/
public struct Shield {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the Shield client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - retryPolicy: Object returning whether retries should be attempted. Possible options are NoRetry(), ExponentialRetry() or JitterRetry()
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        accessKeyId: String? = nil,
        secretAccessKey: String? = nil,
        sessionToken: String? = nil,
        partition: AWSSDKSwiftCore.Partition = .aws,
        endpoint: String? = nil,
        retryPolicy: RetryPolicy = JitterRetry(),
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: nil,
            partition: partition,
            amzTarget: "AWSShield_20160616",
            service: "shield",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2016-06-02",
            endpoint: endpoint,
            serviceEndpoints: ["aws-global": "shield.us-east-1.amazonaws.com"],
            partitionEndpoints: [.aws: (endpoint: "aws-global", region: .useast1)],
            retryPolicy: retryPolicy,
            middlewares: middlewares,
            possibleErrorTypes: [ShieldErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Authorizes the DDoS Response team (DRT) to access the specified Amazon S3 bucket containing your AWS WAF logs. You can associate up to 10 Amazon S3 buckets with your subscription. To use the services of the DRT and make an AssociateDRTLogBucket request, you must be subscribed to the Business Support plan or the Enterprise Support plan.
    public func associateDRTLogBucket(_ input: AssociateDRTLogBucketRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateDRTLogBucketResponse> {
        return client.send(operation: "AssociateDRTLogBucket", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Authorizes the DDoS Response team (DRT), using the specified role, to access your AWS account to assist with DDoS attack mitigation during potential attacks. This enables the DRT to inspect your AWS WAF configuration and create or update AWS WAF rules and web ACLs. You can associate only one RoleArn with your subscription. If you submit an AssociateDRTRole request for an account that already has an associated role, the new RoleArn will replace the existing RoleArn.  Prior to making the AssociateDRTRole request, you must attach the AWSShieldDRTAccessPolicy managed policy to the role you will specify in the request. For more information see Attaching and Detaching IAM Policies. The role must also trust the service principal  drt.shield.amazonaws.com. For more information, see IAM JSON Policy Elements: Principal. The DRT will have access only to your AWS WAF and Shield resources. By submitting this request, you authorize the DRT to inspect your AWS WAF and Shield configuration and create and update AWS WAF rules and web ACLs on your behalf. The DRT takes these actions only if explicitly authorized by you. You must have the iam:PassRole permission to make an AssociateDRTRole request. For more information, see Granting a User Permissions to Pass a Role to an AWS Service.  To use the services of the DRT and make an AssociateDRTRole request, you must be subscribed to the Business Support plan or the Enterprise Support plan.
    public func associateDRTRole(_ input: AssociateDRTRoleRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateDRTRoleResponse> {
        return client.send(operation: "AssociateDRTRole", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Adds health-based detection to the Shield Advanced protection for a resource. Shield Advanced health-based detection uses the health of your AWS resource to improve responsiveness and accuracy in attack detection and mitigation.  You define the health check in Route 53 and then associate it with your Shield Advanced protection. For more information, see Shield Advanced Health-Based Detection in the AWS WAF and AWS Shield Developer Guide. 
    public func associateHealthCheck(_ input: AssociateHealthCheckRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateHealthCheckResponse> {
        return client.send(operation: "AssociateHealthCheck", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Enables AWS Shield Advanced for a specific AWS resource. The resource can be an Amazon CloudFront distribution, Elastic Load Balancing load balancer, AWS Global Accelerator accelerator, Elastic IP Address, or an Amazon Route 53 hosted zone. You can add protection to only a single resource with each CreateProtection request. If you want to add protection to multiple resources at once, use the AWS WAF console. For more information see Getting Started with AWS Shield Advanced and Add AWS Shield Advanced Protection to more AWS Resources.
    public func createProtection(_ input: CreateProtectionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateProtectionResponse> {
        return client.send(operation: "CreateProtection", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Activates AWS Shield Advanced for an account. As part of this request you can specify EmergencySettings that automaticaly grant the DDoS response team (DRT) needed permissions to assist you during a suspected DDoS attack. For more information see Authorize the DDoS Response Team to Create Rules and Web ACLs on Your Behalf. To use the services of the DRT, you must be subscribed to the Business Support plan or the Enterprise Support plan. When you initally create a subscription, your subscription is set to be automatically renewed at the end of the existing subscription period. You can change this by submitting an UpdateSubscription request. 
    public func createSubscription(_ input: CreateSubscriptionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSubscriptionResponse> {
        return client.send(operation: "CreateSubscription", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes an AWS Shield Advanced Protection.
    public func deleteProtection(_ input: DeleteProtectionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteProtectionResponse> {
        return client.send(operation: "DeleteProtection", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes AWS Shield Advanced from an account. AWS Shield Advanced requires a 1-year subscription commitment. You cannot delete a subscription prior to the completion of that commitment. 
    @available(*, deprecated, message:"DeleteSubscription is deprecated.")
    public func deleteSubscription(_ input: DeleteSubscriptionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSubscriptionResponse> {
        return client.send(operation: "DeleteSubscription", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the details of a DDoS attack. 
    public func describeAttack(_ input: DescribeAttackRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAttackResponse> {
        return client.send(operation: "DescribeAttack", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns the current role and list of Amazon S3 log buckets used by the DDoS Response team (DRT) to access your AWS account while assisting with attack mitigation.
    public func describeDRTAccess(_ input: DescribeDRTAccessRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDRTAccessResponse> {
        return client.send(operation: "DescribeDRTAccess", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the email addresses that the DRT can use to contact you during a suspected attack.
    public func describeEmergencyContactSettings(_ input: DescribeEmergencyContactSettingsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEmergencyContactSettingsResponse> {
        return client.send(operation: "DescribeEmergencyContactSettings", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the details of a Protection object.
    public func describeProtection(_ input: DescribeProtectionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProtectionResponse> {
        return client.send(operation: "DescribeProtection", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Provides details about the AWS Shield Advanced subscription for an account.
    public func describeSubscription(_ input: DescribeSubscriptionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSubscriptionResponse> {
        return client.send(operation: "DescribeSubscription", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes the DDoS Response team's (DRT) access to the specified Amazon S3 bucket containing your AWS WAF logs. To make a DisassociateDRTLogBucket request, you must be subscribed to the Business Support plan or the Enterprise Support plan. However, if you are not subscribed to one of these support plans, but had been previously and had granted the DRT access to your account, you can submit a DisassociateDRTLogBucket request to remove this access.
    public func disassociateDRTLogBucket(_ input: DisassociateDRTLogBucketRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateDRTLogBucketResponse> {
        return client.send(operation: "DisassociateDRTLogBucket", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes the DDoS Response team's (DRT) access to your AWS account. To make a DisassociateDRTRole request, you must be subscribed to the Business Support plan or the Enterprise Support plan. However, if you are not subscribed to one of these support plans, but had been previously and had granted the DRT access to your account, you can submit a DisassociateDRTRole request to remove this access.
    public func disassociateDRTRole(_ input: DisassociateDRTRoleRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateDRTRoleResponse> {
        return client.send(operation: "DisassociateDRTRole", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes health-based detection from the Shield Advanced protection for a resource. Shield Advanced health-based detection uses the health of your AWS resource to improve responsiveness and accuracy in attack detection and mitigation.  You define the health check in Route 53 and then associate or disassociate it with your Shield Advanced protection. For more information, see Shield Advanced Health-Based Detection in the AWS WAF and AWS Shield Developer Guide. 
    public func disassociateHealthCheck(_ input: DisassociateHealthCheckRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateHealthCheckResponse> {
        return client.send(operation: "DisassociateHealthCheck", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns the SubscriptionState, either Active or Inactive.
    public func getSubscriptionState(_ input: GetSubscriptionStateRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSubscriptionStateResponse> {
        return client.send(operation: "GetSubscriptionState", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns all ongoing DDoS attacks or all DDoS attacks during a specified time period.
    public func listAttacks(_ input: ListAttacksRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAttacksResponse> {
        return client.send(operation: "ListAttacks", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists all Protection objects for the account.
    public func listProtections(_ input: ListProtectionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListProtectionsResponse> {
        return client.send(operation: "ListProtections", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the details of the list of email addresses that the DRT can use to contact you during a suspected attack.
    public func updateEmergencyContactSettings(_ input: UpdateEmergencyContactSettingsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateEmergencyContactSettingsResponse> {
        return client.send(operation: "UpdateEmergencyContactSettings", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the details of an existing subscription. Only enter values for parameters you want to change. Empty parameters are not updated.
    public func updateSubscription(_ input: UpdateSubscriptionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateSubscriptionResponse> {
        return client.send(operation: "UpdateSubscription", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }
}
