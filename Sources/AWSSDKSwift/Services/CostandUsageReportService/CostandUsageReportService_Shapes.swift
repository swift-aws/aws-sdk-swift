// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension CostandUsageReportService {
    //MARK: Enums

    public enum AWSRegion: String, CustomStringConvertible, Codable {
        case afSouth1 = "af-south-1"
        case apEast1 = "ap-east-1"
        case apSouth1 = "ap-south-1"
        case apSoutheast1 = "ap-southeast-1"
        case apSoutheast2 = "ap-southeast-2"
        case apNortheast1 = "ap-northeast-1"
        case apNortheast2 = "ap-northeast-2"
        case apNortheast3 = "ap-northeast-3"
        case caCentral1 = "ca-central-1"
        case euCentral1 = "eu-central-1"
        case euWest1 = "eu-west-1"
        case euWest2 = "eu-west-2"
        case euWest3 = "eu-west-3"
        case euNorth1 = "eu-north-1"
        case euSouth1 = "eu-south-1"
        case meSouth1 = "me-south-1"
        case saEast1 = "sa-east-1"
        case usEast1 = "us-east-1"
        case usEast2 = "us-east-2"
        case usWest1 = "us-west-1"
        case usWest2 = "us-west-2"
        case cnNorth1 = "cn-north-1"
        case cnNorthwest1 = "cn-northwest-1"
        public var description: String { return self.rawValue }
    }

    public enum AdditionalArtifact: String, CustomStringConvertible, Codable {
        case redshift = "REDSHIFT"
        case quicksight = "QUICKSIGHT"
        case athena = "ATHENA"
        public var description: String { return self.rawValue }
    }

    public enum CompressionFormat: String, CustomStringConvertible, Codable {
        case zip = "ZIP"
        case gzip = "GZIP"
        case parquet = "Parquet"
        public var description: String { return self.rawValue }
    }

    public enum ReportFormat: String, CustomStringConvertible, Codable {
        case textorcsv = "textORcsv"
        case parquet = "Parquet"
        public var description: String { return self.rawValue }
    }

    public enum ReportVersioning: String, CustomStringConvertible, Codable {
        case createNewReport = "CREATE_NEW_REPORT"
        case overwriteReport = "OVERWRITE_REPORT"
        public var description: String { return self.rawValue }
    }

    public enum SchemaElement: String, CustomStringConvertible, Codable {
        case resources = "RESOURCES"
        public var description: String { return self.rawValue }
    }

    public enum TimeUnit: String, CustomStringConvertible, Codable {
        case hourly = "HOURLY"
        case daily = "DAILY"
        case monthly = "MONTHLY"
        public var description: String { return self.rawValue }
    }

    //MARK: Shapes

    public struct DeleteReportDefinitionRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ReportName", required: false, type: .string)
        ]

        /// The name of the report that you want to delete. The name must be unique, is case sensitive, and can't include spaces.
        public let reportName: String?

        public init(reportName: String? = nil) {
            self.reportName = reportName
        }

        public func validate(name: String) throws {
            try validate(self.reportName, name:"reportName", parent: name, max: 256)
            try validate(self.reportName, name:"reportName", parent: name, pattern: "[0-9A-Za-z!\\-_.*\\'()]+")
        }

        private enum CodingKeys: String, CodingKey {
            case reportName = "ReportName"
        }
    }

    public struct DeleteReportDefinitionResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ResponseMessage", required: false, type: .string)
        ]

        public let responseMessage: String?

        public init(responseMessage: String? = nil) {
            self.responseMessage = responseMessage
        }

        private enum CodingKeys: String, CodingKey {
            case responseMessage = "ResponseMessage"
        }
    }

    public struct DescribeReportDefinitionsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]

        public let maxResults: Int?
        public let nextToken: String?

        public init(maxResults: Int? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try validate(self.maxResults, name:"maxResults", parent: name, max: 5)
            try validate(self.maxResults, name:"maxResults", parent: name, min: 5)
            try validate(self.nextToken, name:"nextToken", parent: name, max: 256)
            try validate(self.nextToken, name:"nextToken", parent: name, pattern: "[A-Za-z0-9_\\.\\-=]*")
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
        }
    }

    public struct DescribeReportDefinitionsResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "ReportDefinitions", required: false, type: .list)
        ]

        public let nextToken: String?
        /// A list of AWS Cost and Usage reports owned by the account.
        public let reportDefinitions: [ReportDefinition]?

        public init(nextToken: String? = nil, reportDefinitions: [ReportDefinition]? = nil) {
            self.nextToken = nextToken
            self.reportDefinitions = reportDefinitions
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case reportDefinitions = "ReportDefinitions"
        }
    }

    public struct ModifyReportDefinitionRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ReportDefinition", required: true, type: .structure), 
            AWSShapeMember(label: "ReportName", required: true, type: .string)
        ]

        public let reportDefinition: ReportDefinition
        public let reportName: String

        public init(reportDefinition: ReportDefinition, reportName: String) {
            self.reportDefinition = reportDefinition
            self.reportName = reportName
        }

        public func validate(name: String) throws {
            try self.reportDefinition.validate(name: "\(name).reportDefinition")
            try validate(self.reportName, name:"reportName", parent: name, max: 256)
            try validate(self.reportName, name:"reportName", parent: name, pattern: "[0-9A-Za-z!\\-_.*\\'()]+")
        }

        private enum CodingKeys: String, CodingKey {
            case reportDefinition = "ReportDefinition"
            case reportName = "ReportName"
        }
    }

    public struct ModifyReportDefinitionResponse: AWSShape {


        public init() {
        }

    }

    public struct PutReportDefinitionRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ReportDefinition", required: true, type: .structure)
        ]

        /// Represents the output of the PutReportDefinition operation. The content consists of the detailed metadata and data file information. 
        public let reportDefinition: ReportDefinition

        public init(reportDefinition: ReportDefinition) {
            self.reportDefinition = reportDefinition
        }

        public func validate(name: String) throws {
            try self.reportDefinition.validate(name: "\(name).reportDefinition")
        }

        private enum CodingKeys: String, CodingKey {
            case reportDefinition = "ReportDefinition"
        }
    }

    public struct PutReportDefinitionResponse: AWSShape {


        public init() {
        }

    }

    public struct ReportDefinition: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "AdditionalArtifacts", required: false, type: .list), 
            AWSShapeMember(label: "AdditionalSchemaElements", required: true, type: .list), 
            AWSShapeMember(label: "Compression", required: true, type: .enum), 
            AWSShapeMember(label: "Format", required: true, type: .enum), 
            AWSShapeMember(label: "RefreshClosedReports", required: false, type: .boolean), 
            AWSShapeMember(label: "ReportName", required: true, type: .string), 
            AWSShapeMember(label: "ReportVersioning", required: false, type: .enum), 
            AWSShapeMember(label: "S3Bucket", required: true, type: .string), 
            AWSShapeMember(label: "S3Prefix", required: true, type: .string), 
            AWSShapeMember(label: "S3Region", required: true, type: .enum), 
            AWSShapeMember(label: "TimeUnit", required: true, type: .enum)
        ]

        /// A list of manifests that you want Amazon Web Services to create for this report.
        public let additionalArtifacts: [AdditionalArtifact]?
        /// A list of strings that indicate additional content that Amazon Web Services includes in the report, such as individual resource IDs. 
        public let additionalSchemaElements: [SchemaElement]
        public let compression: CompressionFormat
        public let format: ReportFormat
        /// Whether you want Amazon Web Services to update your reports after they have been finalized if Amazon Web Services detects charges related to previous months. These charges can include refunds, credits, or support fees.
        public let refreshClosedReports: Bool?
        public let reportName: String
        /// Whether you want Amazon Web Services to overwrite the previous version of each report or to deliver the report in addition to the previous versions.
        public let reportVersioning: ReportVersioning?
        public let s3Bucket: String
        public let s3Prefix: String
        public let s3Region: AWSRegion
        public let timeUnit: TimeUnit

        public init(additionalArtifacts: [AdditionalArtifact]? = nil, additionalSchemaElements: [SchemaElement], compression: CompressionFormat, format: ReportFormat, refreshClosedReports: Bool? = nil, reportName: String, reportVersioning: ReportVersioning? = nil, s3Bucket: String, s3Prefix: String, s3Region: AWSRegion, timeUnit: TimeUnit) {
            self.additionalArtifacts = additionalArtifacts
            self.additionalSchemaElements = additionalSchemaElements
            self.compression = compression
            self.format = format
            self.refreshClosedReports = refreshClosedReports
            self.reportName = reportName
            self.reportVersioning = reportVersioning
            self.s3Bucket = s3Bucket
            self.s3Prefix = s3Prefix
            self.s3Region = s3Region
            self.timeUnit = timeUnit
        }

        public func validate(name: String) throws {
            try validate(self.reportName, name:"reportName", parent: name, max: 256)
            try validate(self.reportName, name:"reportName", parent: name, pattern: "[0-9A-Za-z!\\-_.*\\'()]+")
            try validate(self.s3Bucket, name:"s3Bucket", parent: name, max: 256)
            try validate(self.s3Bucket, name:"s3Bucket", parent: name, pattern: "[A-Za-z0-9_\\.\\-]+")
            try validate(self.s3Prefix, name:"s3Prefix", parent: name, max: 256)
            try validate(self.s3Prefix, name:"s3Prefix", parent: name, pattern: "[0-9A-Za-z!\\-_.*\\'()/]*")
        }

        private enum CodingKeys: String, CodingKey {
            case additionalArtifacts = "AdditionalArtifacts"
            case additionalSchemaElements = "AdditionalSchemaElements"
            case compression = "Compression"
            case format = "Format"
            case refreshClosedReports = "RefreshClosedReports"
            case reportName = "ReportName"
            case reportVersioning = "ReportVersioning"
            case s3Bucket = "S3Bucket"
            case s3Prefix = "S3Prefix"
            case s3Region = "S3Region"
            case timeUnit = "TimeUnit"
        }
    }
}
