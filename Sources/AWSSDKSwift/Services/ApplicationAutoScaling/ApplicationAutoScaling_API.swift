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
Client object for interacting with AWS ApplicationAutoScaling service.

With Application Auto Scaling, you can configure automatic scaling for the following resources:   Amazon ECS services   Amazon EC2 Spot Fleet requests   Amazon EMR clusters   Amazon AppStream 2.0 fleets   Amazon DynamoDB tables and global secondary indexes throughput capacity   Amazon Aurora Replicas   Amazon SageMaker endpoint variants   Custom resources provided by your own applications or services   Amazon Comprehend document classification endpoints   AWS Lambda function provisioned concurrency   Amazon Keyspaces for Apache Cassandra tables    API Summary  The Application Auto Scaling service API includes three key sets of actions:    Register and manage scalable targets - Register AWS or custom resources as scalable targets (a resource that Application Auto Scaling can scale), set minimum and maximum capacity limits, and retrieve information on existing scalable targets.   Configure and manage automatic scaling - Define scaling policies to dynamically scale your resources in response to CloudWatch alarms, schedule one-time or recurring scaling actions, and retrieve your recent scaling activity history.   Suspend and resume scaling - Temporarily suspend and later resume automatic scaling by calling the RegisterScalableTarget API action for any Application Auto Scaling scalable target. You can suspend and resume (individually or in combination) scale-out activities that are triggered by a scaling policy, scale-in activities that are triggered by a scaling policy, and scheduled scaling.   To learn more about Application Auto Scaling, including information about granting IAM users required permissions for Application Auto Scaling actions, see the Application Auto Scaling User Guide.
*/
public struct ApplicationAutoScaling {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the ApplicationAutoScaling client
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
            amzTarget: "AnyScaleFrontendService",
            service: "application-autoscaling",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2016-02-06",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [ApplicationAutoScalingErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Deletes the specified scaling policy for an Application Auto Scaling scalable target. Deleting a step scaling policy deletes the underlying alarm action, but does not delete the CloudWatch alarm associated with the scaling policy, even if it no longer has an associated action. For more information, see Delete a Step Scaling Policy and Delete a Target Tracking Scaling Policy in the Application Auto Scaling User Guide.
    public func deleteScalingPolicy(_ input: DeleteScalingPolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteScalingPolicyResponse> {
        return client.send(operation: "DeleteScalingPolicy", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified scheduled action for an Application Auto Scaling scalable target. For more information, see Delete a Scheduled Action in the Application Auto Scaling User Guide.
    public func deleteScheduledAction(_ input: DeleteScheduledActionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteScheduledActionResponse> {
        return client.send(operation: "DeleteScheduledAction", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deregisters an Application Auto Scaling scalable target when you have finished using it. To see which resources have been registered, use DescribeScalableTargets.   Deregistering a scalable target deletes the scaling policies and the scheduled actions that are associated with it. 
    public func deregisterScalableTarget(_ input: DeregisterScalableTargetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeregisterScalableTargetResponse> {
        return client.send(operation: "DeregisterScalableTarget", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about the scalable targets in the specified namespace. You can filter the results using ResourceIds and ScalableDimension.
    public func describeScalableTargets(_ input: DescribeScalableTargetsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScalableTargetsResponse> {
        return client.send(operation: "DescribeScalableTargets", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Provides descriptive information about the scaling activities in the specified namespace from the previous six weeks. You can filter the results using ResourceId and ScalableDimension.
    public func describeScalingActivities(_ input: DescribeScalingActivitiesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScalingActivitiesResponse> {
        return client.send(operation: "DescribeScalingActivities", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the Application Auto Scaling scaling policies for the specified service namespace. You can filter the results using ResourceId, ScalableDimension, and PolicyNames. For more information, see Target Tracking Scaling Policies and Step Scaling Policies in the Application Auto Scaling User Guide.
    public func describeScalingPolicies(_ input: DescribeScalingPoliciesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScalingPoliciesResponse> {
        return client.send(operation: "DescribeScalingPolicies", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the Application Auto Scaling scheduled actions for the specified service namespace. You can filter the results using the ResourceId, ScalableDimension, and ScheduledActionNames parameters. For more information, see Scheduled Scaling in the Application Auto Scaling User Guide.
    public func describeScheduledActions(_ input: DescribeScheduledActionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScheduledActionsResponse> {
        return client.send(operation: "DescribeScheduledActions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates or updates a scaling policy for an Application Auto Scaling scalable target. Each scalable target is identified by a service namespace, resource ID, and scalable dimension. A scaling policy applies to the scalable target identified by those three attributes. You cannot create a scaling policy until you have registered the resource as a scalable target. Multiple scaling policies can be in force at the same time for the same scalable target. You can have one or more target tracking scaling policies, one or more step scaling policies, or both. However, there is a chance that multiple policies could conflict, instructing the scalable target to scale out or in at the same time. Application Auto Scaling gives precedence to the policy that provides the largest capacity for both scale out and scale in. For example, if one policy increases capacity by 3, another policy increases capacity by 200 percent, and the current capacity is 10, Application Auto Scaling uses the policy with the highest calculated capacity (200% of 10 = 20) and scales out to 30.  For more information, see Target Tracking Scaling Policies and Step Scaling Policies in the Application Auto Scaling User Guide.  If a scalable target is deregistered, the scalable target is no longer available to execute scaling policies. Any scaling policies that were specified for the scalable target are deleted. 
    public func putScalingPolicy(_ input: PutScalingPolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutScalingPolicyResponse> {
        return client.send(operation: "PutScalingPolicy", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates or updates a scheduled action for an Application Auto Scaling scalable target. Each scalable target is identified by a service namespace, resource ID, and scalable dimension. A scheduled action applies to the scalable target identified by those three attributes. You cannot create a scheduled action until you have registered the resource as a scalable target. When start and end times are specified with a recurring schedule using a cron expression or rates, they form the boundaries of when the recurring action starts and stops. To update a scheduled action, specify the parameters that you want to change. If you don't specify start and end times, the old values are deleted. For more information, see Scheduled Scaling in the Application Auto Scaling User Guide.  If a scalable target is deregistered, the scalable target is no longer available to run scheduled actions. Any scheduled actions that were specified for the scalable target are deleted. 
    public func putScheduledAction(_ input: PutScheduledActionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutScheduledActionResponse> {
        return client.send(operation: "PutScheduledAction", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Registers or updates a scalable target.  A scalable target is a resource that Application Auto Scaling can scale out and scale in. Scalable targets are uniquely identified by the combination of resource ID, scalable dimension, and namespace.  When you register a new scalable target, you must specify values for minimum and maximum capacity. Application Auto Scaling scaling policies will not scale capacity to values that are outside of this range. After you register a scalable target, you do not need to register it again to use other Application Auto Scaling operations. To see which resources have been registered, use DescribeScalableTargets. You can also view the scaling policies for a service namespace by using DescribeScalableTargets. If you no longer need a scalable target, you can deregister it by using DeregisterScalableTarget. To update a scalable target, specify the parameters that you want to change. Include the parameters that identify the scalable target: resource ID, scalable dimension, and namespace. Any parameters that you don't specify are not changed by this update request. 
    public func registerScalableTarget(_ input: RegisterScalableTargetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterScalableTargetResponse> {
        return client.send(operation: "RegisterScalableTarget", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }
}
