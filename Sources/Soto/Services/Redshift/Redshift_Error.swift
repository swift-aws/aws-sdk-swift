//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
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

/// Error enum for Redshift
public struct RedshiftErrorType: AWSErrorType {
    enum Code: String {
        case accessToSnapshotDeniedFault = "AccessToSnapshotDenied"
        case authorizationAlreadyExistsFault = "AuthorizationAlreadyExists"
        case authorizationNotFoundFault = "AuthorizationNotFound"
        case authorizationQuotaExceededFault = "AuthorizationQuotaExceeded"
        case batchDeleteRequestSizeExceededFault = "BatchDeleteRequestSizeExceeded"
        case batchModifyClusterSnapshotsLimitExceededFault = "BatchModifyClusterSnapshotsLimitExceededFault"
        case bucketNotFoundFault = "BucketNotFoundFault"
        case clusterAlreadyExistsFault = "ClusterAlreadyExists"
        case clusterNotFoundFault = "ClusterNotFound"
        case clusterOnLatestRevisionFault = "ClusterOnLatestRevision"
        case clusterParameterGroupAlreadyExistsFault = "ClusterParameterGroupAlreadyExists"
        case clusterParameterGroupNotFoundFault = "ClusterParameterGroupNotFound"
        case clusterParameterGroupQuotaExceededFault = "ClusterParameterGroupQuotaExceeded"
        case clusterQuotaExceededFault = "ClusterQuotaExceeded"
        case clusterSecurityGroupAlreadyExistsFault = "ClusterSecurityGroupAlreadyExists"
        case clusterSecurityGroupNotFoundFault = "ClusterSecurityGroupNotFound"
        case clusterSecurityGroupQuotaExceededFault = "QuotaExceeded.ClusterSecurityGroup"
        case clusterSnapshotAlreadyExistsFault = "ClusterSnapshotAlreadyExists"
        case clusterSnapshotNotFoundFault = "ClusterSnapshotNotFound"
        case clusterSnapshotQuotaExceededFault = "ClusterSnapshotQuotaExceeded"
        case clusterSubnetGroupAlreadyExistsFault = "ClusterSubnetGroupAlreadyExists"
        case clusterSubnetGroupNotFoundFault = "ClusterSubnetGroupNotFoundFault"
        case clusterSubnetGroupQuotaExceededFault = "ClusterSubnetGroupQuotaExceeded"
        case clusterSubnetQuotaExceededFault = "ClusterSubnetQuotaExceededFault"
        case copyToRegionDisabledFault = "CopyToRegionDisabledFault"
        case dependentServiceRequestThrottlingFault = "DependentServiceRequestThrottlingFault"
        case dependentServiceUnavailableFault = "DependentServiceUnavailableFault"
        case eventSubscriptionQuotaExceededFault = "EventSubscriptionQuotaExceeded"
        case hsmClientCertificateAlreadyExistsFault = "HsmClientCertificateAlreadyExistsFault"
        case hsmClientCertificateNotFoundFault = "HsmClientCertificateNotFoundFault"
        case hsmClientCertificateQuotaExceededFault = "HsmClientCertificateQuotaExceededFault"
        case hsmConfigurationAlreadyExistsFault = "HsmConfigurationAlreadyExistsFault"
        case hsmConfigurationNotFoundFault = "HsmConfigurationNotFoundFault"
        case hsmConfigurationQuotaExceededFault = "HsmConfigurationQuotaExceededFault"
        case inProgressTableRestoreQuotaExceededFault = "InProgressTableRestoreQuotaExceededFault"
        case incompatibleOrderableOptions = "IncompatibleOrderableOptions"
        case insufficientClusterCapacityFault = "InsufficientClusterCapacity"
        case insufficientS3BucketPolicyFault = "InsufficientS3BucketPolicyFault"
        case invalidClusterParameterGroupStateFault = "InvalidClusterParameterGroupState"
        case invalidClusterSecurityGroupStateFault = "InvalidClusterSecurityGroupState"
        case invalidClusterSnapshotScheduleStateFault = "InvalidClusterSnapshotScheduleState"
        case invalidClusterSnapshotStateFault = "InvalidClusterSnapshotState"
        case invalidClusterStateFault = "InvalidClusterState"
        case invalidClusterSubnetGroupStateFault = "InvalidClusterSubnetGroupStateFault"
        case invalidClusterSubnetStateFault = "InvalidClusterSubnetStateFault"
        case invalidClusterTrackFault = "InvalidClusterTrack"
        case invalidElasticIpFault = "InvalidElasticIpFault"
        case invalidHsmClientCertificateStateFault = "InvalidHsmClientCertificateStateFault"
        case invalidHsmConfigurationStateFault = "InvalidHsmConfigurationStateFault"
        case invalidReservedNodeStateFault = "InvalidReservedNodeState"
        case invalidRestoreFault = "InvalidRestore"
        case invalidRetentionPeriodFault = "InvalidRetentionPeriodFault"
        case invalidS3BucketNameFault = "InvalidS3BucketNameFault"
        case invalidS3KeyPrefixFault = "InvalidS3KeyPrefixFault"
        case invalidScheduleFault = "InvalidSchedule"
        case invalidScheduledActionFault = "InvalidScheduledAction"
        case invalidSnapshotCopyGrantStateFault = "InvalidSnapshotCopyGrantStateFault"
        case invalidSubnet = "InvalidSubnet"
        case invalidSubscriptionStateFault = "InvalidSubscriptionStateFault"
        case invalidTableRestoreArgumentFault = "InvalidTableRestoreArgument"
        case invalidTagFault = "InvalidTagFault"
        case invalidUsageLimitFault = "InvalidUsageLimit"
        case invalidVPCNetworkStateFault = "InvalidVPCNetworkStateFault"
        case limitExceededFault = "LimitExceededFault"
        case numberOfNodesPerClusterLimitExceededFault = "NumberOfNodesPerClusterLimitExceeded"
        case numberOfNodesQuotaExceededFault = "NumberOfNodesQuotaExceeded"
        case reservedNodeAlreadyExistsFault = "ReservedNodeAlreadyExists"
        case reservedNodeAlreadyMigratedFault = "ReservedNodeAlreadyMigrated"
        case reservedNodeNotFoundFault = "ReservedNodeNotFound"
        case reservedNodeOfferingNotFoundFault = "ReservedNodeOfferingNotFound"
        case reservedNodeQuotaExceededFault = "ReservedNodeQuotaExceeded"
        case resizeNotFoundFault = "ResizeNotFound"
        case resourceNotFoundFault = "ResourceNotFoundFault"
        case sNSInvalidTopicFault = "SNSInvalidTopic"
        case sNSNoAuthorizationFault = "SNSNoAuthorization"
        case sNSTopicArnNotFoundFault = "SNSTopicArnNotFound"
        case scheduleDefinitionTypeUnsupportedFault = "ScheduleDefinitionTypeUnsupported"
        case scheduledActionAlreadyExistsFault = "ScheduledActionAlreadyExists"
        case scheduledActionNotFoundFault = "ScheduledActionNotFound"
        case scheduledActionQuotaExceededFault = "ScheduledActionQuotaExceeded"
        case scheduledActionTypeUnsupportedFault = "ScheduledActionTypeUnsupported"
        case snapshotCopyAlreadyDisabledFault = "SnapshotCopyAlreadyDisabledFault"
        case snapshotCopyAlreadyEnabledFault = "SnapshotCopyAlreadyEnabledFault"
        case snapshotCopyDisabledFault = "SnapshotCopyDisabledFault"
        case snapshotCopyGrantAlreadyExistsFault = "SnapshotCopyGrantAlreadyExistsFault"
        case snapshotCopyGrantNotFoundFault = "SnapshotCopyGrantNotFoundFault"
        case snapshotCopyGrantQuotaExceededFault = "SnapshotCopyGrantQuotaExceededFault"
        case snapshotScheduleAlreadyExistsFault = "SnapshotScheduleAlreadyExists"
        case snapshotScheduleNotFoundFault = "SnapshotScheduleNotFound"
        case snapshotScheduleQuotaExceededFault = "SnapshotScheduleQuotaExceeded"
        case snapshotScheduleUpdateInProgressFault = "SnapshotScheduleUpdateInProgress"
        case sourceNotFoundFault = "SourceNotFound"
        case subnetAlreadyInUse = "SubnetAlreadyInUse"
        case subscriptionAlreadyExistFault = "SubscriptionAlreadyExist"
        case subscriptionCategoryNotFoundFault = "SubscriptionCategoryNotFound"
        case subscriptionEventIdNotFoundFault = "SubscriptionEventIdNotFound"
        case subscriptionNotFoundFault = "SubscriptionNotFound"
        case subscriptionSeverityNotFoundFault = "SubscriptionSeverityNotFound"
        case tableLimitExceededFault = "TableLimitExceeded"
        case tableRestoreNotFoundFault = "TableRestoreNotFoundFault"
        case tagLimitExceededFault = "TagLimitExceededFault"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unknownSnapshotCopyRegionFault = "UnknownSnapshotCopyRegionFault"
        case unsupportedOperationFault = "UnsupportedOperation"
        case unsupportedOptionFault = "UnsupportedOptionFault"
        case usageLimitAlreadyExistsFault = "UsageLimitAlreadyExists"
        case usageLimitNotFoundFault = "UsageLimitNotFound"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Redshift
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

    /// The owner of the specified snapshot has not authorized your account to access the snapshot.
    public static var accessToSnapshotDeniedFault: Self { .init(.accessToSnapshotDeniedFault) }
    /// The specified CIDR block or EC2 security group is already authorized for the specified cluster security group.
    public static var authorizationAlreadyExistsFault: Self { .init(.authorizationAlreadyExistsFault) }
    /// The specified CIDR IP range or EC2 security group is not authorized for the specified cluster security group.
    public static var authorizationNotFoundFault: Self { .init(.authorizationNotFoundFault) }
    /// The authorization quota for the cluster security group has been reached.
    public static var authorizationQuotaExceededFault: Self { .init(.authorizationQuotaExceededFault) }
    /// The maximum number for a batch delete of snapshots has been reached. The limit is 100.
    public static var batchDeleteRequestSizeExceededFault: Self { .init(.batchDeleteRequestSizeExceededFault) }
    /// The maximum number for snapshot identifiers has been reached. The limit is 100.
    public static var batchModifyClusterSnapshotsLimitExceededFault: Self { .init(.batchModifyClusterSnapshotsLimitExceededFault) }
    /// Could not find the specified S3 bucket.
    public static var bucketNotFoundFault: Self { .init(.bucketNotFoundFault) }
    /// The account already has a cluster with the given identifier.
    public static var clusterAlreadyExistsFault: Self { .init(.clusterAlreadyExistsFault) }
    /// The ClusterIdentifier parameter does not refer to an existing cluster.
    public static var clusterNotFoundFault: Self { .init(.clusterNotFoundFault) }
    /// Cluster is already on the latest database revision.
    public static var clusterOnLatestRevisionFault: Self { .init(.clusterOnLatestRevisionFault) }
    /// A cluster parameter group with the same name already exists.
    public static var clusterParameterGroupAlreadyExistsFault: Self { .init(.clusterParameterGroupAlreadyExistsFault) }
    /// The parameter group name does not refer to an existing parameter group.
    public static var clusterParameterGroupNotFoundFault: Self { .init(.clusterParameterGroupNotFoundFault) }
    /// The request would result in the user exceeding the allowed number of cluster parameter groups. For information about increasing your quota, go to Limits in Amazon Redshift in the Amazon Redshift Cluster Management Guide.
    public static var clusterParameterGroupQuotaExceededFault: Self { .init(.clusterParameterGroupQuotaExceededFault) }
    /// The request would exceed the allowed number of cluster instances for this account. For information about increasing your quota, go to Limits in Amazon Redshift in the Amazon Redshift Cluster Management Guide.
    public static var clusterQuotaExceededFault: Self { .init(.clusterQuotaExceededFault) }
    /// A cluster security group with the same name already exists.
    public static var clusterSecurityGroupAlreadyExistsFault: Self { .init(.clusterSecurityGroupAlreadyExistsFault) }
    /// The cluster security group name does not refer to an existing cluster security group.
    public static var clusterSecurityGroupNotFoundFault: Self { .init(.clusterSecurityGroupNotFoundFault) }
    /// The request would result in the user exceeding the allowed number of cluster security groups. For information about increasing your quota, go to Limits in Amazon Redshift in the Amazon Redshift Cluster Management Guide.
    public static var clusterSecurityGroupQuotaExceededFault: Self { .init(.clusterSecurityGroupQuotaExceededFault) }
    /// The value specified as a snapshot identifier is already used by an existing snapshot.
    public static var clusterSnapshotAlreadyExistsFault: Self { .init(.clusterSnapshotAlreadyExistsFault) }
    /// The snapshot identifier does not refer to an existing cluster snapshot.
    public static var clusterSnapshotNotFoundFault: Self { .init(.clusterSnapshotNotFoundFault) }
    /// The request would result in the user exceeding the allowed number of cluster snapshots.
    public static var clusterSnapshotQuotaExceededFault: Self { .init(.clusterSnapshotQuotaExceededFault) }
    /// A ClusterSubnetGroupName is already used by an existing cluster subnet group.
    public static var clusterSubnetGroupAlreadyExistsFault: Self { .init(.clusterSubnetGroupAlreadyExistsFault) }
    /// The cluster subnet group name does not refer to an existing cluster subnet group.
    public static var clusterSubnetGroupNotFoundFault: Self { .init(.clusterSubnetGroupNotFoundFault) }
    /// The request would result in user exceeding the allowed number of cluster subnet groups. For information about increasing your quota, go to Limits in Amazon Redshift in the Amazon Redshift Cluster Management Guide.
    public static var clusterSubnetGroupQuotaExceededFault: Self { .init(.clusterSubnetGroupQuotaExceededFault) }
    /// The request would result in user exceeding the allowed number of subnets in a cluster subnet groups. For information about increasing your quota, go to Limits in Amazon Redshift in the Amazon Redshift Cluster Management Guide.
    public static var clusterSubnetQuotaExceededFault: Self { .init(.clusterSubnetQuotaExceededFault) }
    /// Cross-region snapshot copy was temporarily disabled. Try your request again.
    public static var copyToRegionDisabledFault: Self { .init(.copyToRegionDisabledFault) }
    /// The request cannot be completed because a dependent service is throttling requests made by Amazon Redshift on your behalf. Wait and retry the request.
    public static var dependentServiceRequestThrottlingFault: Self { .init(.dependentServiceRequestThrottlingFault) }
    /// Your request cannot be completed because a dependent internal service is temporarily unavailable. Wait 30 to 60 seconds and try again.
    public static var dependentServiceUnavailableFault: Self { .init(.dependentServiceUnavailableFault) }
    /// The request would exceed the allowed number of event subscriptions for this account. For information about increasing your quota, go to Limits in Amazon Redshift in the Amazon Redshift Cluster Management Guide.
    public static var eventSubscriptionQuotaExceededFault: Self { .init(.eventSubscriptionQuotaExceededFault) }
    /// There is already an existing Amazon Redshift HSM client certificate with the specified identifier.
    public static var hsmClientCertificateAlreadyExistsFault: Self { .init(.hsmClientCertificateAlreadyExistsFault) }
    /// There is no Amazon Redshift HSM client certificate with the specified identifier.
    public static var hsmClientCertificateNotFoundFault: Self { .init(.hsmClientCertificateNotFoundFault) }
    /// The quota for HSM client certificates has been reached. For information about increasing your quota, go to Limits in Amazon Redshift in the Amazon Redshift Cluster Management Guide.
    public static var hsmClientCertificateQuotaExceededFault: Self { .init(.hsmClientCertificateQuotaExceededFault) }
    /// There is already an existing Amazon Redshift HSM configuration with the specified identifier.
    public static var hsmConfigurationAlreadyExistsFault: Self { .init(.hsmConfigurationAlreadyExistsFault) }
    /// There is no Amazon Redshift HSM configuration with the specified identifier.
    public static var hsmConfigurationNotFoundFault: Self { .init(.hsmConfigurationNotFoundFault) }
    /// The quota for HSM configurations has been reached. For information about increasing your quota, go to Limits in Amazon Redshift in the Amazon Redshift Cluster Management Guide.
    public static var hsmConfigurationQuotaExceededFault: Self { .init(.hsmConfigurationQuotaExceededFault) }
    /// You have exceeded the allowed number of table restore requests. Wait for your current table restore requests to complete before making a new request.
    public static var inProgressTableRestoreQuotaExceededFault: Self { .init(.inProgressTableRestoreQuotaExceededFault) }
    /// The specified options are incompatible.
    public static var incompatibleOrderableOptions: Self { .init(.incompatibleOrderableOptions) }
    /// The number of nodes specified exceeds the allotted capacity of the cluster.
    public static var insufficientClusterCapacityFault: Self { .init(.insufficientClusterCapacityFault) }
    /// The cluster does not have read bucket or put object permissions on the S3 bucket specified when enabling logging.
    public static var insufficientS3BucketPolicyFault: Self { .init(.insufficientS3BucketPolicyFault) }
    /// The cluster parameter group action can not be completed because another task is in progress that involves the parameter group. Wait a few moments and try the operation again.
    public static var invalidClusterParameterGroupStateFault: Self { .init(.invalidClusterParameterGroupStateFault) }
    /// The state of the cluster security group is not available.
    public static var invalidClusterSecurityGroupStateFault: Self { .init(.invalidClusterSecurityGroupStateFault) }
    /// The cluster snapshot schedule state is not valid.
    public static var invalidClusterSnapshotScheduleStateFault: Self { .init(.invalidClusterSnapshotScheduleStateFault) }
    /// The specified cluster snapshot is not in the available state, or other accounts are authorized to access the snapshot.
    public static var invalidClusterSnapshotStateFault: Self { .init(.invalidClusterSnapshotStateFault) }
    /// The specified cluster is not in the available state.
    public static var invalidClusterStateFault: Self { .init(.invalidClusterStateFault) }
    /// The cluster subnet group cannot be deleted because it is in use.
    public static var invalidClusterSubnetGroupStateFault: Self { .init(.invalidClusterSubnetGroupStateFault) }
    /// The state of the subnet is invalid.
    public static var invalidClusterSubnetStateFault: Self { .init(.invalidClusterSubnetStateFault) }
    /// The provided cluster track name is not valid.
    public static var invalidClusterTrackFault: Self { .init(.invalidClusterTrackFault) }
    /// The Elastic IP (EIP) is invalid or cannot be found.
    public static var invalidElasticIpFault: Self { .init(.invalidElasticIpFault) }
    /// The specified HSM client certificate is not in the available state, or it is still in use by one or more Amazon Redshift clusters.
    public static var invalidHsmClientCertificateStateFault: Self { .init(.invalidHsmClientCertificateStateFault) }
    /// The specified HSM configuration is not in the available state, or it is still in use by one or more Amazon Redshift clusters.
    public static var invalidHsmConfigurationStateFault: Self { .init(.invalidHsmConfigurationStateFault) }
    /// Indicates that the Reserved Node being exchanged is not in an active state.
    public static var invalidReservedNodeStateFault: Self { .init(.invalidReservedNodeStateFault) }
    /// The restore is invalid.
    public static var invalidRestoreFault: Self { .init(.invalidRestoreFault) }
    /// The retention period specified is either in the past or is not a valid value. The value must be either -1 or an integer between 1 and 3,653.
    public static var invalidRetentionPeriodFault: Self { .init(.invalidRetentionPeriodFault) }
    /// The S3 bucket name is invalid. For more information about naming rules, go to Bucket Restrictions and Limitations in the Amazon Simple Storage Service (S3) Developer Guide.
    public static var invalidS3BucketNameFault: Self { .init(.invalidS3BucketNameFault) }
    /// The string specified for the logging S3 key prefix does not comply with the documented constraints.
    public static var invalidS3KeyPrefixFault: Self { .init(.invalidS3KeyPrefixFault) }
    /// The schedule you submitted isn't valid.
    public static var invalidScheduleFault: Self { .init(.invalidScheduleFault) }
    /// The scheduled action is not valid.
    public static var invalidScheduledActionFault: Self { .init(.invalidScheduledActionFault) }
    /// The snapshot copy grant can't be deleted because it is used by one or more clusters.
    public static var invalidSnapshotCopyGrantStateFault: Self { .init(.invalidSnapshotCopyGrantStateFault) }
    /// The requested subnet is not valid, or not all of the subnets are in the same VPC.
    public static var invalidSubnet: Self { .init(.invalidSubnet) }
    /// The subscription request is invalid because it is a duplicate request. This subscription request is already in progress.
    public static var invalidSubscriptionStateFault: Self { .init(.invalidSubscriptionStateFault) }
    /// The value specified for the sourceDatabaseName, sourceSchemaName, or sourceTableName parameter, or a combination of these, doesn't exist in the snapshot.
    public static var invalidTableRestoreArgumentFault: Self { .init(.invalidTableRestoreArgumentFault) }
    /// The tag is invalid.
    public static var invalidTagFault: Self { .init(.invalidTagFault) }
    /// The usage limit is not valid.
    public static var invalidUsageLimitFault: Self { .init(.invalidUsageLimitFault) }
    /// The cluster subnet group does not cover all Availability Zones.
    public static var invalidVPCNetworkStateFault: Self { .init(.invalidVPCNetworkStateFault) }
    /// The encryption key has exceeded its grant limit in AWS KMS.
    public static var limitExceededFault: Self { .init(.limitExceededFault) }
    /// The operation would exceed the number of nodes allowed for a cluster.
    public static var numberOfNodesPerClusterLimitExceededFault: Self { .init(.numberOfNodesPerClusterLimitExceededFault) }
    /// The operation would exceed the number of nodes allotted to the account. For information about increasing your quota, go to Limits in Amazon Redshift in the Amazon Redshift Cluster Management Guide.
    public static var numberOfNodesQuotaExceededFault: Self { .init(.numberOfNodesQuotaExceededFault) }
    /// User already has a reservation with the given identifier.
    public static var reservedNodeAlreadyExistsFault: Self { .init(.reservedNodeAlreadyExistsFault) }
    /// Indicates that the reserved node has already been exchanged.
    public static var reservedNodeAlreadyMigratedFault: Self { .init(.reservedNodeAlreadyMigratedFault) }
    /// The specified reserved compute node not found.
    public static var reservedNodeNotFoundFault: Self { .init(.reservedNodeNotFoundFault) }
    /// Specified offering does not exist.
    public static var reservedNodeOfferingNotFoundFault: Self { .init(.reservedNodeOfferingNotFoundFault) }
    /// Request would exceed the user's compute node quota. For information about increasing your quota, go to Limits in Amazon Redshift in the Amazon Redshift Cluster Management Guide.
    public static var reservedNodeQuotaExceededFault: Self { .init(.reservedNodeQuotaExceededFault) }
    /// A resize operation for the specified cluster is not found.
    public static var resizeNotFoundFault: Self { .init(.resizeNotFoundFault) }
    /// The resource could not be found.
    public static var resourceNotFoundFault: Self { .init(.resourceNotFoundFault) }
    /// Amazon SNS has responded that there is a problem with the specified Amazon SNS topic.
    public static var sNSInvalidTopicFault: Self { .init(.sNSInvalidTopicFault) }
    /// You do not have permission to publish to the specified Amazon SNS topic.
    public static var sNSNoAuthorizationFault: Self { .init(.sNSNoAuthorizationFault) }
    /// An Amazon SNS topic with the specified Amazon Resource Name (ARN) does not exist.
    public static var sNSTopicArnNotFoundFault: Self { .init(.sNSTopicArnNotFoundFault) }
    /// The definition you submitted is not supported.
    public static var scheduleDefinitionTypeUnsupportedFault: Self { .init(.scheduleDefinitionTypeUnsupportedFault) }
    /// The scheduled action already exists.
    public static var scheduledActionAlreadyExistsFault: Self { .init(.scheduledActionAlreadyExistsFault) }
    /// The scheduled action cannot be found.
    public static var scheduledActionNotFoundFault: Self { .init(.scheduledActionNotFoundFault) }
    /// The quota for scheduled actions exceeded.
    public static var scheduledActionQuotaExceededFault: Self { .init(.scheduledActionQuotaExceededFault) }
    /// The action type specified for a scheduled action is not supported.
    public static var scheduledActionTypeUnsupportedFault: Self { .init(.scheduledActionTypeUnsupportedFault) }
    /// The cluster already has cross-region snapshot copy disabled.
    public static var snapshotCopyAlreadyDisabledFault: Self { .init(.snapshotCopyAlreadyDisabledFault) }
    /// The cluster already has cross-region snapshot copy enabled.
    public static var snapshotCopyAlreadyEnabledFault: Self { .init(.snapshotCopyAlreadyEnabledFault) }
    /// Cross-region snapshot copy was temporarily disabled. Try your request again.
    public static var snapshotCopyDisabledFault: Self { .init(.snapshotCopyDisabledFault) }
    /// The snapshot copy grant can't be created because a grant with the same name already exists.
    public static var snapshotCopyGrantAlreadyExistsFault: Self { .init(.snapshotCopyGrantAlreadyExistsFault) }
    /// The specified snapshot copy grant can't be found. Make sure that the name is typed correctly and that the grant exists in the destination region.
    public static var snapshotCopyGrantNotFoundFault: Self { .init(.snapshotCopyGrantNotFoundFault) }
    /// The AWS account has exceeded the maximum number of snapshot copy grants in this region.
    public static var snapshotCopyGrantQuotaExceededFault: Self { .init(.snapshotCopyGrantQuotaExceededFault) }
    /// The specified snapshot schedule already exists.
    public static var snapshotScheduleAlreadyExistsFault: Self { .init(.snapshotScheduleAlreadyExistsFault) }
    /// We could not find the specified snapshot schedule.
    public static var snapshotScheduleNotFoundFault: Self { .init(.snapshotScheduleNotFoundFault) }
    /// You have exceeded the quota of snapshot schedules.
    public static var snapshotScheduleQuotaExceededFault: Self { .init(.snapshotScheduleQuotaExceededFault) }
    /// The specified snapshot schedule is already being updated.
    public static var snapshotScheduleUpdateInProgressFault: Self { .init(.snapshotScheduleUpdateInProgressFault) }
    /// The specified Amazon Redshift event source could not be found.
    public static var sourceNotFoundFault: Self { .init(.sourceNotFoundFault) }
    /// A specified subnet is already in use by another cluster.
    public static var subnetAlreadyInUse: Self { .init(.subnetAlreadyInUse) }
    /// There is already an existing event notification subscription with the specified name.
    public static var subscriptionAlreadyExistFault: Self { .init(.subscriptionAlreadyExistFault) }
    /// The value specified for the event category was not one of the allowed values, or it specified a category that does not apply to the specified source type. The allowed values are Configuration, Management, Monitoring, and Security.
    public static var subscriptionCategoryNotFoundFault: Self { .init(.subscriptionCategoryNotFoundFault) }
    /// An Amazon Redshift event with the specified event ID does not exist.
    public static var subscriptionEventIdNotFoundFault: Self { .init(.subscriptionEventIdNotFoundFault) }
    /// An Amazon Redshift event notification subscription with the specified name does not exist.
    public static var subscriptionNotFoundFault: Self { .init(.subscriptionNotFoundFault) }
    /// The value specified for the event severity was not one of the allowed values, or it specified a severity that does not apply to the specified source type. The allowed values are ERROR and INFO.
    public static var subscriptionSeverityNotFoundFault: Self { .init(.subscriptionSeverityNotFoundFault) }
    /// The number of tables in the cluster exceeds the limit for the requested new cluster node type.
    public static var tableLimitExceededFault: Self { .init(.tableLimitExceededFault) }
    /// The specified TableRestoreRequestId value was not found.
    public static var tableRestoreNotFoundFault: Self { .init(.tableRestoreNotFoundFault) }
    /// You have exceeded the number of tags allowed.
    public static var tagLimitExceededFault: Self { .init(.tagLimitExceededFault) }
    /// Your account is not authorized to perform the requested operation.
    public static var unauthorizedOperation: Self { .init(.unauthorizedOperation) }
    /// The specified region is incorrect or does not exist.
    public static var unknownSnapshotCopyRegionFault: Self { .init(.unknownSnapshotCopyRegionFault) }
    /// The requested operation isn't supported.
    public static var unsupportedOperationFault: Self { .init(.unsupportedOperationFault) }
    /// A request option was specified that is not supported.
    public static var unsupportedOptionFault: Self { .init(.unsupportedOptionFault) }
    /// The usage limit already exists.
    public static var usageLimitAlreadyExistsFault: Self { .init(.usageLimitAlreadyExistsFault) }
    /// The usage limit identifier can't be found.
    public static var usageLimitNotFoundFault: Self { .init(.usageLimitNotFoundFault) }
}

extension RedshiftErrorType: Equatable {
    public static func == (lhs: RedshiftErrorType, rhs: RedshiftErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension RedshiftErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
