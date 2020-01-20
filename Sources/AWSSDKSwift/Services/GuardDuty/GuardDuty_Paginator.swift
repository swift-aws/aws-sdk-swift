// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.


extension GuardDuty {

    ///  Lists detectorIds of all the existing Amazon GuardDuty detector resources.
    public func listDetectorsPaginator(_ input: ListDetectorsRequest) -> Future<[String]> {
        return client.paginate(input: input, command: listDetectors, resultKey: "detectorIds", tokenKey: "nextToken")
    }
    
    ///  Returns a paginated list of the current filters.
    public func listFiltersPaginator(_ input: ListFiltersRequest) -> Future<[String]> {
        return client.paginate(input: input, command: listFilters, resultKey: "filterNames", tokenKey: "nextToken")
    }
    
    ///  Lists Amazon GuardDuty findings for the specified detector ID.
    public func listFindingsPaginator(_ input: ListFindingsRequest) -> Future<[String]> {
        return client.paginate(input: input, command: listFindings, resultKey: "findingIds", tokenKey: "nextToken")
    }
    
    ///  Lists the IPSets of the GuardDuty service specified by the detector ID. If you use this operation from a member account, the IPSets returned are the IPSets from the associated master account.
    public func listIPSetsPaginator(_ input: ListIPSetsRequest) -> Future<[String]> {
        return client.paginate(input: input, command: listIPSets, resultKey: "ipSetIds", tokenKey: "nextToken")
    }
    
    ///  Lists all GuardDuty membership invitations that were sent to the current AWS account.
    public func listInvitationsPaginator(_ input: ListInvitationsRequest) -> Future<[Invitation]> {
        return client.paginate(input: input, command: listInvitations, resultKey: "invitations", tokenKey: "nextToken")
    }
    
    ///  Lists details about all member accounts for the current GuardDuty master account.
    public func listMembersPaginator(_ input: ListMembersRequest) -> Future<[Member]> {
        return client.paginate(input: input, command: listMembers, resultKey: "members", tokenKey: "nextToken")
    }
    
    ///  Lists the ThreatIntelSets of the GuardDuty service specified by the detector ID. If you use this operation from a member account, the ThreatIntelSets associated with the master account are returned.
    public func listThreatIntelSetsPaginator(_ input: ListThreatIntelSetsRequest) -> Future<[String]> {
        return client.paginate(input: input, command: listThreatIntelSets, resultKey: "threatIntelSetIds", tokenKey: "nextToken")
    }
    
}

extension GuardDuty.ListDetectorsRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension GuardDuty.ListFiltersRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            detectorId: original.detectorId, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension GuardDuty.ListFindingsRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            detectorId: original.detectorId, 
            findingCriteria: original.findingCriteria, 
            maxResults: original.maxResults, 
            nextToken: token, 
            sortCriteria: original.sortCriteria
        )
    }
}

extension GuardDuty.ListIPSetsRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            detectorId: original.detectorId, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension GuardDuty.ListInvitationsRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension GuardDuty.ListMembersRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            detectorId: original.detectorId, 
            maxResults: original.maxResults, 
            nextToken: token, 
            onlyAssociated: original.onlyAssociated
        )
    }
}

extension GuardDuty.ListThreatIntelSetsRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            detectorId: original.detectorId, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

