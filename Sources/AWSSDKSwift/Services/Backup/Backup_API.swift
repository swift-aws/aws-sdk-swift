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
Client object for interacting with AWS Backup service.

AWS Backup AWS Backup is a unified backup service designed to protect AWS services and their associated data. AWS Backup simplifies the creation, migration, restoration, and deletion of backups, while also providing reporting and auditing.
*/
public struct Backup {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the Backup client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        accessKeyId: String? = nil,
        secretAccessKey: String? = nil,
        sessionToken: String? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSSDKSwiftCore.Partition = .aws,
        endpoint: String? = nil,
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            partition: region?.partition ?? partition,
            service: "backup",
            serviceProtocol: .restjson,
            apiVersion: "2018-11-15",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [BackupErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Backup plans are documents that contain information that AWS Backup uses to schedule tasks that create recovery points of resources. If you call CreateBackupPlan with a plan that already exists, an AlreadyExistsException is returned.
    public func createBackupPlan(_ input: CreateBackupPlanInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBackupPlanOutput> {
        return client.send(operation: "CreateBackupPlan", path: "/backup/plans/", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Creates a JSON document that specifies a set of resources to assign to a backup plan. Resources can be included by specifying patterns for a ListOfTags and selected Resources.  For example, consider the following patterns:    Resources: "arn:aws:ec2:region:account-id:volume/volume-id"     ConditionKey:"department"   ConditionValue:"finance"   ConditionType:"STRINGEQUALS"     ConditionKey:"importance"   ConditionValue:"critical"   ConditionType:"STRINGEQUALS"    Using these patterns would back up all Amazon Elastic Block Store (Amazon EBS) volumes that are tagged as "department=finance", "importance=critical", in addition to an EBS volume with the specified volume Id. Resources and conditions are additive in that all resources that match the pattern are selected. This shouldn't be confused with a logical AND, where all conditions must match. The matching patterns are logically 'put together using the OR operator. In other words, all patterns that match are selected for backup.
    public func createBackupSelection(_ input: CreateBackupSelectionInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBackupSelectionOutput> {
        return client.send(operation: "CreateBackupSelection", path: "/backup/plans/{backupPlanId}/selections/", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Creates a logical container where backups are stored. A CreateBackupVault request includes a name, optionally one or more resource tags, an encryption key, and a request ID.  Sensitive data, such as passport numbers, should not be included the name of a backup vault. 
    public func createBackupVault(_ input: CreateBackupVaultInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBackupVaultOutput> {
        return client.send(operation: "CreateBackupVault", path: "/backup-vaults/{backupVaultName}", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Deletes a backup plan. A backup plan can only be deleted after all associated selections of resources have been deleted. Deleting a backup plan deletes the current version of a backup plan. Previous versions, if any, will still exist.
    public func deleteBackupPlan(_ input: DeleteBackupPlanInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteBackupPlanOutput> {
        return client.send(operation: "DeleteBackupPlan", path: "/backup/plans/{backupPlanId}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes the resource selection associated with a backup plan that is specified by the SelectionId.
    @discardableResult public func deleteBackupSelection(_ input: DeleteBackupSelectionInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteBackupSelection", path: "/backup/plans/{backupPlanId}/selections/{selectionId}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes the backup vault identified by its name. A vault can be deleted only if it is empty.
    @discardableResult public func deleteBackupVault(_ input: DeleteBackupVaultInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteBackupVault", path: "/backup-vaults/{backupVaultName}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes the policy document that manages permissions on a backup vault.
    @discardableResult public func deleteBackupVaultAccessPolicy(_ input: DeleteBackupVaultAccessPolicyInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteBackupVaultAccessPolicy", path: "/backup-vaults/{backupVaultName}/access-policy", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes event notifications for the specified backup vault.
    @discardableResult public func deleteBackupVaultNotifications(_ input: DeleteBackupVaultNotificationsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteBackupVaultNotifications", path: "/backup-vaults/{backupVaultName}/notification-configuration", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes the recovery point specified by a recovery point ID.
    @discardableResult public func deleteRecoveryPoint(_ input: DeleteRecoveryPointInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteRecoveryPoint", path: "/backup-vaults/{backupVaultName}/recovery-points/{recoveryPointArn}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Returns metadata associated with creating a backup of a resource.
    public func describeBackupJob(_ input: DescribeBackupJobInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackupJobOutput> {
        return client.send(operation: "DescribeBackupJob", path: "/backup-jobs/{backupJobId}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns metadata about a backup vault specified by its name.
    public func describeBackupVault(_ input: DescribeBackupVaultInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBackupVaultOutput> {
        return client.send(operation: "DescribeBackupVault", path: "/backup-vaults/{backupVaultName}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns metadata associated with creating a copy of a resource.
    public func describeCopyJob(_ input: DescribeCopyJobInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCopyJobOutput> {
        return client.send(operation: "DescribeCopyJob", path: "/copy-jobs/{copyJobId}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns information about a saved resource, including the last time it was backed-up, its Amazon Resource Name (ARN), and the AWS service type of the saved resource.
    public func describeProtectedResource(_ input: DescribeProtectedResourceInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProtectedResourceOutput> {
        return client.send(operation: "DescribeProtectedResource", path: "/resources/{resourceArn}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns metadata associated with a recovery point, including ID, status, encryption, and lifecycle.
    public func describeRecoveryPoint(_ input: DescribeRecoveryPointInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecoveryPointOutput> {
        return client.send(operation: "DescribeRecoveryPoint", path: "/backup-vaults/{backupVaultName}/recovery-points/{recoveryPointArn}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns metadata associated with a restore job that is specified by a job ID.
    public func describeRestoreJob(_ input: DescribeRestoreJobInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRestoreJobOutput> {
        return client.send(operation: "DescribeRestoreJob", path: "/restore-jobs/{restoreJobId}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns the backup plan that is specified by the plan ID as a backup template.
    public func exportBackupPlanTemplate(_ input: ExportBackupPlanTemplateInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportBackupPlanTemplateOutput> {
        return client.send(operation: "ExportBackupPlanTemplate", path: "/backup/plans/{backupPlanId}/toTemplate/", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns the body of a backup plan in JSON format, in addition to plan metadata.
    public func getBackupPlan(_ input: GetBackupPlanInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetBackupPlanOutput> {
        return client.send(operation: "GetBackupPlan", path: "/backup/plans/{backupPlanId}/", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a valid JSON document specifying a backup plan or an error.
    public func getBackupPlanFromJSON(_ input: GetBackupPlanFromJSONInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetBackupPlanFromJSONOutput> {
        return client.send(operation: "GetBackupPlanFromJSON", path: "/backup/template/json/toPlan", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns the template specified by its templateId as a backup plan.
    public func getBackupPlanFromTemplate(_ input: GetBackupPlanFromTemplateInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetBackupPlanFromTemplateOutput> {
        return client.send(operation: "GetBackupPlanFromTemplate", path: "/backup/template/plans/{templateId}/toPlan", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns selection metadata and a document in JSON format that specifies a list of resources that are associated with a backup plan.
    public func getBackupSelection(_ input: GetBackupSelectionInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetBackupSelectionOutput> {
        return client.send(operation: "GetBackupSelection", path: "/backup/plans/{backupPlanId}/selections/{selectionId}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns the access policy document that is associated with the named backup vault.
    public func getBackupVaultAccessPolicy(_ input: GetBackupVaultAccessPolicyInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetBackupVaultAccessPolicyOutput> {
        return client.send(operation: "GetBackupVaultAccessPolicy", path: "/backup-vaults/{backupVaultName}/access-policy", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns event notifications for the specified backup vault.
    public func getBackupVaultNotifications(_ input: GetBackupVaultNotificationsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetBackupVaultNotificationsOutput> {
        return client.send(operation: "GetBackupVaultNotifications", path: "/backup-vaults/{backupVaultName}/notification-configuration", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a set of metadata key-value pairs that were used to create the backup.
    public func getRecoveryPointRestoreMetadata(_ input: GetRecoveryPointRestoreMetadataInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRecoveryPointRestoreMetadataOutput> {
        return client.send(operation: "GetRecoveryPointRestoreMetadata", path: "/backup-vaults/{backupVaultName}/recovery-points/{recoveryPointArn}/restore-metadata", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns the AWS resource types supported by AWS Backup.
    public func getSupportedResourceTypes(on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSupportedResourceTypesOutput> {
        return client.send(operation: "GetSupportedResourceTypes", path: "/supported-resource-types", httpMethod: "GET", on: eventLoop)
    }

    ///  Returns metadata about your backup jobs.
    public func listBackupJobs(_ input: ListBackupJobsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListBackupJobsOutput> {
        return client.send(operation: "ListBackupJobs", path: "/backup-jobs/", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns metadata of your saved backup plan templates, including the template ID, name, and the creation and deletion dates.
    public func listBackupPlanTemplates(_ input: ListBackupPlanTemplatesInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListBackupPlanTemplatesOutput> {
        return client.send(operation: "ListBackupPlanTemplates", path: "/backup/template/plans", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns version metadata of your backup plans, including Amazon Resource Names (ARNs), backup plan IDs, creation and deletion dates, plan names, and version IDs.
    public func listBackupPlanVersions(_ input: ListBackupPlanVersionsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListBackupPlanVersionsOutput> {
        return client.send(operation: "ListBackupPlanVersions", path: "/backup/plans/{backupPlanId}/versions/", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns metadata of your saved backup plans, including Amazon Resource Names (ARNs), plan IDs, creation and deletion dates, version IDs, plan names, and creator request IDs.
    public func listBackupPlans(_ input: ListBackupPlansInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListBackupPlansOutput> {
        return client.send(operation: "ListBackupPlans", path: "/backup/plans/", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns an array containing metadata of the resources associated with the target backup plan.
    public func listBackupSelections(_ input: ListBackupSelectionsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListBackupSelectionsOutput> {
        return client.send(operation: "ListBackupSelections", path: "/backup/plans/{backupPlanId}/selections/", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a list of recovery point storage containers along with information about them.
    public func listBackupVaults(_ input: ListBackupVaultsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListBackupVaultsOutput> {
        return client.send(operation: "ListBackupVaults", path: "/backup-vaults/", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns metadata about your copy jobs.
    public func listCopyJobs(_ input: ListCopyJobsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListCopyJobsOutput> {
        return client.send(operation: "ListCopyJobs", path: "/copy-jobs/", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns an array of resources successfully backed up by AWS Backup, including the time the resource was saved, an Amazon Resource Name (ARN) of the resource, and a resource type.
    public func listProtectedResources(_ input: ListProtectedResourcesInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListProtectedResourcesOutput> {
        return client.send(operation: "ListProtectedResources", path: "/resources/", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns detailed information about the recovery points stored in a backup vault.
    public func listRecoveryPointsByBackupVault(_ input: ListRecoveryPointsByBackupVaultInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRecoveryPointsByBackupVaultOutput> {
        return client.send(operation: "ListRecoveryPointsByBackupVault", path: "/backup-vaults/{backupVaultName}/recovery-points/", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns detailed information about recovery points of the type specified by a resource Amazon Resource Name (ARN).
    public func listRecoveryPointsByResource(_ input: ListRecoveryPointsByResourceInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRecoveryPointsByResourceOutput> {
        return client.send(operation: "ListRecoveryPointsByResource", path: "/resources/{resourceArn}/recovery-points/", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a list of jobs that AWS Backup initiated to restore a saved resource, including metadata about the recovery process.
    public func listRestoreJobs(_ input: ListRestoreJobsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRestoreJobsOutput> {
        return client.send(operation: "ListRestoreJobs", path: "/restore-jobs/", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a list of key-value pairs assigned to a target recovery point, backup plan, or backup vault.
    public func listTags(_ input: ListTagsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsOutput> {
        return client.send(operation: "ListTags", path: "/tags/{resourceArn}/", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Sets a resource-based policy that is used to manage access permissions on the target backup vault. Requires a backup vault name and an access policy document in JSON format.
    @discardableResult public func putBackupVaultAccessPolicy(_ input: PutBackupVaultAccessPolicyInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "PutBackupVaultAccessPolicy", path: "/backup-vaults/{backupVaultName}/access-policy", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Turns on notifications on a backup vault for the specified topic and events.
    @discardableResult public func putBackupVaultNotifications(_ input: PutBackupVaultNotificationsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "PutBackupVaultNotifications", path: "/backup-vaults/{backupVaultName}/notification-configuration", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Starts a job to create a one-time backup of the specified resource.
    public func startBackupJob(_ input: StartBackupJobInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartBackupJobOutput> {
        return client.send(operation: "StartBackupJob", path: "/backup-jobs", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Starts a job to create a one-time copy of the specified resource.
    public func startCopyJob(_ input: StartCopyJobInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartCopyJobOutput> {
        return client.send(operation: "StartCopyJob", path: "/copy-jobs", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Recovers the saved resource identified by an Amazon Resource Name (ARN).  If the resource ARN is included in the request, then the last complete backup of that resource is recovered. If the ARN of a recovery point is supplied, then that recovery point is restored.
    public func startRestoreJob(_ input: StartRestoreJobInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartRestoreJobOutput> {
        return client.send(operation: "StartRestoreJob", path: "/restore-jobs", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Attempts to cancel a job to create a one-time backup of a resource.
    @discardableResult public func stopBackupJob(_ input: StopBackupJobInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "StopBackupJob", path: "/backup-jobs/{backupJobId}", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Assigns a set of key-value pairs to a recovery point, backup plan, or backup vault identified by an Amazon Resource Name (ARN).
    @discardableResult public func tagResource(_ input: TagResourceInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes a set of key-value pairs from a recovery point, backup plan, or backup vault identified by an Amazon Resource Name (ARN)
    @discardableResult public func untagResource(_ input: UntagResourceInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "UntagResource", path: "/untag/{resourceArn}", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Replaces the body of a saved backup plan identified by its backupPlanId with the input document in JSON format. The new version is uniquely identified by a VersionId.
    public func updateBackupPlan(_ input: UpdateBackupPlanInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateBackupPlanOutput> {
        return client.send(operation: "UpdateBackupPlan", path: "/backup/plans/{backupPlanId}", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Sets the transition lifecycle of a recovery point. The lifecycle defines when a protected resource is transitioned to cold storage and when it expires. AWS Backup transitions and expires backups automatically according to the lifecycle that you define.  Backups transitioned to cold storage must be stored in cold storage for a minimum of 90 days. Therefore, the “expire after days” setting must be 90 days greater than the “transition to cold after days” setting. The “transition to cold after days” setting cannot be changed after a backup has been transitioned to cold. 
    public func updateRecoveryPointLifecycle(_ input: UpdateRecoveryPointLifecycleInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRecoveryPointLifecycleOutput> {
        return client.send(operation: "UpdateRecoveryPointLifecycle", path: "/backup-vaults/{backupVaultName}/recovery-points/{recoveryPointArn}", httpMethod: "POST", input: input, on: eventLoop)
    }
}
