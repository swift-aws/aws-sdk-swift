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

/// Error enum for CodeDeploy
public struct CodeDeployErrorType: AWSErrorType {
    enum Code: String {
        case alarmsLimitExceededException = "AlarmsLimitExceededException"
        case applicationAlreadyExistsException = "ApplicationAlreadyExistsException"
        case applicationDoesNotExistException = "ApplicationDoesNotExistException"
        case applicationLimitExceededException = "ApplicationLimitExceededException"
        case applicationNameRequiredException = "ApplicationNameRequiredException"
        case arnNotSupportedException = "ArnNotSupportedException"
        case batchLimitExceededException = "BatchLimitExceededException"
        case bucketNameFilterRequiredException = "BucketNameFilterRequiredException"
        case deploymentAlreadyCompletedException = "DeploymentAlreadyCompletedException"
        case deploymentConfigAlreadyExistsException = "DeploymentConfigAlreadyExistsException"
        case deploymentConfigDoesNotExistException = "DeploymentConfigDoesNotExistException"
        case deploymentConfigInUseException = "DeploymentConfigInUseException"
        case deploymentConfigLimitExceededException = "DeploymentConfigLimitExceededException"
        case deploymentConfigNameRequiredException = "DeploymentConfigNameRequiredException"
        case deploymentDoesNotExistException = "DeploymentDoesNotExistException"
        case deploymentGroupAlreadyExistsException = "DeploymentGroupAlreadyExistsException"
        case deploymentGroupDoesNotExistException = "DeploymentGroupDoesNotExistException"
        case deploymentGroupLimitExceededException = "DeploymentGroupLimitExceededException"
        case deploymentGroupNameRequiredException = "DeploymentGroupNameRequiredException"
        case deploymentIdRequiredException = "DeploymentIdRequiredException"
        case deploymentIsNotInReadyStateException = "DeploymentIsNotInReadyStateException"
        case deploymentLimitExceededException = "DeploymentLimitExceededException"
        case deploymentNotStartedException = "DeploymentNotStartedException"
        case deploymentTargetDoesNotExistException = "DeploymentTargetDoesNotExistException"
        case deploymentTargetIdRequiredException = "DeploymentTargetIdRequiredException"
        case deploymentTargetListSizeExceededException = "DeploymentTargetListSizeExceededException"
        case descriptionTooLongException = "DescriptionTooLongException"
        case eCSServiceMappingLimitExceededException = "ECSServiceMappingLimitExceededException"
        case gitHubAccountTokenDoesNotExistException = "GitHubAccountTokenDoesNotExistException"
        case gitHubAccountTokenNameRequiredException = "GitHubAccountTokenNameRequiredException"
        case iamArnRequiredException = "IamArnRequiredException"
        case iamSessionArnAlreadyRegisteredException = "IamSessionArnAlreadyRegisteredException"
        case iamUserArnAlreadyRegisteredException = "IamUserArnAlreadyRegisteredException"
        case iamUserArnRequiredException = "IamUserArnRequiredException"
        case instanceDoesNotExistException = "InstanceDoesNotExistException"
        case instanceIdRequiredException = "InstanceIdRequiredException"
        case instanceLimitExceededException = "InstanceLimitExceededException"
        case instanceNameAlreadyRegisteredException = "InstanceNameAlreadyRegisteredException"
        case instanceNameRequiredException = "InstanceNameRequiredException"
        case instanceNotRegisteredException = "InstanceNotRegisteredException"
        case invalidAlarmConfigException = "InvalidAlarmConfigException"
        case invalidApplicationNameException = "InvalidApplicationNameException"
        case invalidArnException = "InvalidArnException"
        case invalidAutoRollbackConfigException = "InvalidAutoRollbackConfigException"
        case invalidAutoScalingGroupException = "InvalidAutoScalingGroupException"
        case invalidBlueGreenDeploymentConfigurationException = "InvalidBlueGreenDeploymentConfigurationException"
        case invalidBucketNameFilterException = "InvalidBucketNameFilterException"
        case invalidComputePlatformException = "InvalidComputePlatformException"
        case invalidDeployedStateFilterException = "InvalidDeployedStateFilterException"
        case invalidDeploymentConfigNameException = "InvalidDeploymentConfigNameException"
        case invalidDeploymentGroupNameException = "InvalidDeploymentGroupNameException"
        case invalidDeploymentIdException = "InvalidDeploymentIdException"
        case invalidDeploymentInstanceTypeException = "InvalidDeploymentInstanceTypeException"
        case invalidDeploymentStatusException = "InvalidDeploymentStatusException"
        case invalidDeploymentStyleException = "InvalidDeploymentStyleException"
        case invalidDeploymentTargetIdException = "InvalidDeploymentTargetIdException"
        case invalidDeploymentWaitTypeException = "InvalidDeploymentWaitTypeException"
        case invalidEC2TagCombinationException = "InvalidEC2TagCombinationException"
        case invalidEC2TagException = "InvalidEC2TagException"
        case invalidECSServiceException = "InvalidECSServiceException"
        case invalidExternalIdException = "InvalidExternalIdException"
        case invalidFileExistsBehaviorException = "InvalidFileExistsBehaviorException"
        case invalidGitHubAccountTokenException = "InvalidGitHubAccountTokenException"
        case invalidGitHubAccountTokenNameException = "InvalidGitHubAccountTokenNameException"
        case invalidIamSessionArnException = "InvalidIamSessionArnException"
        case invalidIamUserArnException = "InvalidIamUserArnException"
        case invalidIgnoreApplicationStopFailuresValueException = "InvalidIgnoreApplicationStopFailuresValueException"
        case invalidInputException = "InvalidInputException"
        case invalidInstanceNameException = "InvalidInstanceNameException"
        case invalidInstanceStatusException = "InvalidInstanceStatusException"
        case invalidInstanceTypeException = "InvalidInstanceTypeException"
        case invalidKeyPrefixFilterException = "InvalidKeyPrefixFilterException"
        case invalidLifecycleEventHookExecutionIdException = "InvalidLifecycleEventHookExecutionIdException"
        case invalidLifecycleEventHookExecutionStatusException = "InvalidLifecycleEventHookExecutionStatusException"
        case invalidLoadBalancerInfoException = "InvalidLoadBalancerInfoException"
        case invalidMinimumHealthyHostValueException = "InvalidMinimumHealthyHostValueException"
        case invalidNextTokenException = "InvalidNextTokenException"
        case invalidOnPremisesTagCombinationException = "InvalidOnPremisesTagCombinationException"
        case invalidOperationException = "InvalidOperationException"
        case invalidRegistrationStatusException = "InvalidRegistrationStatusException"
        case invalidRevisionException = "InvalidRevisionException"
        case invalidRoleException = "InvalidRoleException"
        case invalidSortByException = "InvalidSortByException"
        case invalidSortOrderException = "InvalidSortOrderException"
        case invalidTagException = "InvalidTagException"
        case invalidTagFilterException = "InvalidTagFilterException"
        case invalidTagsToAddException = "InvalidTagsToAddException"
        case invalidTargetFilterNameException = "InvalidTargetFilterNameException"
        case invalidTargetGroupPairException = "InvalidTargetGroupPairException"
        case invalidTargetInstancesException = "InvalidTargetInstancesException"
        case invalidTimeRangeException = "InvalidTimeRangeException"
        case invalidTrafficRoutingConfigurationException = "InvalidTrafficRoutingConfigurationException"
        case invalidTriggerConfigException = "InvalidTriggerConfigException"
        case invalidUpdateOutdatedInstancesOnlyValueException = "InvalidUpdateOutdatedInstancesOnlyValueException"
        case lifecycleEventAlreadyCompletedException = "LifecycleEventAlreadyCompletedException"
        case lifecycleHookLimitExceededException = "LifecycleHookLimitExceededException"
        case multipleIamArnsProvidedException = "MultipleIamArnsProvidedException"
        case operationNotSupportedException = "OperationNotSupportedException"
        case resourceArnRequiredException = "ResourceArnRequiredException"
        case resourceValidationException = "ResourceValidationException"
        case revisionDoesNotExistException = "RevisionDoesNotExistException"
        case revisionRequiredException = "RevisionRequiredException"
        case roleRequiredException = "RoleRequiredException"
        case tagLimitExceededException = "TagLimitExceededException"
        case tagRequiredException = "TagRequiredException"
        case tagSetListLimitExceededException = "TagSetListLimitExceededException"
        case throttlingException = "ThrottlingException"
        case triggerTargetsLimitExceededException = "TriggerTargetsLimitExceededException"
        case unsupportedActionForDeploymentTypeException = "UnsupportedActionForDeploymentTypeException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize CodeDeploy
    public init?(errorCode: String, context: AWSErrorContext) {
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code) {
        self.error = error
        self.context = nil
    }

    /// return error code string
    public var errorCode: String { self.error.rawValue }

    /// The maximum number of alarms for a deployment group (10) was exceeded.
    public static var alarmsLimitExceededException: Self { .init(.alarmsLimitExceededException) }
    /// An application with the specified name with the IAM user or AWS account already exists.
    public static var applicationAlreadyExistsException: Self { .init(.applicationAlreadyExistsException) }
    /// The application does not exist with the IAM user or AWS account.
    public static var applicationDoesNotExistException: Self { .init(.applicationDoesNotExistException) }
    /// More applications were attempted to be created than are allowed.
    public static var applicationLimitExceededException: Self { .init(.applicationLimitExceededException) }
    /// The minimum number of required application names was not specified.
    public static var applicationNameRequiredException: Self { .init(.applicationNameRequiredException) }
    ///  The specified ARN is not supported. For example, it might be an ARN for a resource that is not expected.
    public static var arnNotSupportedException: Self { .init(.arnNotSupportedException) }
    /// The maximum number of names or IDs allowed for this request (100) was exceeded.
    public static var batchLimitExceededException: Self { .init(.batchLimitExceededException) }
    /// A bucket name is required, but was not provided.
    public static var bucketNameFilterRequiredException: Self { .init(.bucketNameFilterRequiredException) }
    /// The deployment is already complete.
    public static var deploymentAlreadyCompletedException: Self { .init(.deploymentAlreadyCompletedException) }
    /// A deployment configuration with the specified name with the IAM user or AWS account already exists.
    public static var deploymentConfigAlreadyExistsException: Self { .init(.deploymentConfigAlreadyExistsException) }
    /// The deployment configuration does not exist with the IAM user or AWS account.
    public static var deploymentConfigDoesNotExistException: Self { .init(.deploymentConfigDoesNotExistException) }
    /// The deployment configuration is still in use.
    public static var deploymentConfigInUseException: Self { .init(.deploymentConfigInUseException) }
    /// The deployment configurations limit was exceeded.
    public static var deploymentConfigLimitExceededException: Self { .init(.deploymentConfigLimitExceededException) }
    /// The deployment configuration name was not specified.
    public static var deploymentConfigNameRequiredException: Self { .init(.deploymentConfigNameRequiredException) }
    /// The deployment with the IAM user or AWS account does not exist.
    public static var deploymentDoesNotExistException: Self { .init(.deploymentDoesNotExistException) }
    /// A deployment group with the specified name with the IAM user or AWS account already exists.
    public static var deploymentGroupAlreadyExistsException: Self { .init(.deploymentGroupAlreadyExistsException) }
    /// The named deployment group with the IAM user or AWS account does not exist.
    public static var deploymentGroupDoesNotExistException: Self { .init(.deploymentGroupDoesNotExistException) }
    ///  The deployment groups limit was exceeded.
    public static var deploymentGroupLimitExceededException: Self { .init(.deploymentGroupLimitExceededException) }
    /// The deployment group name was not specified.
    public static var deploymentGroupNameRequiredException: Self { .init(.deploymentGroupNameRequiredException) }
    /// At least one deployment ID must be specified.
    public static var deploymentIdRequiredException: Self { .init(.deploymentIdRequiredException) }
    /// The deployment does not have a status of Ready and can't continue yet.
    public static var deploymentIsNotInReadyStateException: Self { .init(.deploymentIsNotInReadyStateException) }
    /// The number of allowed deployments was exceeded.
    public static var deploymentLimitExceededException: Self { .init(.deploymentLimitExceededException) }
    /// The specified deployment has not started.
    public static var deploymentNotStartedException: Self { .init(.deploymentNotStartedException) }
    ///  The provided target ID does not belong to the attempted deployment.
    public static var deploymentTargetDoesNotExistException: Self { .init(.deploymentTargetDoesNotExistException) }
    ///  A deployment target ID was not provided.
    public static var deploymentTargetIdRequiredException: Self { .init(.deploymentTargetIdRequiredException) }
    ///  The maximum number of targets that can be associated with an Amazon ECS or AWS Lambda deployment was exceeded. The target list of both types of deployments must have exactly one item. This exception does not apply to EC2/On-premises deployments.
    public static var deploymentTargetListSizeExceededException: Self { .init(.deploymentTargetListSizeExceededException) }
    /// The description is too long.
    public static var descriptionTooLongException: Self { .init(.descriptionTooLongException) }
    ///  The Amazon ECS service is associated with more than one deployment groups. An Amazon ECS service can be associated with only one deployment group.
    public static var eCSServiceMappingLimitExceededException: Self { .init(.eCSServiceMappingLimitExceededException) }
    /// No GitHub account connection exists with the named specified in the call.
    public static var gitHubAccountTokenDoesNotExistException: Self { .init(.gitHubAccountTokenDoesNotExistException) }
    /// The call is missing a required GitHub account connection name.
    public static var gitHubAccountTokenNameRequiredException: Self { .init(.gitHubAccountTokenNameRequiredException) }
    /// No IAM ARN was included in the request. You must use an IAM session ARN or IAM user ARN in the request.
    public static var iamArnRequiredException: Self { .init(.iamArnRequiredException) }
    /// The request included an IAM session ARN that has already been used to register a different instance.
    public static var iamSessionArnAlreadyRegisteredException: Self { .init(.iamSessionArnAlreadyRegisteredException) }
    /// The specified IAM user ARN is already registered with an on-premises instance.
    public static var iamUserArnAlreadyRegisteredException: Self { .init(.iamUserArnAlreadyRegisteredException) }
    /// An IAM user ARN was not specified.
    public static var iamUserArnRequiredException: Self { .init(.iamUserArnRequiredException) }
    /// The specified instance does not exist in the deployment group.
    public static var instanceDoesNotExistException: Self { .init(.instanceDoesNotExistException) }
    /// The instance ID was not specified.
    public static var instanceIdRequiredException: Self { .init(.instanceIdRequiredException) }
    /// The maximum number of allowed on-premises instances in a single call was exceeded.
    public static var instanceLimitExceededException: Self { .init(.instanceLimitExceededException) }
    /// The specified on-premises instance name is already registered.
    public static var instanceNameAlreadyRegisteredException: Self { .init(.instanceNameAlreadyRegisteredException) }
    /// An on-premises instance name was not specified.
    public static var instanceNameRequiredException: Self { .init(.instanceNameRequiredException) }
    /// The specified on-premises instance is not registered.
    public static var instanceNotRegisteredException: Self { .init(.instanceNotRegisteredException) }
    /// The format of the alarm configuration is invalid. Possible causes include:   The alarm list is null.   The alarm object is null.   The alarm name is empty or null or exceeds the limit of 255 characters.   Two alarms with the same name have been specified.   The alarm configuration is enabled, but the alarm list is empty.
    public static var invalidAlarmConfigException: Self { .init(.invalidAlarmConfigException) }
    /// The application name was specified in an invalid format.
    public static var invalidApplicationNameException: Self { .init(.invalidApplicationNameException) }
    ///  The specified ARN is not in a valid format.
    public static var invalidArnException: Self { .init(.invalidArnException) }
    /// The automatic rollback configuration was specified in an invalid format. For example, automatic rollback is enabled, but an invalid triggering event type or no event types were listed.
    public static var invalidAutoRollbackConfigException: Self { .init(.invalidAutoRollbackConfigException) }
    /// The Auto Scaling group was specified in an invalid format or does not exist.
    public static var invalidAutoScalingGroupException: Self { .init(.invalidAutoScalingGroupException) }
    /// The configuration for the blue/green deployment group was provided in an invalid format. For information about deployment configuration format, see CreateDeploymentConfig.
    public static var invalidBlueGreenDeploymentConfigurationException: Self { .init(.invalidBlueGreenDeploymentConfigurationException) }
    /// The bucket name either doesn't exist or was specified in an invalid format.
    public static var invalidBucketNameFilterException: Self { .init(.invalidBucketNameFilterException) }
    /// The computePlatform is invalid. The computePlatform should be Lambda, Server, or ECS.
    public static var invalidComputePlatformException: Self { .init(.invalidComputePlatformException) }
    /// The deployed state filter was specified in an invalid format.
    public static var invalidDeployedStateFilterException: Self { .init(.invalidDeployedStateFilterException) }
    /// The deployment configuration name was specified in an invalid format.
    public static var invalidDeploymentConfigNameException: Self { .init(.invalidDeploymentConfigNameException) }
    /// The deployment group name was specified in an invalid format.
    public static var invalidDeploymentGroupNameException: Self { .init(.invalidDeploymentGroupNameException) }
    /// At least one of the deployment IDs was specified in an invalid format.
    public static var invalidDeploymentIdException: Self { .init(.invalidDeploymentIdException) }
    /// An instance type was specified for an in-place deployment. Instance types are supported for blue/green deployments only.
    public static var invalidDeploymentInstanceTypeException: Self { .init(.invalidDeploymentInstanceTypeException) }
    /// The specified deployment status doesn't exist or cannot be determined.
    public static var invalidDeploymentStatusException: Self { .init(.invalidDeploymentStatusException) }
    /// An invalid deployment style was specified. Valid deployment types include "IN_PLACE" and "BLUE_GREEN." Valid deployment options include "WITH_TRAFFIC_CONTROL" and "WITHOUT_TRAFFIC_CONTROL."
    public static var invalidDeploymentStyleException: Self { .init(.invalidDeploymentStyleException) }
    ///  The target ID provided was not valid.
    public static var invalidDeploymentTargetIdException: Self { .init(.invalidDeploymentTargetIdException) }
    ///  The wait type is invalid.
    public static var invalidDeploymentWaitTypeException: Self { .init(.invalidDeploymentWaitTypeException) }
    /// A call was submitted that specified both Ec2TagFilters and Ec2TagSet, but only one of these data types can be used in a single call.
    public static var invalidEC2TagCombinationException: Self { .init(.invalidEC2TagCombinationException) }
    /// The tag was specified in an invalid format.
    public static var invalidEC2TagException: Self { .init(.invalidEC2TagException) }
    ///  The Amazon ECS service identifier is not valid.
    public static var invalidECSServiceException: Self { .init(.invalidECSServiceException) }
    /// The external ID was specified in an invalid format.
    public static var invalidExternalIdException: Self { .init(.invalidExternalIdException) }
    /// An invalid fileExistsBehavior option was specified to determine how AWS CodeDeploy handles files or directories that already exist in a deployment target location, but weren't part of the previous successful deployment. Valid values include "DISALLOW," "OVERWRITE," and "RETAIN."
    public static var invalidFileExistsBehaviorException: Self { .init(.invalidFileExistsBehaviorException) }
    /// The GitHub token is not valid.
    public static var invalidGitHubAccountTokenException: Self { .init(.invalidGitHubAccountTokenException) }
    /// The format of the specified GitHub account connection name is invalid.
    public static var invalidGitHubAccountTokenNameException: Self { .init(.invalidGitHubAccountTokenNameException) }
    /// The IAM session ARN was specified in an invalid format.
    public static var invalidIamSessionArnException: Self { .init(.invalidIamSessionArnException) }
    /// The IAM user ARN was specified in an invalid format.
    public static var invalidIamUserArnException: Self { .init(.invalidIamUserArnException) }
    /// The IgnoreApplicationStopFailures value is invalid. For AWS Lambda deployments, false is expected. For EC2/On-premises deployments, true or false is expected.
    public static var invalidIgnoreApplicationStopFailuresValueException: Self { .init(.invalidIgnoreApplicationStopFailuresValueException) }
    /// The input was specified in an invalid format.
    public static var invalidInputException: Self { .init(.invalidInputException) }
    /// The on-premises instance name was specified in an invalid format.
    public static var invalidInstanceNameException: Self { .init(.invalidInstanceNameException) }
    /// The specified instance status does not exist.
    public static var invalidInstanceStatusException: Self { .init(.invalidInstanceStatusException) }
    /// An invalid instance type was specified for instances in a blue/green deployment. Valid values include "Blue" for an original environment and "Green" for a replacement environment.
    public static var invalidInstanceTypeException: Self { .init(.invalidInstanceTypeException) }
    /// The specified key prefix filter was specified in an invalid format.
    public static var invalidKeyPrefixFilterException: Self { .init(.invalidKeyPrefixFilterException) }
    /// A lifecycle event hook is invalid. Review the hooks section in your AppSpec file to ensure the lifecycle events and hooks functions are valid.
    public static var invalidLifecycleEventHookExecutionIdException: Self { .init(.invalidLifecycleEventHookExecutionIdException) }
    /// The result of a Lambda validation function that verifies a lifecycle event is invalid. It should return Succeeded or Failed.
    public static var invalidLifecycleEventHookExecutionStatusException: Self { .init(.invalidLifecycleEventHookExecutionStatusException) }
    /// An invalid load balancer name, or no load balancer name, was specified.
    public static var invalidLoadBalancerInfoException: Self { .init(.invalidLoadBalancerInfoException) }
    /// The minimum healthy instance value was specified in an invalid format.
    public static var invalidMinimumHealthyHostValueException: Self { .init(.invalidMinimumHealthyHostValueException) }
    /// The next token was specified in an invalid format.
    public static var invalidNextTokenException: Self { .init(.invalidNextTokenException) }
    /// A call was submitted that specified both OnPremisesTagFilters and OnPremisesTagSet, but only one of these data types can be used in a single call.
    public static var invalidOnPremisesTagCombinationException: Self { .init(.invalidOnPremisesTagCombinationException) }
    /// An invalid operation was detected.
    public static var invalidOperationException: Self { .init(.invalidOperationException) }
    /// The registration status was specified in an invalid format.
    public static var invalidRegistrationStatusException: Self { .init(.invalidRegistrationStatusException) }
    /// The revision was specified in an invalid format.
    public static var invalidRevisionException: Self { .init(.invalidRevisionException) }
    /// The service role ARN was specified in an invalid format. Or, if an Auto Scaling group was specified, the specified service role does not grant the appropriate permissions to Amazon EC2 Auto Scaling.
    public static var invalidRoleException: Self { .init(.invalidRoleException) }
    /// The column name to sort by is either not present or was specified in an invalid format.
    public static var invalidSortByException: Self { .init(.invalidSortByException) }
    /// The sort order was specified in an invalid format.
    public static var invalidSortOrderException: Self { .init(.invalidSortOrderException) }
    /// The tag was specified in an invalid format.
    public static var invalidTagException: Self { .init(.invalidTagException) }
    /// The tag filter was specified in an invalid format.
    public static var invalidTagFilterException: Self { .init(.invalidTagFilterException) }
    ///  The specified tags are not valid.
    public static var invalidTagsToAddException: Self { .init(.invalidTagsToAddException) }
    ///  The target filter name is invalid.
    public static var invalidTargetFilterNameException: Self { .init(.invalidTargetFilterNameException) }
    ///  A target group pair associated with this deployment is not valid.
    public static var invalidTargetGroupPairException: Self { .init(.invalidTargetGroupPairException) }
    /// The target instance configuration is invalid. Possible causes include:   Configuration data for target instances was entered for an in-place deployment.   The limit of 10 tags for a tag type was exceeded.   The combined length of the tag names exceeded the limit.    A specified tag is not currently applied to any instances.
    public static var invalidTargetInstancesException: Self { .init(.invalidTargetInstancesException) }
    /// The specified time range was specified in an invalid format.
    public static var invalidTimeRangeException: Self { .init(.invalidTimeRangeException) }
    ///  The configuration that specifies how traffic is routed during a deployment is invalid.
    public static var invalidTrafficRoutingConfigurationException: Self { .init(.invalidTrafficRoutingConfigurationException) }
    /// The trigger was specified in an invalid format.
    public static var invalidTriggerConfigException: Self { .init(.invalidTriggerConfigException) }
    /// The UpdateOutdatedInstancesOnly value is invalid. For AWS Lambda deployments, false is expected. For EC2/On-premises deployments, true or false is expected.
    public static var invalidUpdateOutdatedInstancesOnlyValueException: Self { .init(.invalidUpdateOutdatedInstancesOnlyValueException) }
    /// An attempt to return the status of an already completed lifecycle event occurred.
    public static var lifecycleEventAlreadyCompletedException: Self { .init(.lifecycleEventAlreadyCompletedException) }
    /// The limit for lifecycle hooks was exceeded.
    public static var lifecycleHookLimitExceededException: Self { .init(.lifecycleHookLimitExceededException) }
    /// Both an IAM user ARN and an IAM session ARN were included in the request. Use only one ARN type.
    public static var multipleIamArnsProvidedException: Self { .init(.multipleIamArnsProvidedException) }
    /// The API used does not support the deployment.
    public static var operationNotSupportedException: Self { .init(.operationNotSupportedException) }
    ///  The ARN of a resource is required, but was not found.
    public static var resourceArnRequiredException: Self { .init(.resourceArnRequiredException) }
    /// The specified resource could not be validated.
    public static var resourceValidationException: Self { .init(.resourceValidationException) }
    /// The named revision does not exist with the IAM user or AWS account.
    public static var revisionDoesNotExistException: Self { .init(.revisionDoesNotExistException) }
    /// The revision ID was not specified.
    public static var revisionRequiredException: Self { .init(.revisionRequiredException) }
    /// The role ID was not specified.
    public static var roleRequiredException: Self { .init(.roleRequiredException) }
    /// The maximum allowed number of tags was exceeded.
    public static var tagLimitExceededException: Self { .init(.tagLimitExceededException) }
    /// A tag was not specified.
    public static var tagRequiredException: Self { .init(.tagRequiredException) }
    /// The number of tag groups included in the tag set list exceeded the maximum allowed limit of 3.
    public static var tagSetListLimitExceededException: Self { .init(.tagSetListLimitExceededException) }
    /// An API function was called too frequently.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// The maximum allowed number of triggers was exceeded.
    public static var triggerTargetsLimitExceededException: Self { .init(.triggerTargetsLimitExceededException) }
    /// A call was submitted that is not supported for the specified deployment type.
    public static var unsupportedActionForDeploymentTypeException: Self { .init(.unsupportedActionForDeploymentTypeException) }
}

extension CodeDeployErrorType: Equatable {
    public static func == (lhs: CodeDeployErrorType, rhs: CodeDeployErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension CodeDeployErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
