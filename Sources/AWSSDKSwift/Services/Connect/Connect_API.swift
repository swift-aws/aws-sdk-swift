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
Client object for interacting with AWS Connect service.

Amazon Connect is a cloud-based contact center solution that makes it easy to set up and manage a customer contact center and provide reliable customer engagement at any scale. Amazon Connect provides rich metrics and real-time reporting that allow you to optimize contact routing. You can also resolve customer issues more efficiently by putting customers in touch with the right agents. There are limits to the number of Amazon Connect resources that you can create and limits to the number of requests that you can make per second. For more information, see Amazon Connect Service Limits in the Amazon Connect Administrator Guide.
*/
public struct Connect {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the Connect client
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
            service: "connect",
            serviceProtocol: .restjson,
            apiVersion: "2017-08-08",
            endpoint: endpoint,
            possibleErrorTypes: [ConnectErrorType.self]
        )
    }
    
    public func syncShutdown() throws {
        try client.syncShutdown()
    }
    
    //MARK: API Calls

    ///  Creates a user account for the specified Amazon Connect instance.
    public func createUser(_ input: CreateUserRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateUserResponse> {
        return client.execute(operation: "CreateUser", path: "/users/{InstanceId}", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes a user account from the specified Amazon Connect instance.
    @discardableResult public func deleteUser(_ input: DeleteUserRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteUser", path: "/users/{InstanceId}/{UserId}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Describes the specified user account. You can find the instance ID in the console (it’s the final part of the ARN). The console does not display the user IDs. Instead, list the users and note the IDs provided in the output.
    public func describeUser(_ input: DescribeUserRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserResponse> {
        return client.execute(operation: "DescribeUser", path: "/users/{InstanceId}/{UserId}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Describes the specified hierarchy group.
    public func describeUserHierarchyGroup(_ input: DescribeUserHierarchyGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserHierarchyGroupResponse> {
        return client.execute(operation: "DescribeUserHierarchyGroup", path: "/user-hierarchy-groups/{InstanceId}/{HierarchyGroupId}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Describes the hierarchy structure of the specified Amazon Connect instance.
    public func describeUserHierarchyStructure(_ input: DescribeUserHierarchyStructureRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserHierarchyStructureResponse> {
        return client.execute(operation: "DescribeUserHierarchyStructure", path: "/user-hierarchy-structure/{InstanceId}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Retrieves the contact attributes for the specified contact.
    public func getContactAttributes(_ input: GetContactAttributesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetContactAttributesResponse> {
        return client.execute(operation: "GetContactAttributes", path: "/contact/attributes/{InstanceId}/{InitialContactId}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Gets the real-time metric data from the specified Amazon Connect instance. For more information, see Real-time Metrics Reports in the Amazon Connect Administrator Guide.
    public func getCurrentMetricData(_ input: GetCurrentMetricDataRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCurrentMetricDataResponse> {
        return client.execute(operation: "GetCurrentMetricData", path: "/metrics/current/{InstanceId}", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Retrieves a token for federation.
    public func getFederationToken(_ input: GetFederationTokenRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetFederationTokenResponse> {
        return client.execute(operation: "GetFederationToken", path: "/user/federate/{InstanceId}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Gets historical metric data from the specified Amazon Connect instance. For more information, see Historical Metrics Reports in the Amazon Connect Administrator Guide.
    public func getMetricData(_ input: GetMetricDataRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetMetricDataResponse> {
        return client.execute(operation: "GetMetricData", path: "/metrics/historical/{InstanceId}", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Provides information about the contact flows for the specified Amazon Connect instance.
    public func listContactFlows(_ input: ListContactFlowsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListContactFlowsResponse> {
        return client.execute(operation: "ListContactFlows", path: "/contact-flows-summary/{InstanceId}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Provides information about the hours of operation for the specified Amazon Connect instance.
    public func listHoursOfOperations(_ input: ListHoursOfOperationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListHoursOfOperationsResponse> {
        return client.execute(operation: "ListHoursOfOperations", path: "/hours-of-operations-summary/{InstanceId}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Provides information about the phone numbers for the specified Amazon Connect instance.
    public func listPhoneNumbers(_ input: ListPhoneNumbersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPhoneNumbersResponse> {
        return client.execute(operation: "ListPhoneNumbers", path: "/phone-numbers-summary/{InstanceId}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Provides information about the queues for the specified Amazon Connect instance.
    public func listQueues(_ input: ListQueuesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListQueuesResponse> {
        return client.execute(operation: "ListQueues", path: "/queues-summary/{InstanceId}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Provides summary information about the routing profiles for the specified Amazon Connect instance.
    public func listRoutingProfiles(_ input: ListRoutingProfilesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRoutingProfilesResponse> {
        return client.execute(operation: "ListRoutingProfiles", path: "/routing-profiles-summary/{InstanceId}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Provides summary information about the security profiles for the specified Amazon Connect instance.
    public func listSecurityProfiles(_ input: ListSecurityProfilesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSecurityProfilesResponse> {
        return client.execute(operation: "ListSecurityProfiles", path: "/security-profiles-summary/{InstanceId}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists the tags for the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Provides summary information about the hierarchy groups for the specified Amazon Connect instance.
    public func listUserHierarchyGroups(_ input: ListUserHierarchyGroupsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListUserHierarchyGroupsResponse> {
        return client.execute(operation: "ListUserHierarchyGroups", path: "/user-hierarchy-groups-summary/{InstanceId}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Provides summary information about the users for the specified Amazon Connect instance.
    public func listUsers(_ input: ListUsersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListUsersResponse> {
        return client.execute(operation: "ListUsers", path: "/users-summary/{InstanceId}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Initiates a contact flow to start a new chat for the customer. Response of this API provides a token required to obtain credentials from the CreateParticipantConnection API in the Amazon Connect Participant Service. When a new chat contact is successfully created, clients need to subscribe to the participant’s connection for the created chat within 5 minutes. This is achieved by invoking CreateParticipantConnection with WEBSOCKET and CONNECTION_CREDENTIALS. 
    public func startChatContact(_ input: StartChatContactRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartChatContactResponse> {
        return client.execute(operation: "StartChatContact", path: "/contact/chat", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Initiates a contact flow to place an outbound call to a customer. There is a 60 second dialing timeout for this operation. If the call is not connected after 60 seconds, it fails.
    public func startOutboundVoiceContact(_ input: StartOutboundVoiceContactRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartOutboundVoiceContactResponse> {
        return client.execute(operation: "StartOutboundVoiceContact", path: "/contact/outbound-voice", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Ends the specified contact.
    public func stopContact(_ input: StopContactRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopContactResponse> {
        return client.execute(operation: "StopContact", path: "/contact/stop", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Adds the specified tags to the specified resource. The supported resource type is users.
    @discardableResult public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Removes the specified tags from the specified resource.
    @discardableResult public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates or updates the contact attributes associated with the specified contact. You can add or update attributes for both ongoing and completed contacts. For example, you can update the customer's name or the reason the customer called while the call is active, or add notes about steps that the agent took during the call that are displayed to the next agent that takes the call. You can also update attributes for a contact using data from your CRM application and save the data with the contact in Amazon Connect. You could also flag calls for additional analysis, such as legal review or identifying abusive callers. Contact attributes are available in Amazon Connect for 24 months, and are then deleted.  Important: You cannot use the operation to update attributes for contacts that occurred prior to the release of the API, September 12, 2018. You can update attributes only for contacts that started after the release of the API. If you attempt to update attributes for a contact that occurred prior to the release of the API, a 400 error is returned. This applies also to queued callbacks that were initiated prior to the release of the API but are still active in your instance.
    public func updateContactAttributes(_ input: UpdateContactAttributesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateContactAttributesResponse> {
        return client.execute(operation: "UpdateContactAttributes", path: "/contact/attributes", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Assigns the specified hierarchy group to the specified user.
    @discardableResult public func updateUserHierarchy(_ input: UpdateUserHierarchyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "UpdateUserHierarchy", path: "/users/{InstanceId}/{UserId}/hierarchy", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates the identity information for the specified user.
    @discardableResult public func updateUserIdentityInfo(_ input: UpdateUserIdentityInfoRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "UpdateUserIdentityInfo", path: "/users/{InstanceId}/{UserId}/identity-info", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates the phone configuration settings for the specified user.
    @discardableResult public func updateUserPhoneConfig(_ input: UpdateUserPhoneConfigRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "UpdateUserPhoneConfig", path: "/users/{InstanceId}/{UserId}/phone-config", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Assigns the specified routing profile to the specified user.
    @discardableResult public func updateUserRoutingProfile(_ input: UpdateUserRoutingProfileRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "UpdateUserRoutingProfile", path: "/users/{InstanceId}/{UserId}/routing-profile", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Assigns the specified security profiles to the specified user.
    @discardableResult public func updateUserSecurityProfiles(_ input: UpdateUserSecurityProfilesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "UpdateUserSecurityProfiles", path: "/users/{InstanceId}/{UserId}/security-profiles", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }
}
