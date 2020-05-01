// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Redshift
public enum RedshiftErrorType: AWSErrorType {
    case accessToSnapshotDeniedFault(message: String?)
    case authorizationAlreadyExistsFault(message: String?)
    case authorizationNotFoundFault(message: String?)
    case authorizationQuotaExceededFault(message: String?)
    case batchDeleteRequestSizeExceededFault(message: String?)
    case batchModifyClusterSnapshotsLimitExceededFault(message: String?)
    case bucketNotFoundFault(message: String?)
    case clusterAlreadyExistsFault(message: String?)
    case clusterNotFoundFault(message: String?)
    case clusterOnLatestRevisionFault(message: String?)
    case clusterParameterGroupAlreadyExistsFault(message: String?)
    case clusterParameterGroupNotFoundFault(message: String?)
    case clusterParameterGroupQuotaExceededFault(message: String?)
    case clusterQuotaExceededFault(message: String?)
    case clusterSecurityGroupAlreadyExistsFault(message: String?)
    case clusterSecurityGroupNotFoundFault(message: String?)
    case clusterSecurityGroupQuotaExceededFault(message: String?)
    case clusterSnapshotAlreadyExistsFault(message: String?)
    case clusterSnapshotNotFoundFault(message: String?)
    case clusterSnapshotQuotaExceededFault(message: String?)
    case clusterSubnetGroupAlreadyExistsFault(message: String?)
    case clusterSubnetGroupNotFoundFault(message: String?)
    case clusterSubnetGroupQuotaExceededFault(message: String?)
    case clusterSubnetQuotaExceededFault(message: String?)
    case copyToRegionDisabledFault(message: String?)
    case dependentServiceRequestThrottlingFault(message: String?)
    case dependentServiceUnavailableFault(message: String?)
    case eventSubscriptionQuotaExceededFault(message: String?)
    case hsmClientCertificateAlreadyExistsFault(message: String?)
    case hsmClientCertificateNotFoundFault(message: String?)
    case hsmClientCertificateQuotaExceededFault(message: String?)
    case hsmConfigurationAlreadyExistsFault(message: String?)
    case hsmConfigurationNotFoundFault(message: String?)
    case hsmConfigurationQuotaExceededFault(message: String?)
    case inProgressTableRestoreQuotaExceededFault(message: String?)
    case incompatibleOrderableOptions(message: String?)
    case insufficientClusterCapacityFault(message: String?)
    case insufficientS3BucketPolicyFault(message: String?)
    case invalidClusterParameterGroupStateFault(message: String?)
    case invalidClusterSecurityGroupStateFault(message: String?)
    case invalidClusterSnapshotScheduleStateFault(message: String?)
    case invalidClusterSnapshotStateFault(message: String?)
    case invalidClusterStateFault(message: String?)
    case invalidClusterSubnetGroupStateFault(message: String?)
    case invalidClusterSubnetStateFault(message: String?)
    case invalidClusterTrackFault(message: String?)
    case invalidElasticIpFault(message: String?)
    case invalidHsmClientCertificateStateFault(message: String?)
    case invalidHsmConfigurationStateFault(message: String?)
    case invalidReservedNodeStateFault(message: String?)
    case invalidRestoreFault(message: String?)
    case invalidRetentionPeriodFault(message: String?)
    case invalidS3BucketNameFault(message: String?)
    case invalidS3KeyPrefixFault(message: String?)
    case invalidScheduleFault(message: String?)
    case invalidScheduledActionFault(message: String?)
    case invalidSnapshotCopyGrantStateFault(message: String?)
    case invalidSubnet(message: String?)
    case invalidSubscriptionStateFault(message: String?)
    case invalidTableRestoreArgumentFault(message: String?)
    case invalidTagFault(message: String?)
    case invalidUsageLimitFault(message: String?)
    case invalidVPCNetworkStateFault(message: String?)
    case limitExceededFault(message: String?)
    case numberOfNodesPerClusterLimitExceededFault(message: String?)
    case numberOfNodesQuotaExceededFault(message: String?)
    case reservedNodeAlreadyExistsFault(message: String?)
    case reservedNodeAlreadyMigratedFault(message: String?)
    case reservedNodeNotFoundFault(message: String?)
    case reservedNodeOfferingNotFoundFault(message: String?)
    case reservedNodeQuotaExceededFault(message: String?)
    case resizeNotFoundFault(message: String?)
    case resourceNotFoundFault(message: String?)
    case sNSInvalidTopicFault(message: String?)
    case sNSNoAuthorizationFault(message: String?)
    case sNSTopicArnNotFoundFault(message: String?)
    case scheduleDefinitionTypeUnsupportedFault(message: String?)
    case scheduledActionAlreadyExistsFault(message: String?)
    case scheduledActionNotFoundFault(message: String?)
    case scheduledActionQuotaExceededFault(message: String?)
    case scheduledActionTypeUnsupportedFault(message: String?)
    case snapshotCopyAlreadyDisabledFault(message: String?)
    case snapshotCopyAlreadyEnabledFault(message: String?)
    case snapshotCopyDisabledFault(message: String?)
    case snapshotCopyGrantAlreadyExistsFault(message: String?)
    case snapshotCopyGrantNotFoundFault(message: String?)
    case snapshotCopyGrantQuotaExceededFault(message: String?)
    case snapshotScheduleAlreadyExistsFault(message: String?)
    case snapshotScheduleNotFoundFault(message: String?)
    case snapshotScheduleQuotaExceededFault(message: String?)
    case snapshotScheduleUpdateInProgressFault(message: String?)
    case sourceNotFoundFault(message: String?)
    case subnetAlreadyInUse(message: String?)
    case subscriptionAlreadyExistFault(message: String?)
    case subscriptionCategoryNotFoundFault(message: String?)
    case subscriptionEventIdNotFoundFault(message: String?)
    case subscriptionNotFoundFault(message: String?)
    case subscriptionSeverityNotFoundFault(message: String?)
    case tableLimitExceededFault(message: String?)
    case tableRestoreNotFoundFault(message: String?)
    case tagLimitExceededFault(message: String?)
    case unauthorizedOperation(message: String?)
    case unknownSnapshotCopyRegionFault(message: String?)
    case unsupportedOperationFault(message: String?)
    case unsupportedOptionFault(message: String?)
    case usageLimitAlreadyExistsFault(message: String?)
    case usageLimitNotFoundFault(message: String?)
}

extension RedshiftErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AccessToSnapshotDenied":
            self = .accessToSnapshotDeniedFault(message: message)
        case "AuthorizationAlreadyExists":
            self = .authorizationAlreadyExistsFault(message: message)
        case "AuthorizationNotFound":
            self = .authorizationNotFoundFault(message: message)
        case "AuthorizationQuotaExceeded":
            self = .authorizationQuotaExceededFault(message: message)
        case "BatchDeleteRequestSizeExceeded":
            self = .batchDeleteRequestSizeExceededFault(message: message)
        case "BatchModifyClusterSnapshotsLimitExceededFault":
            self = .batchModifyClusterSnapshotsLimitExceededFault(message: message)
        case "BucketNotFoundFault":
            self = .bucketNotFoundFault(message: message)
        case "ClusterAlreadyExists":
            self = .clusterAlreadyExistsFault(message: message)
        case "ClusterNotFound":
            self = .clusterNotFoundFault(message: message)
        case "ClusterOnLatestRevision":
            self = .clusterOnLatestRevisionFault(message: message)
        case "ClusterParameterGroupAlreadyExists":
            self = .clusterParameterGroupAlreadyExistsFault(message: message)
        case "ClusterParameterGroupNotFound":
            self = .clusterParameterGroupNotFoundFault(message: message)
        case "ClusterParameterGroupQuotaExceeded":
            self = .clusterParameterGroupQuotaExceededFault(message: message)
        case "ClusterQuotaExceeded":
            self = .clusterQuotaExceededFault(message: message)
        case "ClusterSecurityGroupAlreadyExists":
            self = .clusterSecurityGroupAlreadyExistsFault(message: message)
        case "ClusterSecurityGroupNotFound":
            self = .clusterSecurityGroupNotFoundFault(message: message)
        case "QuotaExceeded.ClusterSecurityGroup":
            self = .clusterSecurityGroupQuotaExceededFault(message: message)
        case "ClusterSnapshotAlreadyExists":
            self = .clusterSnapshotAlreadyExistsFault(message: message)
        case "ClusterSnapshotNotFound":
            self = .clusterSnapshotNotFoundFault(message: message)
        case "ClusterSnapshotQuotaExceeded":
            self = .clusterSnapshotQuotaExceededFault(message: message)
        case "ClusterSubnetGroupAlreadyExists":
            self = .clusterSubnetGroupAlreadyExistsFault(message: message)
        case "ClusterSubnetGroupNotFoundFault":
            self = .clusterSubnetGroupNotFoundFault(message: message)
        case "ClusterSubnetGroupQuotaExceeded":
            self = .clusterSubnetGroupQuotaExceededFault(message: message)
        case "ClusterSubnetQuotaExceededFault":
            self = .clusterSubnetQuotaExceededFault(message: message)
        case "CopyToRegionDisabledFault":
            self = .copyToRegionDisabledFault(message: message)
        case "DependentServiceRequestThrottlingFault":
            self = .dependentServiceRequestThrottlingFault(message: message)
        case "DependentServiceUnavailableFault":
            self = .dependentServiceUnavailableFault(message: message)
        case "EventSubscriptionQuotaExceeded":
            self = .eventSubscriptionQuotaExceededFault(message: message)
        case "HsmClientCertificateAlreadyExistsFault":
            self = .hsmClientCertificateAlreadyExistsFault(message: message)
        case "HsmClientCertificateNotFoundFault":
            self = .hsmClientCertificateNotFoundFault(message: message)
        case "HsmClientCertificateQuotaExceededFault":
            self = .hsmClientCertificateQuotaExceededFault(message: message)
        case "HsmConfigurationAlreadyExistsFault":
            self = .hsmConfigurationAlreadyExistsFault(message: message)
        case "HsmConfigurationNotFoundFault":
            self = .hsmConfigurationNotFoundFault(message: message)
        case "HsmConfigurationQuotaExceededFault":
            self = .hsmConfigurationQuotaExceededFault(message: message)
        case "InProgressTableRestoreQuotaExceededFault":
            self = .inProgressTableRestoreQuotaExceededFault(message: message)
        case "IncompatibleOrderableOptions":
            self = .incompatibleOrderableOptions(message: message)
        case "InsufficientClusterCapacity":
            self = .insufficientClusterCapacityFault(message: message)
        case "InsufficientS3BucketPolicyFault":
            self = .insufficientS3BucketPolicyFault(message: message)
        case "InvalidClusterParameterGroupState":
            self = .invalidClusterParameterGroupStateFault(message: message)
        case "InvalidClusterSecurityGroupState":
            self = .invalidClusterSecurityGroupStateFault(message: message)
        case "InvalidClusterSnapshotScheduleState":
            self = .invalidClusterSnapshotScheduleStateFault(message: message)
        case "InvalidClusterSnapshotState":
            self = .invalidClusterSnapshotStateFault(message: message)
        case "InvalidClusterState":
            self = .invalidClusterStateFault(message: message)
        case "InvalidClusterSubnetGroupStateFault":
            self = .invalidClusterSubnetGroupStateFault(message: message)
        case "InvalidClusterSubnetStateFault":
            self = .invalidClusterSubnetStateFault(message: message)
        case "InvalidClusterTrack":
            self = .invalidClusterTrackFault(message: message)
        case "InvalidElasticIpFault":
            self = .invalidElasticIpFault(message: message)
        case "InvalidHsmClientCertificateStateFault":
            self = .invalidHsmClientCertificateStateFault(message: message)
        case "InvalidHsmConfigurationStateFault":
            self = .invalidHsmConfigurationStateFault(message: message)
        case "InvalidReservedNodeState":
            self = .invalidReservedNodeStateFault(message: message)
        case "InvalidRestore":
            self = .invalidRestoreFault(message: message)
        case "InvalidRetentionPeriodFault":
            self = .invalidRetentionPeriodFault(message: message)
        case "InvalidS3BucketNameFault":
            self = .invalidS3BucketNameFault(message: message)
        case "InvalidS3KeyPrefixFault":
            self = .invalidS3KeyPrefixFault(message: message)
        case "InvalidSchedule":
            self = .invalidScheduleFault(message: message)
        case "InvalidScheduledAction":
            self = .invalidScheduledActionFault(message: message)
        case "InvalidSnapshotCopyGrantStateFault":
            self = .invalidSnapshotCopyGrantStateFault(message: message)
        case "InvalidSubnet":
            self = .invalidSubnet(message: message)
        case "InvalidSubscriptionStateFault":
            self = .invalidSubscriptionStateFault(message: message)
        case "InvalidTableRestoreArgument":
            self = .invalidTableRestoreArgumentFault(message: message)
        case "InvalidTagFault":
            self = .invalidTagFault(message: message)
        case "InvalidUsageLimit":
            self = .invalidUsageLimitFault(message: message)
        case "InvalidVPCNetworkStateFault":
            self = .invalidVPCNetworkStateFault(message: message)
        case "LimitExceededFault":
            self = .limitExceededFault(message: message)
        case "NumberOfNodesPerClusterLimitExceeded":
            self = .numberOfNodesPerClusterLimitExceededFault(message: message)
        case "NumberOfNodesQuotaExceeded":
            self = .numberOfNodesQuotaExceededFault(message: message)
        case "ReservedNodeAlreadyExists":
            self = .reservedNodeAlreadyExistsFault(message: message)
        case "ReservedNodeAlreadyMigrated":
            self = .reservedNodeAlreadyMigratedFault(message: message)
        case "ReservedNodeNotFound":
            self = .reservedNodeNotFoundFault(message: message)
        case "ReservedNodeOfferingNotFound":
            self = .reservedNodeOfferingNotFoundFault(message: message)
        case "ReservedNodeQuotaExceeded":
            self = .reservedNodeQuotaExceededFault(message: message)
        case "ResizeNotFound":
            self = .resizeNotFoundFault(message: message)
        case "ResourceNotFoundFault":
            self = .resourceNotFoundFault(message: message)
        case "SNSInvalidTopic":
            self = .sNSInvalidTopicFault(message: message)
        case "SNSNoAuthorization":
            self = .sNSNoAuthorizationFault(message: message)
        case "SNSTopicArnNotFound":
            self = .sNSTopicArnNotFoundFault(message: message)
        case "ScheduleDefinitionTypeUnsupported":
            self = .scheduleDefinitionTypeUnsupportedFault(message: message)
        case "ScheduledActionAlreadyExists":
            self = .scheduledActionAlreadyExistsFault(message: message)
        case "ScheduledActionNotFound":
            self = .scheduledActionNotFoundFault(message: message)
        case "ScheduledActionQuotaExceeded":
            self = .scheduledActionQuotaExceededFault(message: message)
        case "ScheduledActionTypeUnsupported":
            self = .scheduledActionTypeUnsupportedFault(message: message)
        case "SnapshotCopyAlreadyDisabledFault":
            self = .snapshotCopyAlreadyDisabledFault(message: message)
        case "SnapshotCopyAlreadyEnabledFault":
            self = .snapshotCopyAlreadyEnabledFault(message: message)
        case "SnapshotCopyDisabledFault":
            self = .snapshotCopyDisabledFault(message: message)
        case "SnapshotCopyGrantAlreadyExistsFault":
            self = .snapshotCopyGrantAlreadyExistsFault(message: message)
        case "SnapshotCopyGrantNotFoundFault":
            self = .snapshotCopyGrantNotFoundFault(message: message)
        case "SnapshotCopyGrantQuotaExceededFault":
            self = .snapshotCopyGrantQuotaExceededFault(message: message)
        case "SnapshotScheduleAlreadyExists":
            self = .snapshotScheduleAlreadyExistsFault(message: message)
        case "SnapshotScheduleNotFound":
            self = .snapshotScheduleNotFoundFault(message: message)
        case "SnapshotScheduleQuotaExceeded":
            self = .snapshotScheduleQuotaExceededFault(message: message)
        case "SnapshotScheduleUpdateInProgress":
            self = .snapshotScheduleUpdateInProgressFault(message: message)
        case "SourceNotFound":
            self = .sourceNotFoundFault(message: message)
        case "SubnetAlreadyInUse":
            self = .subnetAlreadyInUse(message: message)
        case "SubscriptionAlreadyExist":
            self = .subscriptionAlreadyExistFault(message: message)
        case "SubscriptionCategoryNotFound":
            self = .subscriptionCategoryNotFoundFault(message: message)
        case "SubscriptionEventIdNotFound":
            self = .subscriptionEventIdNotFoundFault(message: message)
        case "SubscriptionNotFound":
            self = .subscriptionNotFoundFault(message: message)
        case "SubscriptionSeverityNotFound":
            self = .subscriptionSeverityNotFoundFault(message: message)
        case "TableLimitExceeded":
            self = .tableLimitExceededFault(message: message)
        case "TableRestoreNotFoundFault":
            self = .tableRestoreNotFoundFault(message: message)
        case "TagLimitExceededFault":
            self = .tagLimitExceededFault(message: message)
        case "UnauthorizedOperation":
            self = .unauthorizedOperation(message: message)
        case "UnknownSnapshotCopyRegionFault":
            self = .unknownSnapshotCopyRegionFault(message: message)
        case "UnsupportedOperation":
            self = .unsupportedOperationFault(message: message)
        case "UnsupportedOptionFault":
            self = .unsupportedOptionFault(message: message)
        case "UsageLimitAlreadyExists":
            self = .usageLimitAlreadyExistsFault(message: message)
        case "UsageLimitNotFound":
            self = .usageLimitNotFoundFault(message: message)
        default:
            return nil
        }
    }
}

extension RedshiftErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .accessToSnapshotDeniedFault(let message):
            return "AccessToSnapshotDenied: \(message ?? "")"
        case .authorizationAlreadyExistsFault(let message):
            return "AuthorizationAlreadyExists: \(message ?? "")"
        case .authorizationNotFoundFault(let message):
            return "AuthorizationNotFound: \(message ?? "")"
        case .authorizationQuotaExceededFault(let message):
            return "AuthorizationQuotaExceeded: \(message ?? "")"
        case .batchDeleteRequestSizeExceededFault(let message):
            return "BatchDeleteRequestSizeExceeded: \(message ?? "")"
        case .batchModifyClusterSnapshotsLimitExceededFault(let message):
            return "BatchModifyClusterSnapshotsLimitExceededFault: \(message ?? "")"
        case .bucketNotFoundFault(let message):
            return "BucketNotFoundFault: \(message ?? "")"
        case .clusterAlreadyExistsFault(let message):
            return "ClusterAlreadyExists: \(message ?? "")"
        case .clusterNotFoundFault(let message):
            return "ClusterNotFound: \(message ?? "")"
        case .clusterOnLatestRevisionFault(let message):
            return "ClusterOnLatestRevision: \(message ?? "")"
        case .clusterParameterGroupAlreadyExistsFault(let message):
            return "ClusterParameterGroupAlreadyExists: \(message ?? "")"
        case .clusterParameterGroupNotFoundFault(let message):
            return "ClusterParameterGroupNotFound: \(message ?? "")"
        case .clusterParameterGroupQuotaExceededFault(let message):
            return "ClusterParameterGroupQuotaExceeded: \(message ?? "")"
        case .clusterQuotaExceededFault(let message):
            return "ClusterQuotaExceeded: \(message ?? "")"
        case .clusterSecurityGroupAlreadyExistsFault(let message):
            return "ClusterSecurityGroupAlreadyExists: \(message ?? "")"
        case .clusterSecurityGroupNotFoundFault(let message):
            return "ClusterSecurityGroupNotFound: \(message ?? "")"
        case .clusterSecurityGroupQuotaExceededFault(let message):
            return "QuotaExceeded.ClusterSecurityGroup: \(message ?? "")"
        case .clusterSnapshotAlreadyExistsFault(let message):
            return "ClusterSnapshotAlreadyExists: \(message ?? "")"
        case .clusterSnapshotNotFoundFault(let message):
            return "ClusterSnapshotNotFound: \(message ?? "")"
        case .clusterSnapshotQuotaExceededFault(let message):
            return "ClusterSnapshotQuotaExceeded: \(message ?? "")"
        case .clusterSubnetGroupAlreadyExistsFault(let message):
            return "ClusterSubnetGroupAlreadyExists: \(message ?? "")"
        case .clusterSubnetGroupNotFoundFault(let message):
            return "ClusterSubnetGroupNotFoundFault: \(message ?? "")"
        case .clusterSubnetGroupQuotaExceededFault(let message):
            return "ClusterSubnetGroupQuotaExceeded: \(message ?? "")"
        case .clusterSubnetQuotaExceededFault(let message):
            return "ClusterSubnetQuotaExceededFault: \(message ?? "")"
        case .copyToRegionDisabledFault(let message):
            return "CopyToRegionDisabledFault: \(message ?? "")"
        case .dependentServiceRequestThrottlingFault(let message):
            return "DependentServiceRequestThrottlingFault: \(message ?? "")"
        case .dependentServiceUnavailableFault(let message):
            return "DependentServiceUnavailableFault: \(message ?? "")"
        case .eventSubscriptionQuotaExceededFault(let message):
            return "EventSubscriptionQuotaExceeded: \(message ?? "")"
        case .hsmClientCertificateAlreadyExistsFault(let message):
            return "HsmClientCertificateAlreadyExistsFault: \(message ?? "")"
        case .hsmClientCertificateNotFoundFault(let message):
            return "HsmClientCertificateNotFoundFault: \(message ?? "")"
        case .hsmClientCertificateQuotaExceededFault(let message):
            return "HsmClientCertificateQuotaExceededFault: \(message ?? "")"
        case .hsmConfigurationAlreadyExistsFault(let message):
            return "HsmConfigurationAlreadyExistsFault: \(message ?? "")"
        case .hsmConfigurationNotFoundFault(let message):
            return "HsmConfigurationNotFoundFault: \(message ?? "")"
        case .hsmConfigurationQuotaExceededFault(let message):
            return "HsmConfigurationQuotaExceededFault: \(message ?? "")"
        case .inProgressTableRestoreQuotaExceededFault(let message):
            return "InProgressTableRestoreQuotaExceededFault: \(message ?? "")"
        case .incompatibleOrderableOptions(let message):
            return "IncompatibleOrderableOptions: \(message ?? "")"
        case .insufficientClusterCapacityFault(let message):
            return "InsufficientClusterCapacity: \(message ?? "")"
        case .insufficientS3BucketPolicyFault(let message):
            return "InsufficientS3BucketPolicyFault: \(message ?? "")"
        case .invalidClusterParameterGroupStateFault(let message):
            return "InvalidClusterParameterGroupState: \(message ?? "")"
        case .invalidClusterSecurityGroupStateFault(let message):
            return "InvalidClusterSecurityGroupState: \(message ?? "")"
        case .invalidClusterSnapshotScheduleStateFault(let message):
            return "InvalidClusterSnapshotScheduleState: \(message ?? "")"
        case .invalidClusterSnapshotStateFault(let message):
            return "InvalidClusterSnapshotState: \(message ?? "")"
        case .invalidClusterStateFault(let message):
            return "InvalidClusterState: \(message ?? "")"
        case .invalidClusterSubnetGroupStateFault(let message):
            return "InvalidClusterSubnetGroupStateFault: \(message ?? "")"
        case .invalidClusterSubnetStateFault(let message):
            return "InvalidClusterSubnetStateFault: \(message ?? "")"
        case .invalidClusterTrackFault(let message):
            return "InvalidClusterTrack: \(message ?? "")"
        case .invalidElasticIpFault(let message):
            return "InvalidElasticIpFault: \(message ?? "")"
        case .invalidHsmClientCertificateStateFault(let message):
            return "InvalidHsmClientCertificateStateFault: \(message ?? "")"
        case .invalidHsmConfigurationStateFault(let message):
            return "InvalidHsmConfigurationStateFault: \(message ?? "")"
        case .invalidReservedNodeStateFault(let message):
            return "InvalidReservedNodeState: \(message ?? "")"
        case .invalidRestoreFault(let message):
            return "InvalidRestore: \(message ?? "")"
        case .invalidRetentionPeriodFault(let message):
            return "InvalidRetentionPeriodFault: \(message ?? "")"
        case .invalidS3BucketNameFault(let message):
            return "InvalidS3BucketNameFault: \(message ?? "")"
        case .invalidS3KeyPrefixFault(let message):
            return "InvalidS3KeyPrefixFault: \(message ?? "")"
        case .invalidScheduleFault(let message):
            return "InvalidSchedule: \(message ?? "")"
        case .invalidScheduledActionFault(let message):
            return "InvalidScheduledAction: \(message ?? "")"
        case .invalidSnapshotCopyGrantStateFault(let message):
            return "InvalidSnapshotCopyGrantStateFault: \(message ?? "")"
        case .invalidSubnet(let message):
            return "InvalidSubnet: \(message ?? "")"
        case .invalidSubscriptionStateFault(let message):
            return "InvalidSubscriptionStateFault: \(message ?? "")"
        case .invalidTableRestoreArgumentFault(let message):
            return "InvalidTableRestoreArgument: \(message ?? "")"
        case .invalidTagFault(let message):
            return "InvalidTagFault: \(message ?? "")"
        case .invalidUsageLimitFault(let message):
            return "InvalidUsageLimit: \(message ?? "")"
        case .invalidVPCNetworkStateFault(let message):
            return "InvalidVPCNetworkStateFault: \(message ?? "")"
        case .limitExceededFault(let message):
            return "LimitExceededFault: \(message ?? "")"
        case .numberOfNodesPerClusterLimitExceededFault(let message):
            return "NumberOfNodesPerClusterLimitExceeded: \(message ?? "")"
        case .numberOfNodesQuotaExceededFault(let message):
            return "NumberOfNodesQuotaExceeded: \(message ?? "")"
        case .reservedNodeAlreadyExistsFault(let message):
            return "ReservedNodeAlreadyExists: \(message ?? "")"
        case .reservedNodeAlreadyMigratedFault(let message):
            return "ReservedNodeAlreadyMigrated: \(message ?? "")"
        case .reservedNodeNotFoundFault(let message):
            return "ReservedNodeNotFound: \(message ?? "")"
        case .reservedNodeOfferingNotFoundFault(let message):
            return "ReservedNodeOfferingNotFound: \(message ?? "")"
        case .reservedNodeQuotaExceededFault(let message):
            return "ReservedNodeQuotaExceeded: \(message ?? "")"
        case .resizeNotFoundFault(let message):
            return "ResizeNotFound: \(message ?? "")"
        case .resourceNotFoundFault(let message):
            return "ResourceNotFoundFault: \(message ?? "")"
        case .sNSInvalidTopicFault(let message):
            return "SNSInvalidTopic: \(message ?? "")"
        case .sNSNoAuthorizationFault(let message):
            return "SNSNoAuthorization: \(message ?? "")"
        case .sNSTopicArnNotFoundFault(let message):
            return "SNSTopicArnNotFound: \(message ?? "")"
        case .scheduleDefinitionTypeUnsupportedFault(let message):
            return "ScheduleDefinitionTypeUnsupported: \(message ?? "")"
        case .scheduledActionAlreadyExistsFault(let message):
            return "ScheduledActionAlreadyExists: \(message ?? "")"
        case .scheduledActionNotFoundFault(let message):
            return "ScheduledActionNotFound: \(message ?? "")"
        case .scheduledActionQuotaExceededFault(let message):
            return "ScheduledActionQuotaExceeded: \(message ?? "")"
        case .scheduledActionTypeUnsupportedFault(let message):
            return "ScheduledActionTypeUnsupported: \(message ?? "")"
        case .snapshotCopyAlreadyDisabledFault(let message):
            return "SnapshotCopyAlreadyDisabledFault: \(message ?? "")"
        case .snapshotCopyAlreadyEnabledFault(let message):
            return "SnapshotCopyAlreadyEnabledFault: \(message ?? "")"
        case .snapshotCopyDisabledFault(let message):
            return "SnapshotCopyDisabledFault: \(message ?? "")"
        case .snapshotCopyGrantAlreadyExistsFault(let message):
            return "SnapshotCopyGrantAlreadyExistsFault: \(message ?? "")"
        case .snapshotCopyGrantNotFoundFault(let message):
            return "SnapshotCopyGrantNotFoundFault: \(message ?? "")"
        case .snapshotCopyGrantQuotaExceededFault(let message):
            return "SnapshotCopyGrantQuotaExceededFault: \(message ?? "")"
        case .snapshotScheduleAlreadyExistsFault(let message):
            return "SnapshotScheduleAlreadyExists: \(message ?? "")"
        case .snapshotScheduleNotFoundFault(let message):
            return "SnapshotScheduleNotFound: \(message ?? "")"
        case .snapshotScheduleQuotaExceededFault(let message):
            return "SnapshotScheduleQuotaExceeded: \(message ?? "")"
        case .snapshotScheduleUpdateInProgressFault(let message):
            return "SnapshotScheduleUpdateInProgress: \(message ?? "")"
        case .sourceNotFoundFault(let message):
            return "SourceNotFound: \(message ?? "")"
        case .subnetAlreadyInUse(let message):
            return "SubnetAlreadyInUse: \(message ?? "")"
        case .subscriptionAlreadyExistFault(let message):
            return "SubscriptionAlreadyExist: \(message ?? "")"
        case .subscriptionCategoryNotFoundFault(let message):
            return "SubscriptionCategoryNotFound: \(message ?? "")"
        case .subscriptionEventIdNotFoundFault(let message):
            return "SubscriptionEventIdNotFound: \(message ?? "")"
        case .subscriptionNotFoundFault(let message):
            return "SubscriptionNotFound: \(message ?? "")"
        case .subscriptionSeverityNotFoundFault(let message):
            return "SubscriptionSeverityNotFound: \(message ?? "")"
        case .tableLimitExceededFault(let message):
            return "TableLimitExceeded: \(message ?? "")"
        case .tableRestoreNotFoundFault(let message):
            return "TableRestoreNotFoundFault: \(message ?? "")"
        case .tagLimitExceededFault(let message):
            return "TagLimitExceededFault: \(message ?? "")"
        case .unauthorizedOperation(let message):
            return "UnauthorizedOperation: \(message ?? "")"
        case .unknownSnapshotCopyRegionFault(let message):
            return "UnknownSnapshotCopyRegionFault: \(message ?? "")"
        case .unsupportedOperationFault(let message):
            return "UnsupportedOperation: \(message ?? "")"
        case .unsupportedOptionFault(let message):
            return "UnsupportedOptionFault: \(message ?? "")"
        case .usageLimitAlreadyExistsFault(let message):
            return "UsageLimitAlreadyExists: \(message ?? "")"
        case .usageLimitNotFoundFault(let message):
            return "UsageLimitNotFound: \(message ?? "")"
        }
    }
}
