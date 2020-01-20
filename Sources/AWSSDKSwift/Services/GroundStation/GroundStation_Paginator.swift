// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.


extension GroundStation {

    ///  Returns a list of Config objects.
    public func listConfigsPaginator(_ input: ListConfigsRequest) -> Future<[ConfigListItem]> {
        return client.paginate(input: input, command: listConfigs, resultKey: "configList", tokenKey: "nextToken")
    }
    
    ///  Returns a list of contacts.
    ///           If statusList contains AVAILABLE, the request must include
    ///        groundstation, missionprofileArn, and satelliteArn.
    ///        
    public func listContactsPaginator(_ input: ListContactsRequest) -> Future<[ContactData]> {
        return client.paginate(input: input, command: listContacts, resultKey: "contactList", tokenKey: "nextToken")
    }
    
    ///  Returns a list of DataflowEndpoint groups.
    public func listDataflowEndpointGroupsPaginator(_ input: ListDataflowEndpointGroupsRequest) -> Future<[DataflowEndpointListItem]> {
        return client.paginate(input: input, command: listDataflowEndpointGroups, resultKey: "dataflowEndpointGroupList", tokenKey: "nextToken")
    }
    
    ///  Returns a list of ground stations. 
    public func listGroundStationsPaginator(_ input: ListGroundStationsRequest) -> Future<[GroundStationData]> {
        return client.paginate(input: input, command: listGroundStations, resultKey: "groundStationList", tokenKey: "nextToken")
    }
    
    ///  Returns a list of mission profiles.
    public func listMissionProfilesPaginator(_ input: ListMissionProfilesRequest) -> Future<[MissionProfileListItem]> {
        return client.paginate(input: input, command: listMissionProfiles, resultKey: "missionProfileList", tokenKey: "nextToken")
    }
    
    ///  Returns a list of satellites.
    public func listSatellitesPaginator(_ input: ListSatellitesRequest) -> Future<[SatelliteListItem]> {
        return client.paginate(input: input, command: listSatellites, resultKey: "satellites", tokenKey: "nextToken")
    }
    
}

extension GroundStation.ListConfigsRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension GroundStation.ListContactsRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            endTime: original.endTime, 
            groundStation: original.groundStation, 
            maxResults: original.maxResults, 
            missionProfileArn: original.missionProfileArn, 
            nextToken: token, 
            satelliteArn: original.satelliteArn, 
            startTime: original.startTime, 
            statusList: original.statusList
        )
    }
}

extension GroundStation.ListDataflowEndpointGroupsRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension GroundStation.ListGroundStationsRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension GroundStation.ListMissionProfilesRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension GroundStation.ListSatellitesRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

