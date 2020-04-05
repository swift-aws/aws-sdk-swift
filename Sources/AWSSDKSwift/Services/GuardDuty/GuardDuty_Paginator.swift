// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension GuardDuty {

    ///  Lists detectorIds of all the existing Amazon GuardDuty detector resources.
    public func listDetectorsPaginator(_ input: ListDetectorsRequest, onPage: @escaping (ListDetectorsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDetectors, tokenKey: \ListDetectorsResponse.nextToken, onPage: onPage)
    }

    ///  Returns a paginated list of the current filters.
    public func listFiltersPaginator(_ input: ListFiltersRequest, onPage: @escaping (ListFiltersResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listFilters, tokenKey: \ListFiltersResponse.nextToken, onPage: onPage)
    }

    ///  Lists Amazon GuardDuty findings for the specified detector ID.
    public func listFindingsPaginator(_ input: ListFindingsRequest, onPage: @escaping (ListFindingsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listFindings, tokenKey: \ListFindingsResponse.nextToken, onPage: onPage)
    }

    ///  Lists the IPSets of the GuardDuty service specified by the detector ID. If you use this operation from a member account, the IPSets returned are the IPSets from the associated master account.
    public func listIPSetsPaginator(_ input: ListIPSetsRequest, onPage: @escaping (ListIPSetsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listIPSets, tokenKey: \ListIPSetsResponse.nextToken, onPage: onPage)
    }

    ///  Lists all GuardDuty membership invitations that were sent to the current AWS account.
    public func listInvitationsPaginator(_ input: ListInvitationsRequest, onPage: @escaping (ListInvitationsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listInvitations, tokenKey: \ListInvitationsResponse.nextToken, onPage: onPage)
    }

    ///  Lists details about all member accounts for the current GuardDuty master account.
    public func listMembersPaginator(_ input: ListMembersRequest, onPage: @escaping (ListMembersResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listMembers, tokenKey: \ListMembersResponse.nextToken, onPage: onPage)
    }

    ///  Returns a list of publishing destinations associated with the specified dectectorId.
    public func listPublishingDestinationsPaginator(_ input: ListPublishingDestinationsRequest, onPage: @escaping (ListPublishingDestinationsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listPublishingDestinations, tokenKey: \ListPublishingDestinationsResponse.nextToken, onPage: onPage)
    }

    ///  Lists the ThreatIntelSets of the GuardDuty service specified by the detector ID. If you use this operation from a member account, the ThreatIntelSets associated with the master account are returned.
    public func listThreatIntelSetsPaginator(_ input: ListThreatIntelSetsRequest, onPage: @escaping (ListThreatIntelSetsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listThreatIntelSets, tokenKey: \ListThreatIntelSetsResponse.nextToken, onPage: onPage)
    }

}

extension GuardDuty.ListDetectorsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GuardDuty.ListDetectorsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension GuardDuty.ListFiltersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GuardDuty.ListFiltersRequest {
        return .init(
            detectorId: self.detectorId, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension GuardDuty.ListFindingsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GuardDuty.ListFindingsRequest {
        return .init(
            detectorId: self.detectorId, 
            findingCriteria: self.findingCriteria, 
            maxResults: self.maxResults, 
            nextToken: token, 
            sortCriteria: self.sortCriteria
        )

    }
}

extension GuardDuty.ListIPSetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GuardDuty.ListIPSetsRequest {
        return .init(
            detectorId: self.detectorId, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension GuardDuty.ListInvitationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GuardDuty.ListInvitationsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension GuardDuty.ListMembersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GuardDuty.ListMembersRequest {
        return .init(
            detectorId: self.detectorId, 
            maxResults: self.maxResults, 
            nextToken: token, 
            onlyAssociated: self.onlyAssociated
        )

    }
}

extension GuardDuty.ListPublishingDestinationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GuardDuty.ListPublishingDestinationsRequest {
        return .init(
            detectorId: self.detectorId, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension GuardDuty.ListThreatIntelSetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GuardDuty.ListThreatIntelSetsRequest {
        return .init(
            detectorId: self.detectorId, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}


