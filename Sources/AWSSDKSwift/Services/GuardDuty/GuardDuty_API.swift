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
Client object for interacting with AWS GuardDuty service.

Amazon GuardDuty is a continuous security monitoring service that analyzes and processes the following data sources: VPC Flow Logs, AWS CloudTrail event logs, and DNS logs. It uses threat intelligence feeds (such as lists of malicious IPs and domains) and machine learning to identify unexpected, potentially unauthorized, and malicious activity within your AWS environment. This can include issues like escalations of privileges, uses of exposed credentials, or communication with malicious IPs, URLs, or domains. For example, GuardDuty can detect compromised EC2 instances that serve malware or mine bitcoin.  GuardDuty also monitors AWS account access behavior for signs of compromise. Some examples of this are unauthorized infrastructure deployments such as EC2 instances deployed in a Region that has never been used, or unusual API calls like a password policy change to reduce password strength.  GuardDuty informs you of the status of your AWS environment by producing security findings that you can view in the GuardDuty console or through Amazon CloudWatch events. For more information, see the  Amazon GuardDuty User Guide . 
*/
public struct GuardDuty {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the GuardDuty client
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
            service: "guardduty",
            serviceProtocol: .restjson,
            apiVersion: "2017-11-28",
            endpoint: endpoint,
            serviceEndpoints: ["us-east-1-fips": "guardduty-fips.us-east-1.amazonaws.com", "us-east-2-fips": "guardduty-fips.us-east-2.amazonaws.com", "us-west-1-fips": "guardduty-fips.us-west-1.amazonaws.com", "us-west-2-fips": "guardduty-fips.us-west-2.amazonaws.com"],
            middlewares: middlewares,
            possibleErrorTypes: [GuardDutyErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Accepts the invitation to be monitored by a master GuardDuty account.
    public func acceptInvitation(_ input: AcceptInvitationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AcceptInvitationResponse> {
        return client.send(operation: "AcceptInvitation", path: "/detector/{detectorId}/master", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Archives GuardDuty findings that are specified by the list of finding IDs.  Only the master account can archive findings. Member accounts don't have permission to archive findings from their accounts. 
    public func archiveFindings(_ input: ArchiveFindingsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ArchiveFindingsResponse> {
        return client.send(operation: "ArchiveFindings", path: "/detector/{detectorId}/findings/archive", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a single Amazon GuardDuty detector. A detector is a resource that represents the GuardDuty service. To start using GuardDuty, you must create a detector in each Region where you enable the service. You can have only one detector per account per Region.
    public func createDetector(_ input: CreateDetectorRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDetectorResponse> {
        return client.send(operation: "CreateDetector", path: "/detector", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a filter using the specified finding criteria.
    public func createFilter(_ input: CreateFilterRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFilterResponse> {
        return client.send(operation: "CreateFilter", path: "/detector/{detectorId}/filter", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a new IPSet, which is called a trusted IP list in the console user interface. An IPSet is a list of IP addresses that are trusted for secure communication with AWS infrastructure and applications. GuardDuty doesn't generate findings for IP addresses that are included in IPSets. Only users from the master account can use this operation.
    public func createIPSet(_ input: CreateIPSetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateIPSetResponse> {
        return client.send(operation: "CreateIPSet", path: "/detector/{detectorId}/ipset", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates member accounts of the current AWS account by specifying a list of AWS account IDs. The current AWS account can then invite these members to manage GuardDuty in their accounts.
    public func createMembers(_ input: CreateMembersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMembersResponse> {
        return client.send(operation: "CreateMembers", path: "/detector/{detectorId}/member", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a publishing destination to export findings to. The resource to export findings to must exist before you use this operation.
    public func createPublishingDestination(_ input: CreatePublishingDestinationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePublishingDestinationResponse> {
        return client.send(operation: "CreatePublishingDestination", path: "/detector/{detectorId}/publishingDestination", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Generates example findings of types specified by the list of finding types. If 'NULL' is specified for findingTypes, the API generates example findings of all supported finding types.
    public func createSampleFindings(_ input: CreateSampleFindingsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSampleFindingsResponse> {
        return client.send(operation: "CreateSampleFindings", path: "/detector/{detectorId}/findings/create", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a new ThreatIntelSet. ThreatIntelSets consist of known malicious IP addresses. GuardDuty generates findings based on ThreatIntelSets. Only users of the master account can use this operation.
    public func createThreatIntelSet(_ input: CreateThreatIntelSetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateThreatIntelSetResponse> {
        return client.send(operation: "CreateThreatIntelSet", path: "/detector/{detectorId}/threatintelset", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Declines invitations sent to the current member account by AWS accounts specified by their account IDs.
    public func declineInvitations(_ input: DeclineInvitationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeclineInvitationsResponse> {
        return client.send(operation: "DeclineInvitations", path: "/invitation/decline", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes an Amazon GuardDuty detector that is specified by the detector ID.
    public func deleteDetector(_ input: DeleteDetectorRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDetectorResponse> {
        return client.send(operation: "DeleteDetector", path: "/detector/{detectorId}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes the filter specified by the filter name.
    public func deleteFilter(_ input: DeleteFilterRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteFilterResponse> {
        return client.send(operation: "DeleteFilter", path: "/detector/{detectorId}/filter/{filterName}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes the IPSet specified by the ipSetId. IPSets are called trusted IP lists in the console user interface.
    public func deleteIPSet(_ input: DeleteIPSetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteIPSetResponse> {
        return client.send(operation: "DeleteIPSet", path: "/detector/{detectorId}/ipset/{ipSetId}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes invitations sent to the current member account by AWS accounts specified by their account IDs.
    public func deleteInvitations(_ input: DeleteInvitationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteInvitationsResponse> {
        return client.send(operation: "DeleteInvitations", path: "/invitation/delete", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs.
    public func deleteMembers(_ input: DeleteMembersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMembersResponse> {
        return client.send(operation: "DeleteMembers", path: "/detector/{detectorId}/member/delete", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the publishing definition with the specified destinationId.
    public func deletePublishingDestination(_ input: DeletePublishingDestinationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePublishingDestinationResponse> {
        return client.send(operation: "DeletePublishingDestination", path: "/detector/{detectorId}/publishingDestination/{destinationId}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes the ThreatIntelSet specified by the ThreatIntelSet ID.
    public func deleteThreatIntelSet(_ input: DeleteThreatIntelSetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteThreatIntelSetResponse> {
        return client.send(operation: "DeleteThreatIntelSet", path: "/detector/{detectorId}/threatintelset/{threatIntelSetId}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Returns information about the account selected as the delegated administrator for GuardDuty.
    public func describeOrganizationConfiguration(_ input: DescribeOrganizationConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOrganizationConfigurationResponse> {
        return client.send(operation: "DescribeOrganizationConfiguration", path: "/detector/{detectorId}/admin", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns information about the publishing destination specified by the provided destinationId.
    public func describePublishingDestination(_ input: DescribePublishingDestinationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePublishingDestinationResponse> {
        return client.send(operation: "DescribePublishingDestination", path: "/detector/{detectorId}/publishingDestination/{destinationId}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Disables GuardDuty administrator permissions for an AWS account within the Organization.
    public func disableOrganizationAdminAccount(_ input: DisableOrganizationAdminAccountRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableOrganizationAdminAccountResponse> {
        return client.send(operation: "DisableOrganizationAdminAccount", path: "/admin/disable", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Disassociates the current GuardDuty member account from its master account.
    public func disassociateFromMasterAccount(_ input: DisassociateFromMasterAccountRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateFromMasterAccountResponse> {
        return client.send(operation: "DisassociateFromMasterAccount", path: "/detector/{detectorId}/master/disassociate", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Disassociates GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs.
    public func disassociateMembers(_ input: DisassociateMembersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateMembersResponse> {
        return client.send(operation: "DisassociateMembers", path: "/detector/{detectorId}/member/disassociate", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Enables GuardDuty administrator permissions for an AWS account within the organization.
    public func enableOrganizationAdminAccount(_ input: EnableOrganizationAdminAccountRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableOrganizationAdminAccountResponse> {
        return client.send(operation: "EnableOrganizationAdminAccount", path: "/admin/enable", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves an Amazon GuardDuty detector specified by the detectorId.
    public func getDetector(_ input: GetDetectorRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDetectorResponse> {
        return client.send(operation: "GetDetector", path: "/detector/{detectorId}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns the details of the filter specified by the filter name.
    public func getFilter(_ input: GetFilterRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetFilterResponse> {
        return client.send(operation: "GetFilter", path: "/detector/{detectorId}/filter/{filterName}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Describes Amazon GuardDuty findings specified by finding IDs.
    public func getFindings(_ input: GetFindingsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetFindingsResponse> {
        return client.send(operation: "GetFindings", path: "/detector/{detectorId}/findings/get", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists Amazon GuardDuty findings statistics for the specified detector ID.
    public func getFindingsStatistics(_ input: GetFindingsStatisticsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetFindingsStatisticsResponse> {
        return client.send(operation: "GetFindingsStatistics", path: "/detector/{detectorId}/findings/statistics", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves the IPSet specified by the ipSetId.
    public func getIPSet(_ input: GetIPSetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetIPSetResponse> {
        return client.send(operation: "GetIPSet", path: "/detector/{detectorId}/ipset/{ipSetId}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns the count of all GuardDuty membership invitations that were sent to the current member account except the currently accepted invitation.
    public func getInvitationsCount(_ input: GetInvitationsCountRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetInvitationsCountResponse> {
        return client.send(operation: "GetInvitationsCount", path: "/invitation/count", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Provides the details for the GuardDuty master account associated with the current GuardDuty member account.
    public func getMasterAccount(_ input: GetMasterAccountRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetMasterAccountResponse> {
        return client.send(operation: "GetMasterAccount", path: "/detector/{detectorId}/master", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Retrieves GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs.
    public func getMembers(_ input: GetMembersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetMembersResponse> {
        return client.send(operation: "GetMembers", path: "/detector/{detectorId}/member/get", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves the ThreatIntelSet that is specified by the ThreatIntelSet ID.
    public func getThreatIntelSet(_ input: GetThreatIntelSetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetThreatIntelSetResponse> {
        return client.send(operation: "GetThreatIntelSet", path: "/detector/{detectorId}/threatintelset/{threatIntelSetId}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Invites other AWS accounts (created as members of the current AWS account by CreateMembers) to enable GuardDuty, and allow the current AWS account to view and manage these accounts' GuardDuty findings on their behalf as the master account.
    public func inviteMembers(_ input: InviteMembersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InviteMembersResponse> {
        return client.send(operation: "InviteMembers", path: "/detector/{detectorId}/member/invite", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists detectorIds of all the existing Amazon GuardDuty detector resources.
    public func listDetectors(_ input: ListDetectorsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDetectorsResponse> {
        return client.send(operation: "ListDetectors", path: "/detector", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a paginated list of the current filters.
    public func listFilters(_ input: ListFiltersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListFiltersResponse> {
        return client.send(operation: "ListFilters", path: "/detector/{detectorId}/filter", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Lists Amazon GuardDuty findings for the specified detector ID.
    public func listFindings(_ input: ListFindingsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListFindingsResponse> {
        return client.send(operation: "ListFindings", path: "/detector/{detectorId}/findings", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the IPSets of the GuardDuty service specified by the detector ID. If you use this operation from a member account, the IPSets returned are the IPSets from the associated master account.
    public func listIPSets(_ input: ListIPSetsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListIPSetsResponse> {
        return client.send(operation: "ListIPSets", path: "/detector/{detectorId}/ipset", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Lists all GuardDuty membership invitations that were sent to the current AWS account.
    public func listInvitations(_ input: ListInvitationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListInvitationsResponse> {
        return client.send(operation: "ListInvitations", path: "/invitation", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Lists details about associated member accounts for the current GuardDuty master account.
    public func listMembers(_ input: ListMembersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListMembersResponse> {
        return client.send(operation: "ListMembers", path: "/detector/{detectorId}/member", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Lists the accounts configured as AWS Organization delegated administrators.
    public func listOrganizationAdminAccounts(_ input: ListOrganizationAdminAccountsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListOrganizationAdminAccountsResponse> {
        return client.send(operation: "ListOrganizationAdminAccounts", path: "/admin", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a list of publishing destinations associated with the specified dectectorId.
    public func listPublishingDestinations(_ input: ListPublishingDestinationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPublishingDestinationsResponse> {
        return client.send(operation: "ListPublishingDestinations", path: "/detector/{detectorId}/publishingDestination", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Lists tags for a resource. Tagging is currently supported for detectors, finding filters, IP sets, and threat intel sets, with a limit of 50 tags per resource. When invoked, this operation returns all assigned tags for a given resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Lists the ThreatIntelSets of the GuardDuty service specified by the detector ID. If you use this operation from a member account, the ThreatIntelSets associated with the master account are returned.
    public func listThreatIntelSets(_ input: ListThreatIntelSetsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListThreatIntelSetsResponse> {
        return client.send(operation: "ListThreatIntelSets", path: "/detector/{detectorId}/threatintelset", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Turns on GuardDuty monitoring of the specified member accounts. Use this operation to restart monitoring of accounts that you stopped monitoring with the StopMonitoringMembers operation.
    public func startMonitoringMembers(_ input: StartMonitoringMembersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartMonitoringMembersResponse> {
        return client.send(operation: "StartMonitoringMembers", path: "/detector/{detectorId}/member/start", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Stops GuardDuty monitoring for the specified member accounts. Use the StartMonitoringMembers operation to restart monitoring for those accounts.
    public func stopMonitoringMembers(_ input: StopMonitoringMembersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopMonitoringMembersResponse> {
        return client.send(operation: "StopMonitoringMembers", path: "/detector/{detectorId}/member/stop", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Adds tags to a resource.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Unarchives GuardDuty findings specified by the findingIds.
    public func unarchiveFindings(_ input: UnarchiveFindingsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnarchiveFindingsResponse> {
        return client.send(operation: "UnarchiveFindings", path: "/detector/{detectorId}/findings/unarchive", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes tags from a resource.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Updates the Amazon GuardDuty detector specified by the detectorId.
    public func updateDetector(_ input: UpdateDetectorRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDetectorResponse> {
        return client.send(operation: "UpdateDetector", path: "/detector/{detectorId}", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the filter specified by the filter name.
    public func updateFilter(_ input: UpdateFilterRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFilterResponse> {
        return client.send(operation: "UpdateFilter", path: "/detector/{detectorId}/filter/{filterName}", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Marks the specified GuardDuty findings as useful or not useful.
    public func updateFindingsFeedback(_ input: UpdateFindingsFeedbackRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFindingsFeedbackResponse> {
        return client.send(operation: "UpdateFindingsFeedback", path: "/detector/{detectorId}/findings/feedback", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the IPSet specified by the IPSet ID.
    public func updateIPSet(_ input: UpdateIPSetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateIPSetResponse> {
        return client.send(operation: "UpdateIPSet", path: "/detector/{detectorId}/ipset/{ipSetId}", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the delegated administrator account with the values provided.
    public func updateOrganizationConfiguration(_ input: UpdateOrganizationConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateOrganizationConfigurationResponse> {
        return client.send(operation: "UpdateOrganizationConfiguration", path: "/detector/{detectorId}/admin", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates information about the publishing destination specified by the destinationId.
    public func updatePublishingDestination(_ input: UpdatePublishingDestinationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdatePublishingDestinationResponse> {
        return client.send(operation: "UpdatePublishingDestination", path: "/detector/{detectorId}/publishingDestination/{destinationId}", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the ThreatIntelSet specified by the ThreatIntelSet ID.
    public func updateThreatIntelSet(_ input: UpdateThreatIntelSetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateThreatIntelSetResponse> {
        return client.send(operation: "UpdateThreatIntelSet", path: "/detector/{detectorId}/threatintelset/{threatIntelSetId}", httpMethod: "POST", input: input, on: eventLoop)
    }
}
