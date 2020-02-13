// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension CodeGuruProfiler {
    //MARK: Enums

    public enum AggregationPeriod: String, CustomStringConvertible, Codable {
        case p1d = "P1D"
        case pt1h = "PT1H"
        case pt5m = "PT5M"
        public var description: String { return self.rawValue }
    }

    public enum OrderBy: String, CustomStringConvertible, Codable {
        case timestampascending = "TimestampAscending"
        case timestampdescending = "TimestampDescending"
        public var description: String { return self.rawValue }
    }

    //MARK: Shapes

    public struct AgentConfiguration: AWSShape {

        /// Specifies the period to follow the configuration (to profile or not) and call back to get a new configuration.
        public let periodInSeconds: Int
        /// Specifies if the profiling should be enabled by the agent.
        public let shouldProfile: Bool

        public init(periodInSeconds: Int, shouldProfile: Bool) {
            self.periodInSeconds = periodInSeconds
            self.shouldProfile = shouldProfile
        }

        private enum CodingKeys: String, CodingKey {
            case periodInSeconds = "periodInSeconds"
            case shouldProfile = "shouldProfile"
        }
    }

    public struct AgentOrchestrationConfig: AWSShape {

        /// If the agents should be enabled to create and report profiles.
        public let profilingEnabled: Bool

        public init(profilingEnabled: Bool) {
            self.profilingEnabled = profilingEnabled
        }

        private enum CodingKeys: String, CodingKey {
            case profilingEnabled = "profilingEnabled"
        }
    }

    public struct AggregatedProfileTime: AWSShape {

        /// The aggregation period of the aggregated profile.
        public let period: AggregationPeriod?
        /// The start time of the aggregated profile.
        public let start: TimeStamp?

        public init(period: AggregationPeriod? = nil, start: TimeStamp? = nil) {
            self.period = period
            self.start = start
        }

        private enum CodingKeys: String, CodingKey {
            case period = "period"
            case start = "start"
        }
    }

    public struct ConfigureAgentRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "profilingGroupName", location: .uri(locationName: "profilingGroupName"))
        ]

        public let fleetInstanceId: String?
        public let profilingGroupName: String

        public init(fleetInstanceId: String? = nil, profilingGroupName: String) {
            self.fleetInstanceId = fleetInstanceId
            self.profilingGroupName = profilingGroupName
        }

        public func validate(name: String) throws {
            try validate(self.fleetInstanceId, name:"fleetInstanceId", parent: name, max: 255)
            try validate(self.fleetInstanceId, name:"fleetInstanceId", parent: name, min: 1)
            try validate(self.fleetInstanceId, name:"fleetInstanceId", parent: name, pattern: "^[\\w-.:/]+$")
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, max: 255)
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, min: 1)
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, pattern: "^[\\w-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case fleetInstanceId = "fleetInstanceId"
            case profilingGroupName = "profilingGroupName"
        }
    }

    public struct ConfigureAgentResponse: AWSShape {
        /// The key for the payload
        public static let payloadPath: String? = "configuration"

        /// The configuration for the agent to use.
        public let configuration: AgentConfiguration

        public init(configuration: AgentConfiguration) {
            self.configuration = configuration
        }

        private enum CodingKeys: String, CodingKey {
            case configuration = "configuration"
        }
    }

    public struct CreateProfilingGroupRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "clientToken", location: .querystring(locationName: "clientToken"))
        ]

        public let agentOrchestrationConfig: AgentOrchestrationConfig?
        public let clientToken: String
        public let profilingGroupName: String

        public init(agentOrchestrationConfig: AgentOrchestrationConfig? = nil, clientToken: String = CreateProfilingGroupRequest.idempotencyToken(), profilingGroupName: String) {
            self.agentOrchestrationConfig = agentOrchestrationConfig
            self.clientToken = clientToken
            self.profilingGroupName = profilingGroupName
        }

        public func validate(name: String) throws {
            try validate(self.clientToken, name:"clientToken", parent: name, max: 64)
            try validate(self.clientToken, name:"clientToken", parent: name, min: 1)
            try validate(self.clientToken, name:"clientToken", parent: name, pattern: "^[\\w-]+$")
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, max: 255)
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, min: 1)
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, pattern: "^[\\w-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case agentOrchestrationConfig = "agentOrchestrationConfig"
            case clientToken = "clientToken"
            case profilingGroupName = "profilingGroupName"
        }
    }

    public struct CreateProfilingGroupResponse: AWSShape {
        /// The key for the payload
        public static let payloadPath: String? = "profilingGroup"

        public let profilingGroup: ProfilingGroupDescription

        public init(profilingGroup: ProfilingGroupDescription) {
            self.profilingGroup = profilingGroup
        }

        private enum CodingKeys: String, CodingKey {
            case profilingGroup = "profilingGroup"
        }
    }

    public struct DeleteProfilingGroupRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "profilingGroupName", location: .uri(locationName: "profilingGroupName"))
        ]

        public let profilingGroupName: String

        public init(profilingGroupName: String) {
            self.profilingGroupName = profilingGroupName
        }

        public func validate(name: String) throws {
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, max: 255)
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, min: 1)
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, pattern: "^[\\w-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case profilingGroupName = "profilingGroupName"
        }
    }

    public struct DeleteProfilingGroupResponse: AWSShape {


        public init() {
        }

    }

    public struct DescribeProfilingGroupRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "profilingGroupName", location: .uri(locationName: "profilingGroupName"))
        ]

        public let profilingGroupName: String

        public init(profilingGroupName: String) {
            self.profilingGroupName = profilingGroupName
        }

        public func validate(name: String) throws {
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, max: 255)
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, min: 1)
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, pattern: "^[\\w-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case profilingGroupName = "profilingGroupName"
        }
    }

    public struct DescribeProfilingGroupResponse: AWSShape {
        /// The key for the payload
        public static let payloadPath: String? = "profilingGroup"

        public let profilingGroup: ProfilingGroupDescription

        public init(profilingGroup: ProfilingGroupDescription) {
            self.profilingGroup = profilingGroup
        }

        private enum CodingKeys: String, CodingKey {
            case profilingGroup = "profilingGroup"
        }
    }

    public struct GetProfileRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "accept", location: .header(locationName: "Accept")), 
            AWSShapeMember(label: "endTime", location: .querystring(locationName: "endTime")), 
            AWSShapeMember(label: "maxDepth", location: .querystring(locationName: "maxDepth")), 
            AWSShapeMember(label: "period", location: .querystring(locationName: "period")), 
            AWSShapeMember(label: "profilingGroupName", location: .uri(locationName: "profilingGroupName")), 
            AWSShapeMember(label: "startTime", location: .querystring(locationName: "startTime"))
        ]

        /// The format of the profile to return. Supports application/json or application/x-amzn-ion. Defaults to application/x-amzn-ion.
        public let accept: String?
        /// The end time of the profile to get. Either period or endTime must be specified. Must be greater than start and the overall time range to be in the past and not larger than a week.
        public let endTime: TimeStamp?
        public let maxDepth: Int?
        /// The period of the profile to get. Exactly two of startTime, period and endTime must be specified. Must be positive and the overall time range to be in the past and not larger than a week.
        public let period: String?
        public let profilingGroupName: String
        /// The start time of the profile to get.
        public let startTime: TimeStamp?

        public init(accept: String? = nil, endTime: TimeStamp? = nil, maxDepth: Int? = nil, period: String? = nil, profilingGroupName: String, startTime: TimeStamp? = nil) {
            self.accept = accept
            self.endTime = endTime
            self.maxDepth = maxDepth
            self.period = period
            self.profilingGroupName = profilingGroupName
            self.startTime = startTime
        }

        public func validate(name: String) throws {
            try validate(self.maxDepth, name:"maxDepth", parent: name, max: 10000)
            try validate(self.maxDepth, name:"maxDepth", parent: name, min: 1)
            try validate(self.period, name:"period", parent: name, max: 64)
            try validate(self.period, name:"period", parent: name, min: 1)
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, max: 255)
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, min: 1)
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, pattern: "^[\\w-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case accept = "Accept"
            case endTime = "endTime"
            case maxDepth = "maxDepth"
            case period = "period"
            case profilingGroupName = "profilingGroupName"
            case startTime = "startTime"
        }
    }

    public struct GetProfileResponse: AWSShape {
        /// The key for the payload
        public static let payloadPath: String? = "profile"
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "contentEncoding", location: .header(locationName: "Content-Encoding")), 
            AWSShapeMember(label: "contentType", location: .header(locationName: "Content-Type")), 
            AWSShapeMember(label: "profile", encoding: .blob)
        ]

        /// The content encoding of the profile in the payload.
        public let contentEncoding: String?
        /// The content type of the profile in the payload. Will be application/json or application/x-amzn-ion based on Accept header in the request.
        public let contentType: String
        public let profile: Data

        public init(contentEncoding: String? = nil, contentType: String, profile: Data) {
            self.contentEncoding = contentEncoding
            self.contentType = contentType
            self.profile = profile
        }

        private enum CodingKeys: String, CodingKey {
            case contentEncoding = "Content-Encoding"
            case contentType = "Content-Type"
            case profile = "profile"
        }
    }

    public struct ListProfileTimesRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "endTime", location: .querystring(locationName: "endTime")), 
            AWSShapeMember(label: "maxResults", location: .querystring(locationName: "maxResults")), 
            AWSShapeMember(label: "nextToken", location: .querystring(locationName: "nextToken")), 
            AWSShapeMember(label: "orderBy", location: .querystring(locationName: "orderBy")), 
            AWSShapeMember(label: "period", location: .querystring(locationName: "period")), 
            AWSShapeMember(label: "profilingGroupName", location: .uri(locationName: "profilingGroupName")), 
            AWSShapeMember(label: "startTime", location: .querystring(locationName: "startTime"))
        ]

        /// The end time of the time range to list profiles until.
        public let endTime: TimeStamp
        public let maxResults: Int?
        public let nextToken: String?
        /// The order (ascending or descending by start time of the profile) to list the profiles by. Defaults to TIMESTAMP_DESCENDING.
        public let orderBy: OrderBy?
        /// The aggregation period to list the profiles for.
        public let period: AggregationPeriod
        public let profilingGroupName: String
        /// The start time of the time range to list the profiles from.
        public let startTime: TimeStamp

        public init(endTime: TimeStamp, maxResults: Int? = nil, nextToken: String? = nil, orderBy: OrderBy? = nil, period: AggregationPeriod, profilingGroupName: String, startTime: TimeStamp) {
            self.endTime = endTime
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.orderBy = orderBy
            self.period = period
            self.profilingGroupName = profilingGroupName
            self.startTime = startTime
        }

        public func validate(name: String) throws {
            try validate(self.maxResults, name:"maxResults", parent: name, max: 1000)
            try validate(self.maxResults, name:"maxResults", parent: name, min: 1)
            try validate(self.nextToken, name:"nextToken", parent: name, max: 64)
            try validate(self.nextToken, name:"nextToken", parent: name, min: 1)
            try validate(self.nextToken, name:"nextToken", parent: name, pattern: "^[\\w-]+$")
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, max: 255)
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, min: 1)
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, pattern: "^[\\w-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case endTime = "endTime"
            case maxResults = "maxResults"
            case nextToken = "nextToken"
            case orderBy = "orderBy"
            case period = "period"
            case profilingGroupName = "profilingGroupName"
            case startTime = "startTime"
        }
    }

    public struct ListProfileTimesResponse: AWSShape {

        public let nextToken: String?
        /// List of start times of the available profiles for the aggregation period in the specified time range.
        public let profileTimes: [ProfileTime]

        public init(nextToken: String? = nil, profileTimes: [ProfileTime]) {
            self.nextToken = nextToken
            self.profileTimes = profileTimes
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
            case profileTimes = "profileTimes"
        }
    }

    public struct ListProfilingGroupsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "includeDescription", location: .querystring(locationName: "includeDescription")), 
            AWSShapeMember(label: "maxResults", location: .querystring(locationName: "maxResults")), 
            AWSShapeMember(label: "nextToken", location: .querystring(locationName: "nextToken"))
        ]

        /// If set to true, returns the full description of the profiling groups instead of the names. Defaults to false.
        public let includeDescription: Bool?
        public let maxResults: Int?
        public let nextToken: String?

        public init(includeDescription: Bool? = nil, maxResults: Int? = nil, nextToken: String? = nil) {
            self.includeDescription = includeDescription
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try validate(self.maxResults, name:"maxResults", parent: name, max: 1000)
            try validate(self.maxResults, name:"maxResults", parent: name, min: 1)
            try validate(self.nextToken, name:"nextToken", parent: name, max: 64)
            try validate(self.nextToken, name:"nextToken", parent: name, min: 1)
            try validate(self.nextToken, name:"nextToken", parent: name, pattern: "^[\\w-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case includeDescription = "includeDescription"
            case maxResults = "maxResults"
            case nextToken = "nextToken"
        }
    }

    public struct ListProfilingGroupsResponse: AWSShape {

        public let nextToken: String?
        public let profilingGroupNames: [String]
        public let profilingGroups: [ProfilingGroupDescription]?

        public init(nextToken: String? = nil, profilingGroupNames: [String], profilingGroups: [ProfilingGroupDescription]? = nil) {
            self.nextToken = nextToken
            self.profilingGroupNames = profilingGroupNames
            self.profilingGroups = profilingGroups
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
            case profilingGroupNames = "profilingGroupNames"
            case profilingGroups = "profilingGroups"
        }
    }

    public struct PostAgentProfileRequest: AWSShape {
        /// The key for the payload
        public static let payloadPath: String? = "agentProfile"
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "agentProfile", encoding: .blob), 
            AWSShapeMember(label: "contentType", location: .header(locationName: "Content-Type")), 
            AWSShapeMember(label: "profileToken", location: .querystring(locationName: "profileToken")), 
            AWSShapeMember(label: "profilingGroupName", location: .uri(locationName: "profilingGroupName"))
        ]

        public let agentProfile: Data
        /// The content type of the agent profile in the payload. Recommended to send the profile gzipped with content-type application/octet-stream. Other accepted values are application/x-amzn-ion and application/json for unzipped Ion and JSON respectively.
        public let contentType: String
        /// Client generated token to deduplicate the agent profile during aggregation.
        public let profileToken: String?
        public let profilingGroupName: String

        public init(agentProfile: Data, contentType: String, profileToken: String? = PostAgentProfileRequest.idempotencyToken(), profilingGroupName: String) {
            self.agentProfile = agentProfile
            self.contentType = contentType
            self.profileToken = profileToken
            self.profilingGroupName = profilingGroupName
        }

        public func validate(name: String) throws {
            try validate(self.profileToken, name:"profileToken", parent: name, max: 64)
            try validate(self.profileToken, name:"profileToken", parent: name, min: 1)
            try validate(self.profileToken, name:"profileToken", parent: name, pattern: "^[\\w-]+$")
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, max: 255)
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, min: 1)
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, pattern: "^[\\w-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case agentProfile = "agentProfile"
            case contentType = "Content-Type"
            case profileToken = "profileToken"
            case profilingGroupName = "profilingGroupName"
        }
    }

    public struct PostAgentProfileResponse: AWSShape {


        public init() {
        }

    }

    public struct ProfileTime: AWSShape {

        /// The start time of the profile.
        public let start: TimeStamp?

        public init(start: TimeStamp? = nil) {
            self.start = start
        }

        private enum CodingKeys: String, CodingKey {
            case start = "start"
        }
    }

    public struct ProfilingGroupDescription: AWSShape {

        public let agentOrchestrationConfig: AgentOrchestrationConfig?
        public let arn: String?
        /// The timestamp of when the profiling group was created.
        public let createdAt: TimeStamp?
        public let name: String?
        public let profilingStatus: ProfilingStatus?
        /// The timestamp of when the profiling group was last updated.
        public let updatedAt: TimeStamp?

        public init(agentOrchestrationConfig: AgentOrchestrationConfig? = nil, arn: String? = nil, createdAt: TimeStamp? = nil, name: String? = nil, profilingStatus: ProfilingStatus? = nil, updatedAt: TimeStamp? = nil) {
            self.agentOrchestrationConfig = agentOrchestrationConfig
            self.arn = arn
            self.createdAt = createdAt
            self.name = name
            self.profilingStatus = profilingStatus
            self.updatedAt = updatedAt
        }

        private enum CodingKeys: String, CodingKey {
            case agentOrchestrationConfig = "agentOrchestrationConfig"
            case arn = "arn"
            case createdAt = "createdAt"
            case name = "name"
            case profilingStatus = "profilingStatus"
            case updatedAt = "updatedAt"
        }
    }

    public struct ProfilingStatus: AWSShape {

        /// Timestamp of when the last interaction of the agent with configureAgent API for orchestration.
        public let latestAgentOrchestratedAt: TimeStamp?
        /// Timestamp of when the latest agent profile was successfully reported.
        public let latestAgentProfileReportedAt: TimeStamp?
        /// The time range of latest aggregated profile available.
        public let latestAggregatedProfile: AggregatedProfileTime?

        public init(latestAgentOrchestratedAt: TimeStamp? = nil, latestAgentProfileReportedAt: TimeStamp? = nil, latestAggregatedProfile: AggregatedProfileTime? = nil) {
            self.latestAgentOrchestratedAt = latestAgentOrchestratedAt
            self.latestAgentProfileReportedAt = latestAgentProfileReportedAt
            self.latestAggregatedProfile = latestAggregatedProfile
        }

        private enum CodingKeys: String, CodingKey {
            case latestAgentOrchestratedAt = "latestAgentOrchestratedAt"
            case latestAgentProfileReportedAt = "latestAgentProfileReportedAt"
            case latestAggregatedProfile = "latestAggregatedProfile"
        }
    }

    public struct UpdateProfilingGroupRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "profilingGroupName", location: .uri(locationName: "profilingGroupName"))
        ]

        /// Remote configuration to configure the agents of the profiling group.
        public let agentOrchestrationConfig: AgentOrchestrationConfig
        public let profilingGroupName: String

        public init(agentOrchestrationConfig: AgentOrchestrationConfig, profilingGroupName: String) {
            self.agentOrchestrationConfig = agentOrchestrationConfig
            self.profilingGroupName = profilingGroupName
        }

        public func validate(name: String) throws {
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, max: 255)
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, min: 1)
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, pattern: "^[\\w-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case agentOrchestrationConfig = "agentOrchestrationConfig"
            case profilingGroupName = "profilingGroupName"
        }
    }

    public struct UpdateProfilingGroupResponse: AWSShape {
        /// The key for the payload
        public static let payloadPath: String? = "profilingGroup"

        public let profilingGroup: ProfilingGroupDescription

        public init(profilingGroup: ProfilingGroupDescription) {
            self.profilingGroup = profilingGroup
        }

        private enum CodingKeys: String, CodingKey {
            case profilingGroup = "profilingGroup"
        }
    }
}
