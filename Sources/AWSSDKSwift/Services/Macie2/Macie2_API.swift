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

/**
Client object for interacting with AWS Macie2 service.

Amazon Macie is a fully managed data security and data privacy service that uses machine learning and pattern matching to discover and protect your sensitive data in AWS. Macie automates the discovery of sensitive data, such as PII and intellectual property, to provide you with insight into the data that your organization stores in AWS. Macie also provides an inventory of your Amazon S3 buckets, which it continually monitors for you. If Macie detects sensitive data or potential data access issues, it generates detailed findings for you to review and act upon as necessary.
*/
public struct Macie2 {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the Macie2 client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil
    ) {
        self.client = client
        self.serviceConfig = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "macie2",
            serviceProtocol: .restjson,
            apiVersion: "2020-01-01",
            endpoint: endpoint,
            possibleErrorTypes: [Macie2ErrorType.self],
            timeout: timeout
        )
    }
    
    //MARK: API Calls

    ///  Accepts an Amazon Macie membership invitation that was received from a specific account.
    public func acceptInvitation(_ input: AcceptInvitationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AcceptInvitationResponse> {
        return client.execute(operation: "AcceptInvitation", path: "/invitations/accept", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Retrieves information about one or more custom data identifiers.
    public func batchGetCustomDataIdentifiers(_ input: BatchGetCustomDataIdentifiersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchGetCustomDataIdentifiersResponse> {
        return client.execute(operation: "BatchGetCustomDataIdentifiers", path: "/custom-data-identifiers/get", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   Creates and defines the settings for a classification job.
    public func createClassificationJob(_ input: CreateClassificationJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClassificationJobResponse> {
        return client.execute(operation: "CreateClassificationJob", path: "/jobs", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates and defines the criteria and other settings for a custom data identifier.
    public func createCustomDataIdentifier(_ input: CreateCustomDataIdentifierRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCustomDataIdentifierResponse> {
        return client.execute(operation: "CreateCustomDataIdentifier", path: "/custom-data-identifiers", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates and defines the criteria and other settings for a findings filter.
    public func createFindingsFilter(_ input: CreateFindingsFilterRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFindingsFilterResponse> {
        return client.execute(operation: "CreateFindingsFilter", path: "/findingsfilters", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   Sends an Amazon Macie membership invitation to one or more accounts.
    public func createInvitations(_ input: CreateInvitationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateInvitationsResponse> {
        return client.execute(operation: "CreateInvitations", path: "/invitations", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   Associates an account with an Amazon Macie master account.
    public func createMember(_ input: CreateMemberRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMemberResponse> {
        return client.execute(operation: "CreateMember", path: "/members", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   Creates sample findings.
    public func createSampleFindings(_ input: CreateSampleFindingsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSampleFindingsResponse> {
        return client.execute(operation: "CreateSampleFindings", path: "/findings/sample", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Declines Amazon Macie membership invitations that were received from specific accounts.
    public func declineInvitations(_ input: DeclineInvitationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeclineInvitationsResponse> {
        return client.execute(operation: "DeclineInvitations", path: "/invitations/decline", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes a custom data identifier.
    public func deleteCustomDataIdentifier(_ input: DeleteCustomDataIdentifierRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCustomDataIdentifierResponse> {
        return client.execute(operation: "DeleteCustomDataIdentifier", path: "/custom-data-identifiers/{id}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes a findings filter.
    public func deleteFindingsFilter(_ input: DeleteFindingsFilterRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteFindingsFilterResponse> {
        return client.execute(operation: "DeleteFindingsFilter", path: "/findingsfilters/{id}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes Amazon Macie membership invitations that were received from specific accounts.
    public func deleteInvitations(_ input: DeleteInvitationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteInvitationsResponse> {
        return client.execute(operation: "DeleteInvitations", path: "/invitations/delete", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes the association between an Amazon Macie master account and an account.
    public func deleteMember(_ input: DeleteMemberRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMemberResponse> {
        return client.execute(operation: "DeleteMember", path: "/members/{id}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   Retrieves (queries) statistical data and other information about one or more S3 buckets that Amazon Macie monitors and analyzes.
    public func describeBuckets(_ input: DescribeBucketsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBucketsResponse> {
        return client.execute(operation: "DescribeBuckets", path: "/datasources/s3", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Retrieves information about the status and settings for a classification job.
    public func describeClassificationJob(_ input: DescribeClassificationJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClassificationJobResponse> {
        return client.execute(operation: "DescribeClassificationJob", path: "/jobs/{jobId}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Retrieves information about the Amazon Macie configuration settings for an AWS organization.
    public func describeOrganizationConfiguration(_ input: DescribeOrganizationConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOrganizationConfigurationResponse> {
        return client.execute(operation: "DescribeOrganizationConfiguration", path: "/admin/configuration", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Disables an Amazon Macie account and deletes Macie resources for the account.
    public func disableMacie(_ input: DisableMacieRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableMacieResponse> {
        return client.execute(operation: "DisableMacie", path: "/macie", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Disables an account as a delegated administrator of Amazon Macie for an AWS organization.
    public func disableOrganizationAdminAccount(_ input: DisableOrganizationAdminAccountRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableOrganizationAdminAccountResponse> {
        return client.execute(operation: "DisableOrganizationAdminAccount", path: "/admin", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Disassociates a member account from its Amazon Macie master account.
    public func disassociateFromMasterAccount(_ input: DisassociateFromMasterAccountRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateFromMasterAccountResponse> {
        return client.execute(operation: "DisassociateFromMasterAccount", path: "/master/disassociate", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Disassociates an Amazon Macie master account from a member account.
    public func disassociateMember(_ input: DisassociateMemberRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateMemberResponse> {
        return client.execute(operation: "DisassociateMember", path: "/members/disassociate/{id}", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Enables Amazon Macie and specifies the configuration settings for a Macie account.
    public func enableMacie(_ input: EnableMacieRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableMacieResponse> {
        return client.execute(operation: "EnableMacie", path: "/macie", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Enables an account as a delegated administrator of Amazon Macie for an AWS organization.
    public func enableOrganizationAdminAccount(_ input: EnableOrganizationAdminAccountRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableOrganizationAdminAccountResponse> {
        return client.execute(operation: "EnableOrganizationAdminAccount", path: "/admin", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   Retrieves (queries) aggregated statistical data for all the S3 buckets that Amazon Macie monitors and analyzes.
    public func getBucketStatistics(_ input: GetBucketStatisticsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetBucketStatisticsResponse> {
        return client.execute(operation: "GetBucketStatistics", path: "/datasources/s3/statistics", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Retrieves the configuration settings for storing data classification results.
    public func getClassificationExportConfiguration(_ input: GetClassificationExportConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetClassificationExportConfigurationResponse> {
        return client.execute(operation: "GetClassificationExportConfiguration", path: "/classification-export-configuration", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Retrieves information about the criteria and other settings for a custom data identifier.
    public func getCustomDataIdentifier(_ input: GetCustomDataIdentifierRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCustomDataIdentifierResponse> {
        return client.execute(operation: "GetCustomDataIdentifier", path: "/custom-data-identifiers/{id}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   Retrieves (queries) aggregated statistical data about findings.
    public func getFindingStatistics(_ input: GetFindingStatisticsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetFindingStatisticsResponse> {
        return client.execute(operation: "GetFindingStatistics", path: "/findings/statistics", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Retrieves information about one or more findings.
    public func getFindings(_ input: GetFindingsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetFindingsResponse> {
        return client.execute(operation: "GetFindings", path: "/findings/describe", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Retrieves information about the criteria and other settings for a findings filter.
    public func getFindingsFilter(_ input: GetFindingsFilterRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetFindingsFilterResponse> {
        return client.execute(operation: "GetFindingsFilter", path: "/findingsfilters/{id}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Retrieves the count of Amazon Macie membership invitations that were received by an account.
    public func getInvitationsCount(_ input: GetInvitationsCountRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetInvitationsCountResponse> {
        return client.execute(operation: "GetInvitationsCount", path: "/invitations/count", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Retrieves information about the current status and configuration settings for an Amazon Macie account.
    public func getMacieSession(_ input: GetMacieSessionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetMacieSessionResponse> {
        return client.execute(operation: "GetMacieSession", path: "/macie", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Retrieves information about the Amazon Macie master account for an account.
    public func getMasterAccount(_ input: GetMasterAccountRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetMasterAccountResponse> {
        return client.execute(operation: "GetMasterAccount", path: "/master", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Retrieves information about a member account that's associated with an Amazon Macie master account.
    public func getMember(_ input: GetMemberRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetMemberResponse> {
        return client.execute(operation: "GetMember", path: "/members/{id}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Retrieves (queries) quotas and aggregated usage data for one or more accounts.
    public func getUsageStatistics(_ input: GetUsageStatisticsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetUsageStatisticsResponse> {
        return client.execute(operation: "GetUsageStatistics", path: "/usage/statistics", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Retrieves (queries) aggregated usage data for an account.
    public func getUsageTotals(_ input: GetUsageTotalsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetUsageTotalsResponse> {
        return client.execute(operation: "GetUsageTotals", path: "/usage", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Retrieves information about the status and settings for one or more classification jobs.
    public func listClassificationJobs(_ input: ListClassificationJobsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListClassificationJobsResponse> {
        return client.execute(operation: "ListClassificationJobs", path: "/jobs/list", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Retrieves a subset of information about all the custom data identifiers for an account.
    public func listCustomDataIdentifiers(_ input: ListCustomDataIdentifiersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListCustomDataIdentifiersResponse> {
        return client.execute(operation: "ListCustomDataIdentifiers", path: "/custom-data-identifiers/list", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   Retrieves a subset of information about one or more findings.
    public func listFindings(_ input: ListFindingsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListFindingsResponse> {
        return client.execute(operation: "ListFindings", path: "/findings", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Retrieves a subset of information about all the findings filters for an account.
    public func listFindingsFilters(_ input: ListFindingsFiltersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListFindingsFiltersResponse> {
        return client.execute(operation: "ListFindingsFilters", path: "/findingsfilters", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Retrieves information about all the Amazon Macie membership invitations that were received by an account.
    public func listInvitations(_ input: ListInvitationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListInvitationsResponse> {
        return client.execute(operation: "ListInvitations", path: "/invitations", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Retrieves information about the accounts that are associated with an Amazon Macie master account.
    public func listMembers(_ input: ListMembersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListMembersResponse> {
        return client.execute(operation: "ListMembers", path: "/members", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Retrieves information about the account that's designated as the delegated administrator of Amazon Macie for an AWS organization.
    public func listOrganizationAdminAccounts(_ input: ListOrganizationAdminAccountsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListOrganizationAdminAccountsResponse> {
        return client.execute(operation: "ListOrganizationAdminAccounts", path: "/admin", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Retrieves the tags (keys and values) that are associated with a classification job, custom data identifier, findings filter, or member account.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates or updates the configuration settings for storing data classification results.
    public func putClassificationExportConfiguration(_ input: PutClassificationExportConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutClassificationExportConfigurationResponse> {
        return client.execute(operation: "PutClassificationExportConfiguration", path: "/classification-export-configuration", httpMethod: .PUT, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Adds or updates one or more tags (keys and values) that are associated with a classification job, custom data identifier, findings filter, or member account.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Tests a custom data identifier.
    public func testCustomDataIdentifier(_ input: TestCustomDataIdentifierRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TestCustomDataIdentifierResponse> {
        return client.execute(operation: "TestCustomDataIdentifier", path: "/custom-data-identifiers/test", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Removes one or more tags (keys and values) from a classification job, custom data identifier, findings filter, or member account.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Cancels a classification job.
    public func updateClassificationJob(_ input: UpdateClassificationJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateClassificationJobResponse> {
        return client.execute(operation: "UpdateClassificationJob", path: "/jobs/{jobId}", httpMethod: .PATCH, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates the criteria and other settings for a findings filter.
    public func updateFindingsFilter(_ input: UpdateFindingsFilterRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFindingsFilterResponse> {
        return client.execute(operation: "UpdateFindingsFilter", path: "/findingsfilters/{id}", httpMethod: .PATCH, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Suspends or re-enables an Amazon Macie account, or updates the configuration settings for a Macie account.
    public func updateMacieSession(_ input: UpdateMacieSessionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateMacieSessionResponse> {
        return client.execute(operation: "UpdateMacieSession", path: "/macie", httpMethod: .PATCH, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///   Enables an Amazon Macie master account to suspend or re-enable a member account.
    public func updateMemberSession(_ input: UpdateMemberSessionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateMemberSessionResponse> {
        return client.execute(operation: "UpdateMemberSession", path: "/macie/members/{id}", httpMethod: .PATCH, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates Amazon Macie configuration settings for an AWS organization.
    public func updateOrganizationConfiguration(_ input: UpdateOrganizationConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateOrganizationConfigurationResponse> {
        return client.execute(operation: "UpdateOrganizationConfiguration", path: "/admin/configuration", httpMethod: .PATCH, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }
}
