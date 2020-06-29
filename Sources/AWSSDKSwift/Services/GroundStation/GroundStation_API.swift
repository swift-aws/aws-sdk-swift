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
Client object for interacting with AWS GroundStation service.

Welcome to the AWS Ground Station API Reference. AWS Ground Station is a fully managed service that enables you to control satellite communications, downlink and process satellite data, and scale your satellite operations efficiently and cost-effectively without having to build or manage your own ground station infrastructure.
*/
public struct GroundStation {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the GroundStation client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    public init(
        client: AWSClient,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSSDKSwiftCore.Partition = .aws,
        endpoint: String? = nil
    ) {
        self.client = client
        self.serviceConfig = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "groundstation",
            serviceProtocol: .restjson,
            apiVersion: "2019-05-23",
            endpoint: endpoint,
            possibleErrorTypes: [GroundStationErrorType.self]
        )
    }
    
    public func syncShutdown() throws {
        try client.syncShutdown()
    }
    
    //MARK: API Calls

    ///  Cancels a contact with a specified contact ID.
    public func cancelContact(_ input: CancelContactRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ContactIdResponse> {
        return client.execute(operation: "CancelContact", path: "/contact/{contactId}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates a Config with the specified configData parameters. Only one type of configData can be specified.
    public func createConfig(_ input: CreateConfigRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ConfigIdResponse> {
        return client.execute(operation: "CreateConfig", path: "/config", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates a DataflowEndpoint group containing the specified list of DataflowEndpoint objects. The name field in each endpoint is used in your mission profile DataflowEndpointConfig to specify which endpoints to use during a contact. When a contact uses multiple DataflowEndpointConfig objects, each Config must match a DataflowEndpoint in the same group.
    public func createDataflowEndpointGroup(_ input: CreateDataflowEndpointGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DataflowEndpointGroupIdResponse> {
        return client.execute(operation: "CreateDataflowEndpointGroup", path: "/dataflowEndpointGroup", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates a mission profile.  dataflowEdges is a list of lists of strings. Each lower level list of strings has two elements: a from ARN and a to ARN.
    public func createMissionProfile(_ input: CreateMissionProfileRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<MissionProfileIdResponse> {
        return client.execute(operation: "CreateMissionProfile", path: "/missionprofile", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes a Config.
    public func deleteConfig(_ input: DeleteConfigRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ConfigIdResponse> {
        return client.execute(operation: "DeleteConfig", path: "/config/{configType}/{configId}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes a dataflow endpoint group.
    public func deleteDataflowEndpointGroup(_ input: DeleteDataflowEndpointGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DataflowEndpointGroupIdResponse> {
        return client.execute(operation: "DeleteDataflowEndpointGroup", path: "/dataflowEndpointGroup/{dataflowEndpointGroupId}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes a mission profile.
    public func deleteMissionProfile(_ input: DeleteMissionProfileRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<MissionProfileIdResponse> {
        return client.execute(operation: "DeleteMissionProfile", path: "/missionprofile/{missionProfileId}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Describes an existing contact.
    public func describeContact(_ input: DescribeContactRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeContactResponse> {
        return client.execute(operation: "DescribeContact", path: "/contact/{contactId}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns Config information. Only one Config response can be returned.
    public func getConfig(_ input: GetConfigRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetConfigResponse> {
        return client.execute(operation: "GetConfig", path: "/config/{configType}/{configId}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns the dataflow endpoint group.
    public func getDataflowEndpointGroup(_ input: GetDataflowEndpointGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDataflowEndpointGroupResponse> {
        return client.execute(operation: "GetDataflowEndpointGroup", path: "/dataflowEndpointGroup/{dataflowEndpointGroupId}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns the number of minutes used by account.
    public func getMinuteUsage(_ input: GetMinuteUsageRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetMinuteUsageResponse> {
        return client.execute(operation: "GetMinuteUsage", path: "/minute-usage", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns a mission profile.
    public func getMissionProfile(_ input: GetMissionProfileRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetMissionProfileResponse> {
        return client.execute(operation: "GetMissionProfile", path: "/missionprofile/{missionProfileId}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns a satellite.
    public func getSatellite(_ input: GetSatelliteRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSatelliteResponse> {
        return client.execute(operation: "GetSatellite", path: "/satellite/{satelliteId}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns a list of Config objects.
    public func listConfigs(_ input: ListConfigsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListConfigsResponse> {
        return client.execute(operation: "ListConfigs", path: "/config", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns a list of contacts. If statusList contains AVAILABLE, the request must include groundStation, missionprofileArn, and satelliteArn. 
    public func listContacts(_ input: ListContactsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListContactsResponse> {
        return client.execute(operation: "ListContacts", path: "/contacts", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns a list of DataflowEndpoint groups.
    public func listDataflowEndpointGroups(_ input: ListDataflowEndpointGroupsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDataflowEndpointGroupsResponse> {
        return client.execute(operation: "ListDataflowEndpointGroups", path: "/dataflowEndpointGroup", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns a list of ground stations. 
    public func listGroundStations(_ input: ListGroundStationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListGroundStationsResponse> {
        return client.execute(operation: "ListGroundStations", path: "/groundstation", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns a list of mission profiles.
    public func listMissionProfiles(_ input: ListMissionProfilesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListMissionProfilesResponse> {
        return client.execute(operation: "ListMissionProfiles", path: "/missionprofile", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns a list of satellites.
    public func listSatellites(_ input: ListSatellitesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSatellitesResponse> {
        return client.execute(operation: "ListSatellites", path: "/satellite", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Returns a list of tags for a specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Reserves a contact using specified parameters.
    public func reserveContact(_ input: ReserveContactRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ContactIdResponse> {
        return client.execute(operation: "ReserveContact", path: "/contact", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Assigns a tag to a resource.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deassigns a resource tag.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates the Config used when scheduling contacts. Updating a Config will not update the execution parameters for existing future contacts scheduled with this Config.
    public func updateConfig(_ input: UpdateConfigRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ConfigIdResponse> {
        return client.execute(operation: "UpdateConfig", path: "/config/{configType}/{configId}", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates a mission profile. Updating a mission profile will not update the execution parameters for existing future contacts.
    public func updateMissionProfile(_ input: UpdateMissionProfileRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<MissionProfileIdResponse> {
        return client.execute(operation: "UpdateMissionProfile", path: "/missionprofile/{missionProfileId}", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }
}
