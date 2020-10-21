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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/soto/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import SotoCore

/// Error enum for CloudTrail
public struct CloudTrailErrorType: AWSErrorType {
    enum Code: String {
        case cloudTrailARNInvalidException = "CloudTrailARNInvalidException"
        case cloudTrailAccessNotEnabledException = "CloudTrailAccessNotEnabledException"
        case cloudWatchLogsDeliveryUnavailableException = "CloudWatchLogsDeliveryUnavailableException"
        case insightNotEnabledException = "InsightNotEnabledException"
        case insufficientDependencyServiceAccessPermissionException = "InsufficientDependencyServiceAccessPermissionException"
        case insufficientEncryptionPolicyException = "InsufficientEncryptionPolicyException"
        case insufficientS3BucketPolicyException = "InsufficientS3BucketPolicyException"
        case insufficientSnsTopicPolicyException = "InsufficientSnsTopicPolicyException"
        case invalidCloudWatchLogsLogGroupArnException = "InvalidCloudWatchLogsLogGroupArnException"
        case invalidCloudWatchLogsRoleArnException = "InvalidCloudWatchLogsRoleArnException"
        case invalidEventCategoryException = "InvalidEventCategoryException"
        case invalidEventSelectorsException = "InvalidEventSelectorsException"
        case invalidHomeRegionException = "InvalidHomeRegionException"
        case invalidInsightSelectorsException = "InvalidInsightSelectorsException"
        case invalidKmsKeyIdException = "InvalidKmsKeyIdException"
        case invalidLookupAttributesException = "InvalidLookupAttributesException"
        case invalidMaxResultsException = "InvalidMaxResultsException"
        case invalidNextTokenException = "InvalidNextTokenException"
        case invalidParameterCombinationException = "InvalidParameterCombinationException"
        case invalidS3BucketNameException = "InvalidS3BucketNameException"
        case invalidS3PrefixException = "InvalidS3PrefixException"
        case invalidSnsTopicNameException = "InvalidSnsTopicNameException"
        case invalidTagParameterException = "InvalidTagParameterException"
        case invalidTimeRangeException = "InvalidTimeRangeException"
        case invalidTokenException = "InvalidTokenException"
        case invalidTrailNameException = "InvalidTrailNameException"
        case kmsException = "KmsException"
        case kmsKeyDisabledException = "KmsKeyDisabledException"
        case kmsKeyNotFoundException = "KmsKeyNotFoundException"
        case maximumNumberOfTrailsExceededException = "MaximumNumberOfTrailsExceededException"
        case notOrganizationMasterAccountException = "NotOrganizationMasterAccountException"
        case operationNotPermittedException = "OperationNotPermittedException"
        case organizationNotInAllFeaturesModeException = "OrganizationNotInAllFeaturesModeException"
        case organizationsNotInUseException = "OrganizationsNotInUseException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case resourceTypeNotSupportedException = "ResourceTypeNotSupportedException"
        case s3BucketDoesNotExistException = "S3BucketDoesNotExistException"
        case tagsLimitExceededException = "TagsLimitExceededException"
        case trailAlreadyExistsException = "TrailAlreadyExistsException"
        case trailNotFoundException = "TrailNotFoundException"
        case trailNotProvidedException = "TrailNotProvidedException"
        case unsupportedOperationException = "UnsupportedOperationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize CloudTrail
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

    /// This exception is thrown when an operation is called with an invalid trail ARN. The format of a trail ARN is:  arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail
    public static var cloudTrailARNInvalidException: Self { .init(.cloudTrailARNInvalidException) }
    /// This exception is thrown when trusted access has not been enabled between AWS CloudTrail and AWS Organizations. For more information, see Enabling Trusted Access with Other AWS Services and Prepare For Creating a Trail For Your Organization.
    public static var cloudTrailAccessNotEnabledException: Self { .init(.cloudTrailAccessNotEnabledException) }
    /// Cannot set a CloudWatch Logs delivery for this region.
    public static var cloudWatchLogsDeliveryUnavailableException: Self { .init(.cloudWatchLogsDeliveryUnavailableException) }
    /// If you run GetInsightSelectors on a trail that does not have Insights events enabled, the operation throws the exception InsightNotEnabledException.
    public static var insightNotEnabledException: Self { .init(.insightNotEnabledException) }
    /// This exception is thrown when the IAM user or role that is used to create the organization trail is lacking one or more required permissions for creating an organization trail in a required service. For more information, see Prepare For Creating a Trail For Your Organization.
    public static var insufficientDependencyServiceAccessPermissionException: Self { .init(.insufficientDependencyServiceAccessPermissionException) }
    /// This exception is thrown when the policy on the S3 bucket or KMS key is not sufficient.
    public static var insufficientEncryptionPolicyException: Self { .init(.insufficientEncryptionPolicyException) }
    /// This exception is thrown when the policy on the S3 bucket is not sufficient.
    public static var insufficientS3BucketPolicyException: Self { .init(.insufficientS3BucketPolicyException) }
    /// This exception is thrown when the policy on the SNS topic is not sufficient.
    public static var insufficientSnsTopicPolicyException: Self { .init(.insufficientSnsTopicPolicyException) }
    /// This exception is thrown when the provided CloudWatch log group is not valid.
    public static var invalidCloudWatchLogsLogGroupArnException: Self { .init(.invalidCloudWatchLogsLogGroupArnException) }
    /// This exception is thrown when the provided role is not valid.
    public static var invalidCloudWatchLogsRoleArnException: Self { .init(.invalidCloudWatchLogsRoleArnException) }
    /// Occurs if an event category that is not valid is specified as a value of EventCategory.
    public static var invalidEventCategoryException: Self { .init(.invalidEventCategoryException) }
    /// This exception is thrown when the PutEventSelectors operation is called with a number of event selectors or data resources that is not valid. The combination of event selectors and data resources is not valid. A trail can have up to 5 event selectors. A trail is limited to 250 data resources. These data resources can be distributed across event selectors, but the overall total cannot exceed 250. You can:   Specify a valid number of event selectors (1 to 5) for a trail.   Specify a valid number of data resources (1 to 250) for an event selector. The limit of number of resources on an individual event selector is configurable up to 250. However, this upper limit is allowed only if the total number of data resources does not exceed 250 across all event selectors for a trail.   Specify a valid value for a parameter. For example, specifying the ReadWriteType parameter with a value of read-only is invalid.
    public static var invalidEventSelectorsException: Self { .init(.invalidEventSelectorsException) }
    /// This exception is thrown when an operation is called on a trail from a region other than the region in which the trail was created.
    public static var invalidHomeRegionException: Self { .init(.invalidHomeRegionException) }
    /// The formatting or syntax of the InsightSelectors JSON statement in your PutInsightSelectors or GetInsightSelectors request is not valid, or the specified insight type in the InsightSelectors statement is not a valid insight type.
    public static var invalidInsightSelectorsException: Self { .init(.invalidInsightSelectorsException) }
    /// This exception is thrown when the KMS key ARN is invalid.
    public static var invalidKmsKeyIdException: Self { .init(.invalidKmsKeyIdException) }
    /// Occurs when an invalid lookup attribute is specified.
    public static var invalidLookupAttributesException: Self { .init(.invalidLookupAttributesException) }
    /// This exception is thrown if the limit specified is invalid.
    public static var invalidMaxResultsException: Self { .init(.invalidMaxResultsException) }
    /// Invalid token or token that was previously used in a request with different parameters. This exception is thrown if the token is invalid.
    public static var invalidNextTokenException: Self { .init(.invalidNextTokenException) }
    /// This exception is thrown when the combination of parameters provided is not valid.
    public static var invalidParameterCombinationException: Self { .init(.invalidParameterCombinationException) }
    /// This exception is thrown when the provided S3 bucket name is not valid.
    public static var invalidS3BucketNameException: Self { .init(.invalidS3BucketNameException) }
    /// This exception is thrown when the provided S3 prefix is not valid.
    public static var invalidS3PrefixException: Self { .init(.invalidS3PrefixException) }
    /// This exception is thrown when the provided SNS topic name is not valid.
    public static var invalidSnsTopicNameException: Self { .init(.invalidSnsTopicNameException) }
    /// This exception is thrown when the specified tag key or values are not valid. It can also occur if there are duplicate tags or too many tags on the resource.
    public static var invalidTagParameterException: Self { .init(.invalidTagParameterException) }
    /// Occurs if the timestamp values are invalid. Either the start time occurs after the end time or the time range is outside the range of possible values.
    public static var invalidTimeRangeException: Self { .init(.invalidTimeRangeException) }
    /// Reserved for future use.
    public static var invalidTokenException: Self { .init(.invalidTokenException) }
    /// This exception is thrown when the provided trail name is not valid. Trail names must meet the following requirements:   Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)   Start with a letter or number, and end with a letter or number   Be between 3 and 128 characters   Have no adjacent periods, underscores or dashes. Names like my-_namespace and my--namespace are invalid.   Not be in IP address format (for example, 192.168.5.4)
    public static var invalidTrailNameException: Self { .init(.invalidTrailNameException) }
    /// This exception is thrown when there is an issue with the specified KMS key and the trail can’t be updated.
    public static var kmsException: Self { .init(.kmsException) }
    /// This exception is no longer in use.
    public static var kmsKeyDisabledException: Self { .init(.kmsKeyDisabledException) }
    /// This exception is thrown when the KMS key does not exist, or when the S3 bucket and the KMS key are not in the same region.
    public static var kmsKeyNotFoundException: Self { .init(.kmsKeyNotFoundException) }
    /// This exception is thrown when the maximum number of trails is reached.
    public static var maximumNumberOfTrailsExceededException: Self { .init(.maximumNumberOfTrailsExceededException) }
    /// This exception is thrown when the AWS account making the request to create or update an organization trail is not the master account for an organization in AWS Organizations. For more information, see Prepare For Creating a Trail For Your Organization.
    public static var notOrganizationMasterAccountException: Self { .init(.notOrganizationMasterAccountException) }
    /// This exception is thrown when the requested operation is not permitted.
    public static var operationNotPermittedException: Self { .init(.operationNotPermittedException) }
    /// This exception is thrown when AWS Organizations is not configured to support all features. All features must be enabled in AWS Organization to support creating an organization trail. For more information, see Prepare For Creating a Trail For Your Organization.
    public static var organizationNotInAllFeaturesModeException: Self { .init(.organizationNotInAllFeaturesModeException) }
    /// This exception is thrown when the request is made from an AWS account that is not a member of an organization. To make this request, sign in using the credentials of an account that belongs to an organization.
    public static var organizationsNotInUseException: Self { .init(.organizationsNotInUseException) }
    /// This exception is thrown when the specified resource is not found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// This exception is thrown when the specified resource type is not supported by CloudTrail.
    public static var resourceTypeNotSupportedException: Self { .init(.resourceTypeNotSupportedException) }
    /// This exception is thrown when the specified S3 bucket does not exist.
    public static var s3BucketDoesNotExistException: Self { .init(.s3BucketDoesNotExistException) }
    /// The number of tags per trail has exceeded the permitted amount. Currently, the limit is 50.
    public static var tagsLimitExceededException: Self { .init(.tagsLimitExceededException) }
    /// This exception is thrown when the specified trail already exists.
    public static var trailAlreadyExistsException: Self { .init(.trailAlreadyExistsException) }
    /// This exception is thrown when the trail with the given name is not found.
    public static var trailNotFoundException: Self { .init(.trailNotFoundException) }
    /// This exception is no longer in use.
    public static var trailNotProvidedException: Self { .init(.trailNotProvidedException) }
    /// This exception is thrown when the requested operation is not supported.
    public static var unsupportedOperationException: Self { .init(.unsupportedOperationException) }
}

extension CloudTrailErrorType: Equatable {
    public static func == (lhs: CloudTrailErrorType, rhs: CloudTrailErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension CloudTrailErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
