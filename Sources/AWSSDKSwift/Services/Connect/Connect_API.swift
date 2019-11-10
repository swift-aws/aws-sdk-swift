// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
The Amazon Connect API Reference provides descriptions, syntax, and usage examples for each of the Amazon Connect actions, data types, parameters, and errors. Amazon Connect is a cloud-based contact center solution that makes it easy to set up and manage a customer contact center and provide reliable customer engagement at any scale. Throttling limits for the Amazon Connect API operations: For the GetMetricData and GetCurrentMetricData operations, a RateLimit of 5 per second, and a BurstLimit of 8 per second. For all other operations, a RateLimit of 2 per second, and a BurstLimit of 5 per second. You can request an increase to the throttling limits by submitting a Amazon Connect service limits increase form. You must be signed in to your AWS account to access the form.
*/
public struct Connect {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "connect",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-08-08",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [ConnectErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }

    ///  Creates a new user account in your Amazon Connect instance.
    public func createUser(_ input: CreateUserRequest) -> Future<CreateUserResponse> {
        return client.send(operation: "CreateUser", path: "/users/{InstanceId}", httpMethod: "PUT", input: input)
    }

    ///  Deletes a user account from Amazon Connect.
    @discardableResult public func deleteUser(_ input: DeleteUserRequest) -> Future<Void> {
        return client.send(operation: "DeleteUser", path: "/users/{InstanceId}/{UserId}", httpMethod: "DELETE", input: input)
    }

    ///  Returns a User object that contains information about the user account specified by the UserId.
    public func describeUser(_ input: DescribeUserRequest) -> Future<DescribeUserResponse> {
        return client.send(operation: "DescribeUser", path: "/users/{InstanceId}/{UserId}", httpMethod: "GET", input: input)
    }

    ///  Returns a HierarchyGroup object that includes information about a hierarchy group in your instance.
    public func describeUserHierarchyGroup(_ input: DescribeUserHierarchyGroupRequest) -> Future<DescribeUserHierarchyGroupResponse> {
        return client.send(operation: "DescribeUserHierarchyGroup", path: "/user-hierarchy-groups/{InstanceId}/{HierarchyGroupId}", httpMethod: "GET", input: input)
    }

    ///  Returns a HiearchyGroupStructure object, which contains data about the levels in the agent hierarchy.
    public func describeUserHierarchyStructure(_ input: DescribeUserHierarchyStructureRequest) -> Future<DescribeUserHierarchyStructureResponse> {
        return client.send(operation: "DescribeUserHierarchyStructure", path: "/user-hierarchy-structure/{InstanceId}", httpMethod: "GET", input: input)
    }

    ///  Retrieves the contact attributes associated with a contact.
    public func getContactAttributes(_ input: GetContactAttributesRequest) -> Future<GetContactAttributesResponse> {
        return client.send(operation: "GetContactAttributes", path: "/contact/attributes/{InstanceId}/{InitialContactId}", httpMethod: "GET", input: input)
    }

    ///  The GetCurrentMetricData operation retrieves current metric data from your Amazon Connect instance. If you are using an IAM account, it must have permission to the connect:GetCurrentMetricData action.
    public func getCurrentMetricData(_ input: GetCurrentMetricDataRequest) -> Future<GetCurrentMetricDataResponse> {
        return client.send(operation: "GetCurrentMetricData", path: "/metrics/current/{InstanceId}", httpMethod: "POST", input: input)
    }

    ///  Retrieves a token for federation.
    public func getFederationToken(_ input: GetFederationTokenRequest) -> Future<GetFederationTokenResponse> {
        return client.send(operation: "GetFederationToken", path: "/user/federate/{InstanceId}", httpMethod: "GET", input: input)
    }

    ///  The GetMetricData operation retrieves historical metrics data from your Amazon Connect instance. If you are using an IAM account, it must have permission to the connect:GetMetricData action.
    public func getMetricData(_ input: GetMetricDataRequest) -> Future<GetMetricDataResponse> {
        return client.send(operation: "GetMetricData", path: "/metrics/historical/{InstanceId}", httpMethod: "POST", input: input)
    }

    ///  Returns an array of RoutingProfileSummary objects that includes information about the routing profiles in your instance.
    public func listRoutingProfiles(_ input: ListRoutingProfilesRequest) -> Future<ListRoutingProfilesResponse> {
        return client.send(operation: "ListRoutingProfiles", path: "/routing-profiles-summary/{InstanceId}", httpMethod: "GET", input: input)
    }

    ///  Returns an array of SecurityProfileSummary objects that contain information about the security profiles in your instance, including the ARN, Id, and Name of the security profile.
    public func listSecurityProfiles(_ input: ListSecurityProfilesRequest) -> Future<ListSecurityProfilesResponse> {
        return client.send(operation: "ListSecurityProfiles", path: "/security-profiles-summary/{InstanceId}", httpMethod: "GET", input: input)
    }

    ///  Returns a UserHierarchyGroupSummaryList, which is an array of HierarchyGroupSummary objects that contain information about the hierarchy groups in your instance.
    public func listUserHierarchyGroups(_ input: ListUserHierarchyGroupsRequest) -> Future<ListUserHierarchyGroupsResponse> {
        return client.send(operation: "ListUserHierarchyGroups", path: "/user-hierarchy-groups-summary/{InstanceId}", httpMethod: "GET", input: input)
    }

    ///  Returns a UserSummaryList, which is an array of UserSummary objects.
    public func listUsers(_ input: ListUsersRequest) -> Future<ListUsersResponse> {
        return client.send(operation: "ListUsers", path: "/users-summary/{InstanceId}", httpMethod: "GET", input: input)
    }

    ///  The StartOutboundVoiceContact operation initiates a contact flow to place an outbound call to a customer. If you are using an IAM account, it must have permission to the connect:StartOutboundVoiceContact action. There is a 60 second dialing timeout for this operation. If the call is not connected after 60 seconds, the call fails.
    public func startOutboundVoiceContact(_ input: StartOutboundVoiceContactRequest) -> Future<StartOutboundVoiceContactResponse> {
        return client.send(operation: "StartOutboundVoiceContact", path: "/contact/outbound-voice", httpMethod: "PUT", input: input)
    }

    ///  Ends the contact initiated by the StartOutboundVoiceContact operation. If you are using an IAM account, it must have permission to the connect:StopContact action.
    public func stopContact(_ input: StopContactRequest) -> Future<StopContactResponse> {
        return client.send(operation: "StopContact", path: "/contact/stop", httpMethod: "POST", input: input)
    }

    ///  The UpdateContactAttributes operation lets you programmatically create new, or update existing, contact attributes associated with a contact. You can use the operation to add or update attributes for both ongoing and completed contacts. For example, you can update the customer's name or the reason the customer called while the call is active, or add notes about steps that the agent took during the call that are displayed to the next agent that takes the call. You can also use the UpdateContactAttributes operation to update attributes for a contact using data from your CRM application and save the data with the contact in Amazon Connect. You could also flag calls for additional analysis, such as legal review or identifying abusive callers. Contact attributes are available in Amazon Connect for 24 months, and are then deleted.  Important:  You cannot use the operation to update attributes for contacts that occurred prior to the release of the API, September 12, 2018. You can update attributes only for contacts that started after the release of the API. If you attempt to update attributes for a contact that occurred prior to the release of the API, a 400 error is returned. This applies also to queued callbacks that were initiated prior to the release of the API but are still active in your instance.
    public func updateContactAttributes(_ input: UpdateContactAttributesRequest) -> Future<UpdateContactAttributesResponse> {
        return client.send(operation: "UpdateContactAttributes", path: "/contact/attributes", httpMethod: "POST", input: input)
    }

    ///  Assigns the specified hierarchy group to the user.
    @discardableResult public func updateUserHierarchy(_ input: UpdateUserHierarchyRequest) -> Future<Void> {
        return client.send(operation: "UpdateUserHierarchy", path: "/users/{InstanceId}/{UserId}/hierarchy", httpMethod: "POST", input: input)
    }

    ///  Updates the identity information for the specified user in a UserIdentityInfo object, including email, first name, and last name.
    @discardableResult public func updateUserIdentityInfo(_ input: UpdateUserIdentityInfoRequest) -> Future<Void> {
        return client.send(operation: "UpdateUserIdentityInfo", path: "/users/{InstanceId}/{UserId}/identity-info", httpMethod: "POST", input: input)
    }

    ///  Updates the phone configuration settings in the UserPhoneConfig object for the specified user.
    @discardableResult public func updateUserPhoneConfig(_ input: UpdateUserPhoneConfigRequest) -> Future<Void> {
        return client.send(operation: "UpdateUserPhoneConfig", path: "/users/{InstanceId}/{UserId}/phone-config", httpMethod: "POST", input: input)
    }

    ///  Assigns the specified routing profile to a user.
    @discardableResult public func updateUserRoutingProfile(_ input: UpdateUserRoutingProfileRequest) -> Future<Void> {
        return client.send(operation: "UpdateUserRoutingProfile", path: "/users/{InstanceId}/{UserId}/routing-profile", httpMethod: "POST", input: input)
    }

    ///  Updates the security profiles assigned to the user.
    @discardableResult public func updateUserSecurityProfiles(_ input: UpdateUserSecurityProfilesRequest) -> Future<Void> {
        return client.send(operation: "UpdateUserSecurityProfiles", path: "/users/{InstanceId}/{UserId}/security-profiles", httpMethod: "POST", input: input)
    }
}
