// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension AugmentedAIRuntime {
    //MARK: Enums

    public enum ContentClassifier: String, CustomStringConvertible, Codable {
        case freeofpersonallyidentifiableinformation = "FreeOfPersonallyIdentifiableInformation"
        case freeofadultcontent = "FreeOfAdultContent"
        public var description: String { return self.rawValue }
    }

    public enum HumanLoopStatus: String, CustomStringConvertible, Codable {
        case inprogress = "InProgress"
        case failed = "Failed"
        case completed = "Completed"
        case stopped = "Stopped"
        case stopping = "Stopping"
        public var description: String { return self.rawValue }
    }

    public enum SortOrder: String, CustomStringConvertible, Codable {
        case ascending = "Ascending"
        case descending = "Descending"
        public var description: String { return self.rawValue }
    }

    //MARK: Shapes

    public struct DeleteHumanLoopRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "HumanLoopName", location: .uri(locationName: "HumanLoopName"), required: true, type: .string)
        ]

        /// The name of the human loop that you want to delete.
        public let humanLoopName: String

        public init(humanLoopName: String) {
            self.humanLoopName = humanLoopName
        }

        public func validate(name: String) throws {
            try validate(self.humanLoopName, name:"humanLoopName", parent: name, max: 63)
            try validate(self.humanLoopName, name:"humanLoopName", parent: name, min: 1)
            try validate(self.humanLoopName, name:"humanLoopName", parent: name, pattern: "^[a-z0-9](-*[a-z0-9])*$")
        }

        private enum CodingKeys: String, CodingKey {
            case humanLoopName = "HumanLoopName"
        }
    }

    public struct DeleteHumanLoopResponse: AWSShape {


        public init() {
        }

    }

    public struct DescribeHumanLoopRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "HumanLoopName", location: .uri(locationName: "HumanLoopName"), required: true, type: .string)
        ]

        /// The name of the human loop that you want information about.
        public let humanLoopName: String

        public init(humanLoopName: String) {
            self.humanLoopName = humanLoopName
        }

        public func validate(name: String) throws {
            try validate(self.humanLoopName, name:"humanLoopName", parent: name, max: 63)
            try validate(self.humanLoopName, name:"humanLoopName", parent: name, min: 1)
            try validate(self.humanLoopName, name:"humanLoopName", parent: name, pattern: "^[a-z0-9](-*[a-z0-9])*$")
        }

        private enum CodingKeys: String, CodingKey {
            case humanLoopName = "HumanLoopName"
        }
    }

    public struct DescribeHumanLoopResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "CreationTime", required: true, type: .timestamp), 
            AWSShapeMember(label: "FailureCode", required: false, type: .string), 
            AWSShapeMember(label: "FailureReason", required: false, type: .string), 
            AWSShapeMember(label: "FlowDefinitionArn", required: true, type: .string), 
            AWSShapeMember(label: "HumanLoopArn", required: true, type: .string), 
            AWSShapeMember(label: "HumanLoopName", required: true, type: .string), 
            AWSShapeMember(label: "HumanLoopOutput", required: false, type: .structure), 
            AWSShapeMember(label: "HumanLoopStatus", required: true, type: .enum)
        ]

        /// The creation time when Amazon Augmented AI created the human loop.
        public let creationTime: TimeStamp
        /// A failure code that identifies the type of failure.
        public let failureCode: String?
        /// The reason why a human loop failed. The failure reason is returned when the status of the human loop is Failed.
        public let failureReason: String?
        /// The Amazon Resource Name (ARN) of the flow definition.
        public let flowDefinitionArn: String
        /// The Amazon Resource Name (ARN) of the human loop.
        public let humanLoopArn: String
        /// The name of the human loop. The name must be lowercase, unique within the Region in your account, and can have up to 63 characters. Valid characters: a-z, 0-9, and - (hyphen).
        public let humanLoopName: String
        /// An object that contains information about the output of the human loop.
        public let humanLoopOutput: HumanLoopOutput?
        /// The status of the human loop. 
        public let humanLoopStatus: HumanLoopStatus

        public init(creationTime: TimeStamp, failureCode: String? = nil, failureReason: String? = nil, flowDefinitionArn: String, humanLoopArn: String, humanLoopName: String, humanLoopOutput: HumanLoopOutput? = nil, humanLoopStatus: HumanLoopStatus) {
            self.creationTime = creationTime
            self.failureCode = failureCode
            self.failureReason = failureReason
            self.flowDefinitionArn = flowDefinitionArn
            self.humanLoopArn = humanLoopArn
            self.humanLoopName = humanLoopName
            self.humanLoopOutput = humanLoopOutput
            self.humanLoopStatus = humanLoopStatus
        }

        private enum CodingKeys: String, CodingKey {
            case creationTime = "CreationTime"
            case failureCode = "FailureCode"
            case failureReason = "FailureReason"
            case flowDefinitionArn = "FlowDefinitionArn"
            case humanLoopArn = "HumanLoopArn"
            case humanLoopName = "HumanLoopName"
            case humanLoopOutput = "HumanLoopOutput"
            case humanLoopStatus = "HumanLoopStatus"
        }
    }

    public struct HumanLoopDataAttributes: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ContentClassifiers", required: true, type: .list)
        ]

        /// Declares that your content is free of personally identifiable information or adult content. Amazon SageMaker can restrict the Amazon Mechanical Turk workers who can view your task based on this information.
        public let contentClassifiers: [ContentClassifier]

        public init(contentClassifiers: [ContentClassifier]) {
            self.contentClassifiers = contentClassifiers
        }

        public func validate(name: String) throws {
            try validate(self.contentClassifiers, name:"contentClassifiers", parent: name, max: 256)
        }

        private enum CodingKeys: String, CodingKey {
            case contentClassifiers = "ContentClassifiers"
        }
    }

    public struct HumanLoopInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "InputContent", required: true, type: .string)
        ]

        /// Serialized input from the human loop. The input must be a string representation of a file in JSON format.
        public let inputContent: String

        public init(inputContent: String) {
            self.inputContent = inputContent
        }

        public func validate(name: String) throws {
            try validate(self.inputContent, name:"inputContent", parent: name, max: 3145728)
        }

        private enum CodingKeys: String, CodingKey {
            case inputContent = "InputContent"
        }
    }

    public struct HumanLoopOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "OutputS3Uri", required: true, type: .string)
        ]

        /// The location of the Amazon S3 object where Amazon Augmented AI stores your human loop output.
        public let outputS3Uri: String

        public init(outputS3Uri: String) {
            self.outputS3Uri = outputS3Uri
        }

        private enum CodingKeys: String, CodingKey {
            case outputS3Uri = "OutputS3Uri"
        }
    }

    public struct HumanLoopSummary: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "CreationTime", required: false, type: .timestamp), 
            AWSShapeMember(label: "FailureReason", required: false, type: .string), 
            AWSShapeMember(label: "FlowDefinitionArn", required: false, type: .string), 
            AWSShapeMember(label: "HumanLoopName", required: false, type: .string), 
            AWSShapeMember(label: "HumanLoopStatus", required: false, type: .enum)
        ]

        /// When Amazon Augmented AI created the human loop.
        public let creationTime: TimeStamp?
        /// The reason why the human loop failed. A failure reason is returned when the status of the human loop is Failed.
        public let failureReason: String?
        /// The Amazon Resource Name (ARN) of the flow definition used to configure the human loop.
        public let flowDefinitionArn: String?
        /// The name of the human loop.
        public let humanLoopName: String?
        /// The status of the human loop. 
        public let humanLoopStatus: HumanLoopStatus?

        public init(creationTime: TimeStamp? = nil, failureReason: String? = nil, flowDefinitionArn: String? = nil, humanLoopName: String? = nil, humanLoopStatus: HumanLoopStatus? = nil) {
            self.creationTime = creationTime
            self.failureReason = failureReason
            self.flowDefinitionArn = flowDefinitionArn
            self.humanLoopName = humanLoopName
            self.humanLoopStatus = humanLoopStatus
        }

        private enum CodingKeys: String, CodingKey {
            case creationTime = "CreationTime"
            case failureReason = "FailureReason"
            case flowDefinitionArn = "FlowDefinitionArn"
            case humanLoopName = "HumanLoopName"
            case humanLoopStatus = "HumanLoopStatus"
        }
    }

    public struct ListHumanLoopsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "CreationTimeAfter", location: .querystring(locationName: "CreationTimeAfter"), required: false, type: .timestamp), 
            AWSShapeMember(label: "CreationTimeBefore", location: .querystring(locationName: "CreationTimeBefore"), required: false, type: .timestamp), 
            AWSShapeMember(label: "FlowDefinitionArn", location: .querystring(locationName: "FlowDefinitionArn"), required: true, type: .string), 
            AWSShapeMember(label: "MaxResults", location: .querystring(locationName: "MaxResults"), required: false, type: .integer), 
            AWSShapeMember(label: "NextToken", location: .querystring(locationName: "NextToken"), required: false, type: .string), 
            AWSShapeMember(label: "SortOrder", location: .querystring(locationName: "SortOrder"), required: false, type: .enum)
        ]

        /// (Optional) The timestamp of the date when you want the human loops to begin in ISO 8601 format. For example, 2020-02-24.
        public let creationTimeAfter: TimeStamp?
        /// (Optional) The timestamp of the date before which you want the human loops to begin in ISO 8601 format. For example, 2020-02-24.
        public let creationTimeBefore: TimeStamp?
        /// The Amazon Resource Name (ARN) of a flow definition.
        public let flowDefinitionArn: String
        /// The total number of items to return. If the total number of available items is more than the value specified in MaxResults, then a NextToken is returned in the output. You can use this token to display the next page of results. 
        public let maxResults: Int?
        /// A token to display the next page of results.
        public let nextToken: String?
        /// Optional. The order for displaying results. Valid values: Ascending and Descending.
        public let sortOrder: SortOrder?

        public init(creationTimeAfter: TimeStamp? = nil, creationTimeBefore: TimeStamp? = nil, flowDefinitionArn: String, maxResults: Int? = nil, nextToken: String? = nil, sortOrder: SortOrder? = nil) {
            self.creationTimeAfter = creationTimeAfter
            self.creationTimeBefore = creationTimeBefore
            self.flowDefinitionArn = flowDefinitionArn
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.sortOrder = sortOrder
        }

        public func validate(name: String) throws {
            try validate(self.flowDefinitionArn, name:"flowDefinitionArn", parent: name, max: 1024)
            try validate(self.flowDefinitionArn, name:"flowDefinitionArn", parent: name, pattern: "arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:flow-definition/.*")
            try validate(self.maxResults, name:"maxResults", parent: name, max: 100)
            try validate(self.maxResults, name:"maxResults", parent: name, min: 1)
            try validate(self.nextToken, name:"nextToken", parent: name, max: 8192)
            try validate(self.nextToken, name:"nextToken", parent: name, pattern: ".*")
        }

        private enum CodingKeys: String, CodingKey {
            case creationTimeAfter = "CreationTimeAfter"
            case creationTimeBefore = "CreationTimeBefore"
            case flowDefinitionArn = "FlowDefinitionArn"
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
            case sortOrder = "SortOrder"
        }
    }

    public struct ListHumanLoopsResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "HumanLoopSummaries", required: true, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]

        /// An array of objects that contain information about the human loops.
        public let humanLoopSummaries: [HumanLoopSummary]
        /// A token to display the next page of results.
        public let nextToken: String?

        public init(humanLoopSummaries: [HumanLoopSummary], nextToken: String? = nil) {
            self.humanLoopSummaries = humanLoopSummaries
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case humanLoopSummaries = "HumanLoopSummaries"
            case nextToken = "NextToken"
        }
    }

    public struct StartHumanLoopRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DataAttributes", required: false, type: .structure), 
            AWSShapeMember(label: "FlowDefinitionArn", required: true, type: .string), 
            AWSShapeMember(label: "HumanLoopInput", required: true, type: .structure), 
            AWSShapeMember(label: "HumanLoopName", required: true, type: .string)
        ]

        /// Attributes of the specified data. Use DataAttributes to specify if your data is free of personally identifiable information and/or free of adult content.
        public let dataAttributes: HumanLoopDataAttributes?
        /// The Amazon Resource Name (ARN) of the flow definition associated with this human loop.
        public let flowDefinitionArn: String
        /// An object that contains information about the human loop.
        public let humanLoopInput: HumanLoopInput
        /// The name of the human loop.
        public let humanLoopName: String

        public init(dataAttributes: HumanLoopDataAttributes? = nil, flowDefinitionArn: String, humanLoopInput: HumanLoopInput, humanLoopName: String) {
            self.dataAttributes = dataAttributes
            self.flowDefinitionArn = flowDefinitionArn
            self.humanLoopInput = humanLoopInput
            self.humanLoopName = humanLoopName
        }

        public func validate(name: String) throws {
            try self.dataAttributes?.validate(name: "\(name).dataAttributes")
            try validate(self.flowDefinitionArn, name:"flowDefinitionArn", parent: name, max: 1024)
            try validate(self.flowDefinitionArn, name:"flowDefinitionArn", parent: name, pattern: "arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:flow-definition/.*")
            try self.humanLoopInput.validate(name: "\(name).humanLoopInput")
            try validate(self.humanLoopName, name:"humanLoopName", parent: name, max: 63)
            try validate(self.humanLoopName, name:"humanLoopName", parent: name, min: 1)
            try validate(self.humanLoopName, name:"humanLoopName", parent: name, pattern: "^[a-z0-9](-*[a-z0-9])*$")
        }

        private enum CodingKeys: String, CodingKey {
            case dataAttributes = "DataAttributes"
            case flowDefinitionArn = "FlowDefinitionArn"
            case humanLoopInput = "HumanLoopInput"
            case humanLoopName = "HumanLoopName"
        }
    }

    public struct StartHumanLoopResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "HumanLoopArn", required: false, type: .string)
        ]

        /// The Amazon Resource Name (ARN) of the human loop.
        public let humanLoopArn: String?

        public init(humanLoopArn: String? = nil) {
            self.humanLoopArn = humanLoopArn
        }

        private enum CodingKeys: String, CodingKey {
            case humanLoopArn = "HumanLoopArn"
        }
    }

    public struct StopHumanLoopRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "HumanLoopName", required: true, type: .string)
        ]

        /// The name of the human loop that you want to stop.
        public let humanLoopName: String

        public init(humanLoopName: String) {
            self.humanLoopName = humanLoopName
        }

        public func validate(name: String) throws {
            try validate(self.humanLoopName, name:"humanLoopName", parent: name, max: 63)
            try validate(self.humanLoopName, name:"humanLoopName", parent: name, min: 1)
            try validate(self.humanLoopName, name:"humanLoopName", parent: name, pattern: "^[a-z0-9](-*[a-z0-9])*$")
        }

        private enum CodingKeys: String, CodingKey {
            case humanLoopName = "HumanLoopName"
        }
    }

    public struct StopHumanLoopResponse: AWSShape {


        public init() {
        }

    }
}
