// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
Amazon GuardDuty is a continuous security monitoring service that analyzes and processes the following data sources: VPC Flow Logs, AWS CloudTrail event logs, and DNS logs. It uses threat intelligence feeds, such as lists of malicious IPs and domains, and machine learning to identify unexpected and potentially unauthorized and malicious activity within your AWS environment. This can include issues like escalations of privileges, uses of exposed credentials, or communication with malicious IPs, URLs, or domains. For example, GuardDuty can detect compromised EC2 instances serving malware or mining bitcoin. It also monitors AWS account access behavior for signs of compromise, such as unauthorized infrastructure deployments, like instances deployed in a region that has never been used, or unusual API calls, like a password policy change to reduce password strength. GuardDuty informs you of the status of your AWS environment by producing security findings that you can view in the GuardDuty console or through Amazon CloudWatch events. For more information, see  Amazon GuardDuty User Guide. 
*/
public struct GuardDuty {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "guardduty",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-11-28",
            endpoint: endpoint,
            serviceEndpoints: ["us-east-1-fips": "guardduty-fips.us-east-1.amazonaws.com", "us-east-2-fips": "guardduty-fips.us-east-2.amazonaws.com", "us-west-1-fips": "guardduty-fips.us-west-1.amazonaws.com", "us-west-2-fips": "guardduty-fips.us-west-2.amazonaws.com"],
            middlewares: middlewares,
            possibleErrorTypes: [GuardDutyErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }

    ///  Accepts the invitation to be monitored by a master GuardDuty account.
    public func acceptInvitation(_ input: AcceptInvitationRequest) -> Future<AcceptInvitationResponse> {
        return client.send(operation: "AcceptInvitation", path: "/detector/{detectorId}/master", httpMethod: "POST", input: input)
    }

    ///  Archives GuardDuty findings specified by the list of finding IDs.  Only the master account can archive findings. Member accounts do not have permission to archive findings from their accounts. 
    public func archiveFindings(_ input: ArchiveFindingsRequest) -> Future<ArchiveFindingsResponse> {
        return client.send(operation: "ArchiveFindings", path: "/detector/{detectorId}/findings/archive", httpMethod: "POST", input: input)
    }

    ///  Creates a single Amazon GuardDuty detector. A detector is a resource that represents the GuardDuty service. To start using GuardDuty, you must create a detector in each region that you enable the service. You can have only one detector per account per region.
    public func createDetector(_ input: CreateDetectorRequest) -> Future<CreateDetectorResponse> {
        return client.send(operation: "CreateDetector", path: "/detector", httpMethod: "POST", input: input)
    }

    ///  Creates a filter using the specified finding criteria.
    public func createFilter(_ input: CreateFilterRequest) -> Future<CreateFilterResponse> {
        return client.send(operation: "CreateFilter", path: "/detector/{detectorId}/filter", httpMethod: "POST", input: input)
    }

    ///  Creates a new IPSet - a list of trusted IP addresses that have been whitelisted for secure communication with AWS infrastructure and applications.
    public func createIPSet(_ input: CreateIPSetRequest) -> Future<CreateIPSetResponse> {
        return client.send(operation: "CreateIPSet", path: "/detector/{detectorId}/ipset", httpMethod: "POST", input: input)
    }

    ///  Creates member accounts of the current AWS account by specifying a list of AWS account IDs. The current AWS account can then invite these members to manage GuardDuty in their accounts.
    public func createMembers(_ input: CreateMembersRequest) -> Future<CreateMembersResponse> {
        return client.send(operation: "CreateMembers", path: "/detector/{detectorId}/member", httpMethod: "POST", input: input)
    }

    ///  Generates example findings of types specified by the list of finding types. If 'NULL' is specified for findingTypes, the API generates example findings of all supported finding types.
    public func createSampleFindings(_ input: CreateSampleFindingsRequest) -> Future<CreateSampleFindingsResponse> {
        return client.send(operation: "CreateSampleFindings", path: "/detector/{detectorId}/findings/create", httpMethod: "POST", input: input)
    }

    ///  Create a new ThreatIntelSet. ThreatIntelSets consist of known malicious IP addresses. GuardDuty generates findings based on ThreatIntelSets.
    public func createThreatIntelSet(_ input: CreateThreatIntelSetRequest) -> Future<CreateThreatIntelSetResponse> {
        return client.send(operation: "CreateThreatIntelSet", path: "/detector/{detectorId}/threatintelset", httpMethod: "POST", input: input)
    }

    ///  Declines invitations sent to the current member account by AWS account specified by their account IDs.
    public func declineInvitations(_ input: DeclineInvitationsRequest) -> Future<DeclineInvitationsResponse> {
        return client.send(operation: "DeclineInvitations", path: "/invitation/decline", httpMethod: "POST", input: input)
    }

    ///  Deletes a Amazon GuardDuty detector specified by the detector ID.
    public func deleteDetector(_ input: DeleteDetectorRequest) -> Future<DeleteDetectorResponse> {
        return client.send(operation: "DeleteDetector", path: "/detector/{detectorId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes the filter specified by the filter name.
    public func deleteFilter(_ input: DeleteFilterRequest) -> Future<DeleteFilterResponse> {
        return client.send(operation: "DeleteFilter", path: "/detector/{detectorId}/filter/{filterName}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes the IPSet specified by the IPSet ID.
    public func deleteIPSet(_ input: DeleteIPSetRequest) -> Future<DeleteIPSetResponse> {
        return client.send(operation: "DeleteIPSet", path: "/detector/{detectorId}/ipset/{ipSetId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes invitations sent to the current member account by AWS accounts specified by their account IDs.
    public func deleteInvitations(_ input: DeleteInvitationsRequest) -> Future<DeleteInvitationsResponse> {
        return client.send(operation: "DeleteInvitations", path: "/invitation/delete", httpMethod: "POST", input: input)
    }

    ///  Deletes GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs.
    public func deleteMembers(_ input: DeleteMembersRequest) -> Future<DeleteMembersResponse> {
        return client.send(operation: "DeleteMembers", path: "/detector/{detectorId}/member/delete", httpMethod: "POST", input: input)
    }

    ///  Deletes ThreatIntelSet specified by the ThreatIntelSet ID.
    public func deleteThreatIntelSet(_ input: DeleteThreatIntelSetRequest) -> Future<DeleteThreatIntelSetResponse> {
        return client.send(operation: "DeleteThreatIntelSet", path: "/detector/{detectorId}/threatintelset/{threatIntelSetId}", httpMethod: "DELETE", input: input)
    }

    ///  Disassociates the current GuardDuty member account from its master account.
    public func disassociateFromMasterAccount(_ input: DisassociateFromMasterAccountRequest) -> Future<DisassociateFromMasterAccountResponse> {
        return client.send(operation: "DisassociateFromMasterAccount", path: "/detector/{detectorId}/master/disassociate", httpMethod: "POST", input: input)
    }

    ///  Disassociates GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs.
    public func disassociateMembers(_ input: DisassociateMembersRequest) -> Future<DisassociateMembersResponse> {
        return client.send(operation: "DisassociateMembers", path: "/detector/{detectorId}/member/disassociate", httpMethod: "POST", input: input)
    }

    ///  Retrieves an Amazon GuardDuty detector specified by the detectorId.
    public func getDetector(_ input: GetDetectorRequest) -> Future<GetDetectorResponse> {
        return client.send(operation: "GetDetector", path: "/detector/{detectorId}", httpMethod: "GET", input: input)
    }

    ///  Returns the details of the filter specified by the filter name.
    public func getFilter(_ input: GetFilterRequest) -> Future<GetFilterResponse> {
        return client.send(operation: "GetFilter", path: "/detector/{detectorId}/filter/{filterName}", httpMethod: "GET", input: input)
    }

    ///  Describes Amazon GuardDuty findings specified by finding IDs.
    public func getFindings(_ input: GetFindingsRequest) -> Future<GetFindingsResponse> {
        return client.send(operation: "GetFindings", path: "/detector/{detectorId}/findings/get", httpMethod: "POST", input: input)
    }

    ///  Lists Amazon GuardDuty findings' statistics for the specified detector ID.
    public func getFindingsStatistics(_ input: GetFindingsStatisticsRequest) -> Future<GetFindingsStatisticsResponse> {
        return client.send(operation: "GetFindingsStatistics", path: "/detector/{detectorId}/findings/statistics", httpMethod: "POST", input: input)
    }

    ///  Retrieves the IPSet specified by the IPSet ID.
    public func getIPSet(_ input: GetIPSetRequest) -> Future<GetIPSetResponse> {
        return client.send(operation: "GetIPSet", path: "/detector/{detectorId}/ipset/{ipSetId}", httpMethod: "GET", input: input)
    }

    ///  Returns the count of all GuardDuty membership invitations that were sent to the current member account except the currently accepted invitation.
    public func getInvitationsCount(_ input: GetInvitationsCountRequest) -> Future<GetInvitationsCountResponse> {
        return client.send(operation: "GetInvitationsCount", path: "/invitation/count", httpMethod: "GET", input: input)
    }

    ///  Provides the details for the GuardDuty master account associated with the current GuardDuty member account.
    public func getMasterAccount(_ input: GetMasterAccountRequest) -> Future<GetMasterAccountResponse> {
        return client.send(operation: "GetMasterAccount", path: "/detector/{detectorId}/master", httpMethod: "GET", input: input)
    }

    ///  Retrieves GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs.
    public func getMembers(_ input: GetMembersRequest) -> Future<GetMembersResponse> {
        return client.send(operation: "GetMembers", path: "/detector/{detectorId}/member/get", httpMethod: "POST", input: input)
    }

    ///  Retrieves the ThreatIntelSet that is specified by the ThreatIntelSet ID.
    public func getThreatIntelSet(_ input: GetThreatIntelSetRequest) -> Future<GetThreatIntelSetResponse> {
        return client.send(operation: "GetThreatIntelSet", path: "/detector/{detectorId}/threatintelset/{threatIntelSetId}", httpMethod: "GET", input: input)
    }

    ///  Invites other AWS accounts (created as members of the current AWS account by CreateMembers) to enable GuardDuty and allow the current AWS account to view and manage these accounts' GuardDuty findings on their behalf as the master account.
    public func inviteMembers(_ input: InviteMembersRequest) -> Future<InviteMembersResponse> {
        return client.send(operation: "InviteMembers", path: "/detector/{detectorId}/member/invite", httpMethod: "POST", input: input)
    }

    ///  Lists detectorIds of all the existing Amazon GuardDuty detector resources.
    public func listDetectors(_ input: ListDetectorsRequest) -> Future<ListDetectorsResponse> {
        return client.send(operation: "ListDetectors", path: "/detector", httpMethod: "GET", input: input)
    }

    ///  Returns a paginated list of the current filters.
    public func listFilters(_ input: ListFiltersRequest) -> Future<ListFiltersResponse> {
        return client.send(operation: "ListFilters", path: "/detector/{detectorId}/filter", httpMethod: "GET", input: input)
    }

    ///  Lists Amazon GuardDuty findings for the specified detector ID.
    public func listFindings(_ input: ListFindingsRequest) -> Future<ListFindingsResponse> {
        return client.send(operation: "ListFindings", path: "/detector/{detectorId}/findings", httpMethod: "POST", input: input)
    }

    ///  Lists the IPSets of the GuardDuty service specified by the detector ID.
    public func listIPSets(_ input: ListIPSetsRequest) -> Future<ListIPSetsResponse> {
        return client.send(operation: "ListIPSets", path: "/detector/{detectorId}/ipset", httpMethod: "GET", input: input)
    }

    ///  Lists all GuardDuty membership invitations that were sent to the current AWS account.
    public func listInvitations(_ input: ListInvitationsRequest) -> Future<ListInvitationsResponse> {
        return client.send(operation: "ListInvitations", path: "/invitation", httpMethod: "GET", input: input)
    }

    ///  Lists details about all member accounts for the current GuardDuty master account.
    public func listMembers(_ input: ListMembersRequest) -> Future<ListMembersResponse> {
        return client.send(operation: "ListMembers", path: "/detector/{detectorId}/member", httpMethod: "GET", input: input)
    }

    ///  Lists tags for a resource. Tagging is currently supported for detectors, finding filters, IP sets, and Threat Intel sets, with a limit of 50 tags per resource. When invoked, this operation returns all assigned tags for a given resource..
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> Future<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: "GET", input: input)
    }

    ///  Lists the ThreatIntelSets of the GuardDuty service specified by the detector ID.
    public func listThreatIntelSets(_ input: ListThreatIntelSetsRequest) -> Future<ListThreatIntelSetsResponse> {
        return client.send(operation: "ListThreatIntelSets", path: "/detector/{detectorId}/threatintelset", httpMethod: "GET", input: input)
    }

    ///  Re-enables GuardDuty to monitor findings of the member accounts specified by the account IDs. A master GuardDuty account can run this command after disabling GuardDuty from monitoring these members' findings by running StopMonitoringMembers.
    public func startMonitoringMembers(_ input: StartMonitoringMembersRequest) -> Future<StartMonitoringMembersResponse> {
        return client.send(operation: "StartMonitoringMembers", path: "/detector/{detectorId}/member/start", httpMethod: "POST", input: input)
    }

    ///  Disables GuardDuty from monitoring findings of the member accounts specified by the account IDs. After running this command, a master GuardDuty account can run StartMonitoringMembers to re-enable GuardDuty to monitor these members’ findings.
    public func stopMonitoringMembers(_ input: StopMonitoringMembersRequest) -> Future<StopMonitoringMembersResponse> {
        return client.send(operation: "StopMonitoringMembers", path: "/detector/{detectorId}/member/stop", httpMethod: "POST", input: input)
    }

    ///  Adds tags to a resource.
    public func tagResource(_ input: TagResourceRequest) -> Future<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: "POST", input: input)
    }

    ///  Unarchives Amazon GuardDuty findings specified by the list of finding IDs.
    public func unarchiveFindings(_ input: UnarchiveFindingsRequest) -> Future<UnarchiveFindingsResponse> {
        return client.send(operation: "UnarchiveFindings", path: "/detector/{detectorId}/findings/unarchive", httpMethod: "POST", input: input)
    }

    ///  Removes tags from a resource.
    public func untagResource(_ input: UntagResourceRequest) -> Future<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: "DELETE", input: input)
    }

    ///  Updates an Amazon GuardDuty detector specified by the detectorId.
    public func updateDetector(_ input: UpdateDetectorRequest) -> Future<UpdateDetectorResponse> {
        return client.send(operation: "UpdateDetector", path: "/detector/{detectorId}", httpMethod: "POST", input: input)
    }

    ///  Updates the filter specified by the filter name.
    public func updateFilter(_ input: UpdateFilterRequest) -> Future<UpdateFilterResponse> {
        return client.send(operation: "UpdateFilter", path: "/detector/{detectorId}/filter/{filterName}", httpMethod: "POST", input: input)
    }

    ///  Marks specified Amazon GuardDuty findings as useful or not useful.
    public func updateFindingsFeedback(_ input: UpdateFindingsFeedbackRequest) -> Future<UpdateFindingsFeedbackResponse> {
        return client.send(operation: "UpdateFindingsFeedback", path: "/detector/{detectorId}/findings/feedback", httpMethod: "POST", input: input)
    }

    ///  Updates the IPSet specified by the IPSet ID.
    public func updateIPSet(_ input: UpdateIPSetRequest) -> Future<UpdateIPSetResponse> {
        return client.send(operation: "UpdateIPSet", path: "/detector/{detectorId}/ipset/{ipSetId}", httpMethod: "POST", input: input)
    }

    ///  Updates the ThreatIntelSet specified by ThreatIntelSet ID.
    public func updateThreatIntelSet(_ input: UpdateThreatIntelSetRequest) -> Future<UpdateThreatIntelSetResponse> {
        return client.send(operation: "UpdateThreatIntelSet", path: "/detector/{detectorId}/threatintelset/{threatIntelSetId}", httpMethod: "POST", input: input)
    }
}
