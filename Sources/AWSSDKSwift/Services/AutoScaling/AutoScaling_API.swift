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
Client object for interacting with AWS AutoScaling service.

Amazon EC2 Auto Scaling Amazon EC2 Auto Scaling is designed to automatically launch or terminate EC2 instances based on user-defined scaling policies, scheduled actions, and health checks. Use this service with AWS Auto Scaling, Amazon CloudWatch, and Elastic Load Balancing. For more information, including information about granting IAM users required permissions for Amazon EC2 Auto Scaling actions, see the Amazon EC2 Auto Scaling User Guide.
*/
public struct AutoScaling {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: ServiceConfig

    //MARK: Initialization

    /// Initialize the AutoScaling client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - retryPolicy: Object returning whether retries should be attempted. Possible options are NoRetry(), ExponentialRetry() or JitterRetry()
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        credentialProvider: CredentialProvider? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSSDKSwiftCore.Partition = .aws,
        endpoint: String? = nil,
        retryPolicy: RetryPolicy = JitterRetry(),
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.serviceConfig = ServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "autoscaling",
            serviceProtocol: .query,
            apiVersion: "2011-01-01",
            endpoint: endpoint,
            possibleErrorTypes: [AutoScalingErrorType.self]
        )
        self.client = AWSClient(
            credentialProvider: credentialProvider,
            serviceConfig: serviceConfig,
            retryPolicy: retryPolicy,
            middlewares: middlewares,
            httpClientProvider: httpClientProvider
        )
    }
    
    func syncShutdown() throws {
        try client.syncShutdown()
    }
    
    //MARK: API Calls

    ///  Attaches one or more EC2 instances to the specified Auto Scaling group. When you attach instances, Amazon EC2 Auto Scaling increases the desired capacity of the group by the number of instances being attached. If the number of instances being attached plus the desired capacity of the group exceeds the maximum size of the group, the operation fails. If there is a Classic Load Balancer attached to your Auto Scaling group, the instances are also registered with the load balancer. If there are target groups attached to your Auto Scaling group, the instances are also registered with the target groups. For more information, see Attach EC2 Instances to Your Auto Scaling Group in the Amazon EC2 Auto Scaling User Guide.
    @discardableResult public func attachInstances(_ input: AttachInstancesQuery, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "AttachInstances", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Attaches one or more target groups to the specified Auto Scaling group. To describe the target groups for an Auto Scaling group, use DescribeLoadBalancerTargetGroups. To detach the target group from the Auto Scaling group, use DetachLoadBalancerTargetGroups. With Application Load Balancers and Network Load Balancers, instances are registered as targets with a target group. With Classic Load Balancers, instances are registered with the load balancer. For more information, see Attaching a Load Balancer to Your Auto Scaling Group in the Amazon EC2 Auto Scaling User Guide.
    public func attachLoadBalancerTargetGroups(_ input: AttachLoadBalancerTargetGroupsType, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AttachLoadBalancerTargetGroupsResultType> {
        return client.send(operation: "AttachLoadBalancerTargetGroups", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Attaches one or more Classic Load Balancers to the specified Auto Scaling group. To attach an Application Load Balancer or a Network Load Balancer instead, see AttachLoadBalancerTargetGroups. To describe the load balancers for an Auto Scaling group, use DescribeLoadBalancers. To detach the load balancer from the Auto Scaling group, use DetachLoadBalancers. For more information, see Attaching a Load Balancer to Your Auto Scaling Group in the Amazon EC2 Auto Scaling User Guide.
    public func attachLoadBalancers(_ input: AttachLoadBalancersType, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AttachLoadBalancersResultType> {
        return client.send(operation: "AttachLoadBalancers", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes one or more scheduled actions for the specified Auto Scaling group.
    public func batchDeleteScheduledAction(_ input: BatchDeleteScheduledActionType, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchDeleteScheduledActionAnswer> {
        return client.send(operation: "BatchDeleteScheduledAction", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates or updates one or more scheduled scaling actions for an Auto Scaling group. If you leave a parameter unspecified when updating a scheduled scaling action, the corresponding value remains unchanged.
    public func batchPutScheduledUpdateGroupAction(_ input: BatchPutScheduledUpdateGroupActionType, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchPutScheduledUpdateGroupActionAnswer> {
        return client.send(operation: "BatchPutScheduledUpdateGroupAction", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Completes the lifecycle action for the specified token or instance with the specified result. This step is a part of the procedure for adding a lifecycle hook to an Auto Scaling group:   (Optional) Create a Lambda function and a rule that allows CloudWatch Events to invoke your Lambda function when Amazon EC2 Auto Scaling launches or terminates instances.   (Optional) Create a notification target and an IAM role. The target can be either an Amazon SQS queue or an Amazon SNS topic. The role allows Amazon EC2 Auto Scaling to publish lifecycle notifications to the target.   Create the lifecycle hook. Specify whether the hook is used when the instances launch or terminate.   If you need more time, record the lifecycle action heartbeat to keep the instance in a pending state.    If you finish before the timeout period ends, complete the lifecycle action.    For more information, see Amazon EC2 Auto Scaling Lifecycle Hooks in the Amazon EC2 Auto Scaling User Guide.
    public func completeLifecycleAction(_ input: CompleteLifecycleActionType, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CompleteLifecycleActionAnswer> {
        return client.send(operation: "CompleteLifecycleAction", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates an Auto Scaling group with the specified name and attributes. If you exceed your maximum limit of Auto Scaling groups, the call fails. For information about viewing this limit, see DescribeAccountLimits. For information about updating this limit, see Amazon EC2 Auto Scaling Service Quotas in the Amazon EC2 Auto Scaling User Guide.
    @discardableResult public func createAutoScalingGroup(_ input: CreateAutoScalingGroupType, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "CreateAutoScalingGroup", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a launch configuration. If you exceed your maximum limit of launch configurations, the call fails. For information about viewing this limit, see DescribeAccountLimits. For information about updating this limit, see Amazon EC2 Auto Scaling Service Quotas in the Amazon EC2 Auto Scaling User Guide. For more information, see Launch Configurations in the Amazon EC2 Auto Scaling User Guide.
    @discardableResult public func createLaunchConfiguration(_ input: CreateLaunchConfigurationType, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "CreateLaunchConfiguration", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates or updates tags for the specified Auto Scaling group. When you specify a tag with a key that already exists, the operation overwrites the previous tag definition, and you do not get an error message. For more information, see Tagging Auto Scaling Groups and Instances in the Amazon EC2 Auto Scaling User Guide.
    @discardableResult public func createOrUpdateTags(_ input: CreateOrUpdateTagsType, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "CreateOrUpdateTags", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified Auto Scaling group. If the group has instances or scaling activities in progress, you must specify the option to force the deletion in order for it to succeed. If the group has policies, deleting the group deletes the policies, the underlying alarm actions, and any alarm that no longer has an associated action. To remove instances from the Auto Scaling group before deleting it, call DetachInstances with the list of instances and the option to decrement the desired capacity. This ensures that Amazon EC2 Auto Scaling does not launch replacement instances. To terminate all instances before deleting the Auto Scaling group, call UpdateAutoScalingGroup and set the minimum size and desired capacity of the Auto Scaling group to zero.
    @discardableResult public func deleteAutoScalingGroup(_ input: DeleteAutoScalingGroupType, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteAutoScalingGroup", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified launch configuration. The launch configuration must not be attached to an Auto Scaling group. When this call completes, the launch configuration is no longer available for use.
    @discardableResult public func deleteLaunchConfiguration(_ input: LaunchConfigurationNameType, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteLaunchConfiguration", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified lifecycle hook. If there are any outstanding lifecycle actions, they are completed first (ABANDON for launching instances, CONTINUE for terminating instances).
    public func deleteLifecycleHook(_ input: DeleteLifecycleHookType, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLifecycleHookAnswer> {
        return client.send(operation: "DeleteLifecycleHook", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified notification.
    @discardableResult public func deleteNotificationConfiguration(_ input: DeleteNotificationConfigurationType, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteNotificationConfiguration", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified scaling policy. Deleting either a step scaling policy or a simple scaling policy deletes the underlying alarm action, but does not delete the alarm, even if it no longer has an associated action. For more information, see Deleting a Scaling Policy in the Amazon EC2 Auto Scaling User Guide.
    @discardableResult public func deletePolicy(_ input: DeletePolicyType, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeletePolicy", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified scheduled action.
    @discardableResult public func deleteScheduledAction(_ input: DeleteScheduledActionType, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteScheduledAction", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified tags.
    @discardableResult public func deleteTags(_ input: DeleteTagsType, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteTags", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the current Amazon EC2 Auto Scaling resource quotas for your AWS account. For information about requesting an increase, see Amazon EC2 Auto Scaling Service Quotas in the Amazon EC2 Auto Scaling User Guide.
    public func describeAccountLimits(on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccountLimitsAnswer> {
        return client.send(operation: "DescribeAccountLimits", path: "/", httpMethod: "POST", on: eventLoop)
    }

    ///  Describes the policy adjustment types for use with PutScalingPolicy.
    public func describeAdjustmentTypes(on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAdjustmentTypesAnswer> {
        return client.send(operation: "DescribeAdjustmentTypes", path: "/", httpMethod: "POST", on: eventLoop)
    }

    ///  Describes one or more Auto Scaling groups.
    public func describeAutoScalingGroups(_ input: AutoScalingGroupNamesType, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AutoScalingGroupsType> {
        return client.send(operation: "DescribeAutoScalingGroups", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes one or more Auto Scaling instances.
    public func describeAutoScalingInstances(_ input: DescribeAutoScalingInstancesType, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AutoScalingInstancesType> {
        return client.send(operation: "DescribeAutoScalingInstances", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the notification types that are supported by Amazon EC2 Auto Scaling.
    public func describeAutoScalingNotificationTypes(on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAutoScalingNotificationTypesAnswer> {
        return client.send(operation: "DescribeAutoScalingNotificationTypes", path: "/", httpMethod: "POST", on: eventLoop)
    }

    ///  Describes one or more launch configurations.
    public func describeLaunchConfigurations(_ input: LaunchConfigurationNamesType, on eventLoop: EventLoop? = nil) -> EventLoopFuture<LaunchConfigurationsType> {
        return client.send(operation: "DescribeLaunchConfigurations", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the available types of lifecycle hooks. The following hook types are supported:   autoscaling:EC2_INSTANCE_LAUNCHING   autoscaling:EC2_INSTANCE_TERMINATING  
    public func describeLifecycleHookTypes(on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLifecycleHookTypesAnswer> {
        return client.send(operation: "DescribeLifecycleHookTypes", path: "/", httpMethod: "POST", on: eventLoop)
    }

    ///  Describes the lifecycle hooks for the specified Auto Scaling group.
    public func describeLifecycleHooks(_ input: DescribeLifecycleHooksType, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLifecycleHooksAnswer> {
        return client.send(operation: "DescribeLifecycleHooks", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the target groups for the specified Auto Scaling group.
    public func describeLoadBalancerTargetGroups(_ input: DescribeLoadBalancerTargetGroupsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLoadBalancerTargetGroupsResponse> {
        return client.send(operation: "DescribeLoadBalancerTargetGroups", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the load balancers for the specified Auto Scaling group. This operation describes only Classic Load Balancers. If you have Application Load Balancers or Network Load Balancers, use DescribeLoadBalancerTargetGroups instead.
    public func describeLoadBalancers(_ input: DescribeLoadBalancersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLoadBalancersResponse> {
        return client.send(operation: "DescribeLoadBalancers", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the available CloudWatch metrics for Amazon EC2 Auto Scaling. The GroupStandbyInstances metric is not returned by default. You must explicitly request this metric when calling EnableMetricsCollection.
    public func describeMetricCollectionTypes(on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMetricCollectionTypesAnswer> {
        return client.send(operation: "DescribeMetricCollectionTypes", path: "/", httpMethod: "POST", on: eventLoop)
    }

    ///  Describes the notification actions associated with the specified Auto Scaling group.
    public func describeNotificationConfigurations(_ input: DescribeNotificationConfigurationsType, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNotificationConfigurationsAnswer> {
        return client.send(operation: "DescribeNotificationConfigurations", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the policies for the specified Auto Scaling group.
    public func describePolicies(_ input: DescribePoliciesType, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PoliciesType> {
        return client.send(operation: "DescribePolicies", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes one or more scaling activities for the specified Auto Scaling group.
    public func describeScalingActivities(_ input: DescribeScalingActivitiesType, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ActivitiesType> {
        return client.send(operation: "DescribeScalingActivities", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the scaling process types for use with ResumeProcesses and SuspendProcesses.
    public func describeScalingProcessTypes(on eventLoop: EventLoop? = nil) -> EventLoopFuture<ProcessesType> {
        return client.send(operation: "DescribeScalingProcessTypes", path: "/", httpMethod: "POST", on: eventLoop)
    }

    ///  Describes the actions scheduled for your Auto Scaling group that haven't run or that have not reached their end time. To describe the actions that have already run, use DescribeScalingActivities.
    public func describeScheduledActions(_ input: DescribeScheduledActionsType, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ScheduledActionsType> {
        return client.send(operation: "DescribeScheduledActions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the specified tags. You can use filters to limit the results. For example, you can query for the tags for a specific Auto Scaling group. You can specify multiple values for a filter. A tag must match at least one of the specified values for it to be included in the results. You can also specify multiple filters. The result includes information for a particular tag only if it matches all the filters. If there's no match, no special message is returned.
    public func describeTags(_ input: DescribeTagsType, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagsType> {
        return client.send(operation: "DescribeTags", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the termination policies supported by Amazon EC2 Auto Scaling. For more information, see Controlling Which Auto Scaling Instances Terminate During Scale In in the Amazon EC2 Auto Scaling User Guide.
    public func describeTerminationPolicyTypes(on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTerminationPolicyTypesAnswer> {
        return client.send(operation: "DescribeTerminationPolicyTypes", path: "/", httpMethod: "POST", on: eventLoop)
    }

    ///  Removes one or more instances from the specified Auto Scaling group. After the instances are detached, you can manage them independent of the Auto Scaling group. If you do not specify the option to decrement the desired capacity, Amazon EC2 Auto Scaling launches instances to replace the ones that are detached. If there is a Classic Load Balancer attached to the Auto Scaling group, the instances are deregistered from the load balancer. If there are target groups attached to the Auto Scaling group, the instances are deregistered from the target groups. For more information, see Detach EC2 Instances from Your Auto Scaling Group in the Amazon EC2 Auto Scaling User Guide.
    public func detachInstances(_ input: DetachInstancesQuery, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetachInstancesAnswer> {
        return client.send(operation: "DetachInstances", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Detaches one or more target groups from the specified Auto Scaling group.
    public func detachLoadBalancerTargetGroups(_ input: DetachLoadBalancerTargetGroupsType, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetachLoadBalancerTargetGroupsResultType> {
        return client.send(operation: "DetachLoadBalancerTargetGroups", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Detaches one or more Classic Load Balancers from the specified Auto Scaling group. This operation detaches only Classic Load Balancers. If you have Application Load Balancers or Network Load Balancers, use DetachLoadBalancerTargetGroups instead. When you detach a load balancer, it enters the Removing state while deregistering the instances in the group. When all instances are deregistered, then you can no longer describe the load balancer using DescribeLoadBalancers. The instances remain running.
    public func detachLoadBalancers(_ input: DetachLoadBalancersType, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetachLoadBalancersResultType> {
        return client.send(operation: "DetachLoadBalancers", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Disables group metrics for the specified Auto Scaling group.
    @discardableResult public func disableMetricsCollection(_ input: DisableMetricsCollectionQuery, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DisableMetricsCollection", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Enables group metrics for the specified Auto Scaling group. For more information, see Monitoring Your Auto Scaling Groups and Instances in the Amazon EC2 Auto Scaling User Guide.
    @discardableResult public func enableMetricsCollection(_ input: EnableMetricsCollectionQuery, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "EnableMetricsCollection", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Moves the specified instances into the standby state. If you choose to decrement the desired capacity of the Auto Scaling group, the instances can enter standby as long as the desired capacity of the Auto Scaling group after the instances are placed into standby is equal to or greater than the minimum capacity of the group. If you choose not to decrement the desired capacity of the Auto Scaling group, the Auto Scaling group launches new instances to replace the instances on standby. For more information, see Temporarily Removing Instances from Your Auto Scaling Group in the Amazon EC2 Auto Scaling User Guide.
    public func enterStandby(_ input: EnterStandbyQuery, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnterStandbyAnswer> {
        return client.send(operation: "EnterStandby", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Executes the specified policy.
    @discardableResult public func executePolicy(_ input: ExecutePolicyType, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "ExecutePolicy", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Moves the specified instances out of the standby state. After you put the instances back in service, the desired capacity is incremented. For more information, see Temporarily Removing Instances from Your Auto Scaling Group in the Amazon EC2 Auto Scaling User Guide.
    public func exitStandby(_ input: ExitStandbyQuery, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExitStandbyAnswer> {
        return client.send(operation: "ExitStandby", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates or updates a lifecycle hook for the specified Auto Scaling group. A lifecycle hook tells Amazon EC2 Auto Scaling to perform an action on an instance when the instance launches (before it is put into service) or as the instance terminates (before it is fully terminated). This step is a part of the procedure for adding a lifecycle hook to an Auto Scaling group:   (Optional) Create a Lambda function and a rule that allows CloudWatch Events to invoke your Lambda function when Amazon EC2 Auto Scaling launches or terminates instances.   (Optional) Create a notification target and an IAM role. The target can be either an Amazon SQS queue or an Amazon SNS topic. The role allows Amazon EC2 Auto Scaling to publish lifecycle notifications to the target.    Create the lifecycle hook. Specify whether the hook is used when the instances launch or terminate.    If you need more time, record the lifecycle action heartbeat to keep the instance in a pending state using RecordLifecycleActionHeartbeat.   If you finish before the timeout period ends, complete the lifecycle action using CompleteLifecycleAction.   For more information, see Amazon EC2 Auto Scaling Lifecycle Hooks in the Amazon EC2 Auto Scaling User Guide. If you exceed your maximum limit of lifecycle hooks, which by default is 50 per Auto Scaling group, the call fails. You can view the lifecycle hooks for an Auto Scaling group using DescribeLifecycleHooks. If you are no longer using a lifecycle hook, you can delete it using DeleteLifecycleHook.
    public func putLifecycleHook(_ input: PutLifecycleHookType, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutLifecycleHookAnswer> {
        return client.send(operation: "PutLifecycleHook", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Configures an Auto Scaling group to send notifications when specified events take place. Subscribers to the specified topic can have messages delivered to an endpoint such as a web server or an email address. This configuration overwrites any existing configuration. For more information, see Getting Amazon SNS Notifications When Your Auto Scaling Group Scales in the Amazon EC2 Auto Scaling User Guide.
    @discardableResult public func putNotificationConfiguration(_ input: PutNotificationConfigurationType, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "PutNotificationConfiguration", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates or updates a scaling policy for an Auto Scaling group. For more information about using scaling policies to scale your Auto Scaling group automatically, see Dynamic Scaling in the Amazon EC2 Auto Scaling User Guide.
    public func putScalingPolicy(_ input: PutScalingPolicyType, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PolicyARNType> {
        return client.send(operation: "PutScalingPolicy", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates or updates a scheduled scaling action for an Auto Scaling group. If you leave a parameter unspecified when updating a scheduled scaling action, the corresponding value remains unchanged. For more information, see Scheduled Scaling in the Amazon EC2 Auto Scaling User Guide.
    @discardableResult public func putScheduledUpdateGroupAction(_ input: PutScheduledUpdateGroupActionType, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "PutScheduledUpdateGroupAction", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Records a heartbeat for the lifecycle action associated with the specified token or instance. This extends the timeout by the length of time defined using PutLifecycleHook. This step is a part of the procedure for adding a lifecycle hook to an Auto Scaling group:   (Optional) Create a Lambda function and a rule that allows CloudWatch Events to invoke your Lambda function when Amazon EC2 Auto Scaling launches or terminates instances.   (Optional) Create a notification target and an IAM role. The target can be either an Amazon SQS queue or an Amazon SNS topic. The role allows Amazon EC2 Auto Scaling to publish lifecycle notifications to the target.   Create the lifecycle hook. Specify whether the hook is used when the instances launch or terminate.    If you need more time, record the lifecycle action heartbeat to keep the instance in a pending state.    If you finish before the timeout period ends, complete the lifecycle action.   For more information, see Auto Scaling Lifecycle in the Amazon EC2 Auto Scaling User Guide.
    public func recordLifecycleActionHeartbeat(_ input: RecordLifecycleActionHeartbeatType, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RecordLifecycleActionHeartbeatAnswer> {
        return client.send(operation: "RecordLifecycleActionHeartbeat", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Resumes the specified suspended automatic scaling processes, or all suspended process, for the specified Auto Scaling group. For more information, see Suspending and Resuming Scaling Processes in the Amazon EC2 Auto Scaling User Guide.
    @discardableResult public func resumeProcesses(_ input: ScalingProcessQuery, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "ResumeProcesses", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Sets the size of the specified Auto Scaling group. For more information about desired capacity, see What Is Amazon EC2 Auto Scaling? in the Amazon EC2 Auto Scaling User Guide.
    @discardableResult public func setDesiredCapacity(_ input: SetDesiredCapacityType, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "SetDesiredCapacity", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Sets the health status of the specified instance. For more information, see Health Checks for Auto Scaling Instances in the Amazon EC2 Auto Scaling User Guide.
    @discardableResult public func setInstanceHealth(_ input: SetInstanceHealthQuery, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "SetInstanceHealth", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the instance protection settings of the specified instances. For more information about preventing instances that are part of an Auto Scaling group from terminating on scale in, see Instance Protection in the Amazon EC2 Auto Scaling User Guide.
    public func setInstanceProtection(_ input: SetInstanceProtectionQuery, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetInstanceProtectionAnswer> {
        return client.send(operation: "SetInstanceProtection", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Suspends the specified automatic scaling processes, or all processes, for the specified Auto Scaling group. If you suspend either the Launch or Terminate process types, it can prevent other process types from functioning properly. To resume processes that have been suspended, use ResumeProcesses. For more information, see Suspending and Resuming Scaling Processes in the Amazon EC2 Auto Scaling User Guide.
    @discardableResult public func suspendProcesses(_ input: ScalingProcessQuery, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "SuspendProcesses", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Terminates the specified instance and optionally adjusts the desired group size. This call simply makes a termination request. The instance is not terminated immediately. When an instance is terminated, the instance status changes to terminated. You can't connect to or start an instance after you've terminated it. If you do not specify the option to decrement the desired capacity, Amazon EC2 Auto Scaling launches instances to replace the ones that are terminated.  By default, Amazon EC2 Auto Scaling balances instances across all Availability Zones. If you decrement the desired capacity, your Auto Scaling group can become unbalanced between Availability Zones. Amazon EC2 Auto Scaling tries to rebalance the group, and rebalancing might terminate instances in other zones. For more information, see Rebalancing Activities in the Amazon EC2 Auto Scaling User Guide.
    public func terminateInstanceInAutoScalingGroup(_ input: TerminateInstanceInAutoScalingGroupType, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ActivityType> {
        return client.send(operation: "TerminateInstanceInAutoScalingGroup", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the configuration for the specified Auto Scaling group. To update an Auto Scaling group, specify the name of the group and the parameter that you want to change. Any parameters that you don't specify are not changed by this update request. The new settings take effect on any scaling activities after this call returns.  If you associate a new launch configuration or template with an Auto Scaling group, all new instances will get the updated configuration. Existing instances continue to run with the configuration that they were originally launched with. When you update a group to specify a mixed instances policy instead of a launch configuration or template, existing instances may be replaced to match the new purchasing options that you specified in the policy. For example, if the group currently has 100% On-Demand capacity and the policy specifies 50% Spot capacity, this means that half of your instances will be gradually terminated and relaunched as Spot Instances. When replacing instances, Amazon EC2 Auto Scaling launches new instances before terminating the old ones, so that updating your group does not compromise the performance or availability of your application. Note the following about changing DesiredCapacity, MaxSize, or MinSize:   If a scale-in event occurs as a result of a new DesiredCapacity value that is lower than the current size of the group, the Auto Scaling group uses its termination policy to determine which instances to terminate.   If you specify a new value for MinSize without specifying a value for DesiredCapacity, and the new MinSize is larger than the current size of the group, this sets the group's DesiredCapacity to the new MinSize value.   If you specify a new value for MaxSize without specifying a value for DesiredCapacity, and the new MaxSize is smaller than the current size of the group, this sets the group's DesiredCapacity to the new MaxSize value.   To see which parameters have been set, use DescribeAutoScalingGroups. You can also view the scaling policies for an Auto Scaling group using DescribePolicies. If the group has scaling policies, you can update them using PutScalingPolicy.
    @discardableResult public func updateAutoScalingGroup(_ input: UpdateAutoScalingGroupType, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "UpdateAutoScalingGroup", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }
}
