// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension DynamoDBStreams {

    public struct StreamRecord: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NewImage", required: false, type: .map), 
            AWSShapeMember(label: "SizeBytes", required: false, type: .long), 
            AWSShapeMember(label: "SequenceNumber", required: false, type: .string), 
            AWSShapeMember(label: "ApproximateCreationDateTime", required: false, type: .timestamp), 
            AWSShapeMember(label: "OldImage", required: false, type: .map), 
            AWSShapeMember(label: "Keys", required: false, type: .map), 
            AWSShapeMember(label: "StreamViewType", required: false, type: .enum)
        ]
        /// The item in the DynamoDB table as it appeared after it was modified.
        public let newImage: [String: AttributeValue]?
        /// The size of the stream record, in bytes.
        public let sizeBytes: Int64?
        /// The sequence number of the stream record.
        public let sequenceNumber: String?
        /// The approximate date and time when the stream record was created, in UNIX epoch time format.
        public let approximateCreationDateTime: TimeStamp?
        /// The item in the DynamoDB table as it appeared before it was modified.
        public let oldImage: [String: AttributeValue]?
        /// The primary key attribute(s) for the DynamoDB item that was modified.
        public let keys: [String: AttributeValue]?
        /// The type of data from the modified DynamoDB item that was captured in this stream record:    KEYS_ONLY - only the key attributes of the modified item.    NEW_IMAGE - the entire item, as it appeared after it was modified.    OLD_IMAGE - the entire item, as it appeared before it was modified.    NEW_AND_OLD_IMAGES - both the new and the old item images of the item.  
        public let streamViewType: StreamViewType?

        public init(approximateCreationDateTime: TimeStamp? = nil, keys: [String: AttributeValue]? = nil, newImage: [String: AttributeValue]? = nil, oldImage: [String: AttributeValue]? = nil, sequenceNumber: String? = nil, sizeBytes: Int64? = nil, streamViewType: StreamViewType? = nil) {
            self.newImage = newImage
            self.sizeBytes = sizeBytes
            self.sequenceNumber = sequenceNumber
            self.approximateCreationDateTime = approximateCreationDateTime
            self.oldImage = oldImage
            self.keys = keys
            self.streamViewType = streamViewType
        }

        private enum CodingKeys: String, CodingKey {
            case newImage = "NewImage"
            case sizeBytes = "SizeBytes"
            case sequenceNumber = "SequenceNumber"
            case approximateCreationDateTime = "ApproximateCreationDateTime"
            case oldImage = "OldImage"
            case keys = "Keys"
            case streamViewType = "StreamViewType"
        }
    }

    public struct ListStreamsInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ExclusiveStartStreamArn", required: false, type: .string), 
            AWSShapeMember(label: "TableName", required: false, type: .string), 
            AWSShapeMember(label: "Limit", required: false, type: .integer)
        ]
        /// The ARN (Amazon Resource Name) of the first item that this operation will evaluate. Use the value that was returned for LastEvaluatedStreamArn in the previous operation. 
        public let exclusiveStartStreamArn: String?
        /// If this parameter is provided, then only the streams associated with this table name are returned.
        public let tableName: String?
        /// The maximum number of streams to return. The upper limit is 100.
        public let limit: Int32?

        public init(exclusiveStartStreamArn: String? = nil, limit: Int32? = nil, tableName: String? = nil) {
            self.exclusiveStartStreamArn = exclusiveStartStreamArn
            self.tableName = tableName
            self.limit = limit
        }

        private enum CodingKeys: String, CodingKey {
            case exclusiveStartStreamArn = "ExclusiveStartStreamArn"
            case tableName = "TableName"
            case limit = "Limit"
        }
    }

    public struct ListStreamsOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Streams", required: false, type: .list), 
            AWSShapeMember(label: "LastEvaluatedStreamArn", required: false, type: .string)
        ]
        /// A list of stream descriptors associated with the current account and endpoint.
        public let streams: [Stream]?
        /// The stream ARN of the item where the operation stopped, inclusive of the previous result set. Use this value to start a new operation, excluding this value in the new request. If LastEvaluatedStreamArn is empty, then the "last page" of results has been processed and there is no more data to be retrieved. If LastEvaluatedStreamArn is not empty, it does not necessarily mean that there is more data in the result set. The only way to know when you have reached the end of the result set is when LastEvaluatedStreamArn is empty.
        public let lastEvaluatedStreamArn: String?

        public init(lastEvaluatedStreamArn: String? = nil, streams: [Stream]? = nil) {
            self.streams = streams
            self.lastEvaluatedStreamArn = lastEvaluatedStreamArn
        }

        private enum CodingKeys: String, CodingKey {
            case streams = "Streams"
            case lastEvaluatedStreamArn = "LastEvaluatedStreamArn"
        }
    }

    public enum KeyType: String, CustomStringConvertible, Codable {
        case hash = "HASH"
        case range = "RANGE"
        public var description: String { return self.rawValue }
    }

    public struct GetShardIteratorInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ShardIteratorType", required: true, type: .enum), 
            AWSShapeMember(label: "SequenceNumber", required: false, type: .string), 
            AWSShapeMember(label: "StreamArn", required: true, type: .string), 
            AWSShapeMember(label: "ShardId", required: true, type: .string)
        ]
        /// Determines how the shard iterator is used to start reading stream records from the shard:    AT_SEQUENCE_NUMBER - Start reading exactly from the position denoted by a specific sequence number.    AFTER_SEQUENCE_NUMBER - Start reading right after the position denoted by a specific sequence number.    TRIM_HORIZON - Start reading at the last (untrimmed) stream record, which is the oldest record in the shard. In DynamoDB Streams, there is a 24 hour limit on data retention. Stream records whose age exceeds this limit are subject to removal (trimming) from the stream.    LATEST - Start reading just after the most recent stream record in the shard, so that you always read the most recent data in the shard.  
        public let shardIteratorType: ShardIteratorType
        /// The sequence number of a stream record in the shard from which to start reading.
        public let sequenceNumber: String?
        /// The Amazon Resource Name (ARN) for the stream.
        public let streamArn: String
        /// The identifier of the shard. The iterator will be returned for this shard ID.
        public let shardId: String

        public init(sequenceNumber: String? = nil, shardId: String, shardIteratorType: ShardIteratorType, streamArn: String) {
            self.shardIteratorType = shardIteratorType
            self.sequenceNumber = sequenceNumber
            self.streamArn = streamArn
            self.shardId = shardId
        }

        private enum CodingKeys: String, CodingKey {
            case shardIteratorType = "ShardIteratorType"
            case sequenceNumber = "SequenceNumber"
            case streamArn = "StreamArn"
            case shardId = "ShardId"
        }
    }

    public struct GetRecordsInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ShardIterator", required: true, type: .string), 
            AWSShapeMember(label: "Limit", required: false, type: .integer)
        ]
        /// A shard iterator that was retrieved from a previous GetShardIterator operation. This iterator can be used to access the stream records in this shard.
        public let shardIterator: String
        /// The maximum number of records to return from the shard. The upper limit is 1000.
        public let limit: Int32?

        public init(limit: Int32? = nil, shardIterator: String) {
            self.shardIterator = shardIterator
            self.limit = limit
        }

        private enum CodingKeys: String, CodingKey {
            case shardIterator = "ShardIterator"
            case limit = "Limit"
        }
    }

    public struct DescribeStreamInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Limit", required: false, type: .integer), 
            AWSShapeMember(label: "StreamArn", required: true, type: .string), 
            AWSShapeMember(label: "ExclusiveStartShardId", required: false, type: .string)
        ]
        /// The maximum number of shard objects to return. The upper limit is 100.
        public let limit: Int32?
        /// The Amazon Resource Name (ARN) for the stream.
        public let streamArn: String
        /// The shard ID of the first item that this operation will evaluate. Use the value that was returned for LastEvaluatedShardId in the previous operation. 
        public let exclusiveStartShardId: String?

        public init(exclusiveStartShardId: String? = nil, limit: Int32? = nil, streamArn: String) {
            self.limit = limit
            self.streamArn = streamArn
            self.exclusiveStartShardId = exclusiveStartShardId
        }

        private enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case streamArn = "StreamArn"
            case exclusiveStartShardId = "ExclusiveStartShardId"
        }
    }

    public enum StreamViewType: String, CustomStringConvertible, Codable {
        case newImage = "NEW_IMAGE"
        case oldImage = "OLD_IMAGE"
        case newAndOldImages = "NEW_AND_OLD_IMAGES"
        case keysOnly = "KEYS_ONLY"
        public var description: String { return self.rawValue }
    }

    public struct GetRecordsOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextShardIterator", required: false, type: .string), 
            AWSShapeMember(label: "Records", required: false, type: .list)
        ]
        /// The next position in the shard from which to start sequentially reading stream records. If set to null, the shard has been closed and the requested iterator will not return any more data.
        public let nextShardIterator: String?
        /// The stream records from the shard, which were retrieved using the shard iterator.
        public let records: [Record]?

        public init(nextShardIterator: String? = nil, records: [Record]? = nil) {
            self.nextShardIterator = nextShardIterator
            self.records = records
        }

        private enum CodingKeys: String, CodingKey {
            case nextShardIterator = "NextShardIterator"
            case records = "Records"
        }
    }

    public struct Record: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "eventVersion", required: false, type: .string), 
            AWSShapeMember(label: "dynamodb", required: false, type: .structure), 
            AWSShapeMember(label: "userIdentity", required: false, type: .structure), 
            AWSShapeMember(label: "eventSource", required: false, type: .string), 
            AWSShapeMember(label: "awsRegion", required: false, type: .string), 
            AWSShapeMember(label: "eventName", required: false, type: .enum), 
            AWSShapeMember(label: "eventID", required: false, type: .string)
        ]
        /// The version number of the stream record format. This number is updated whenever the structure of Record is modified. Client applications must not assume that eventVersion will remain at a particular value, as this number is subject to change at any time. In general, eventVersion will only increase as the low-level DynamoDB Streams API evolves.
        public let eventVersion: String?
        /// The main body of the stream record, containing all of the DynamoDB-specific fields.
        public let dynamodb: StreamRecord?
        /// Items that are deleted by the Time to Live process after expiration have the following fields:    Records[].userIdentity.type "Service"   Records[].userIdentity.principalId "dynamodb.amazonaws.com"  
        public let userIdentity: Identity?
        /// The AWS service from which the stream record originated. For DynamoDB Streams, this is aws:dynamodb.
        public let eventSource: String?
        /// The region in which the GetRecords request was received.
        public let awsRegion: String?
        /// The type of data modification that was performed on the DynamoDB table:    INSERT - a new item was added to the table.    MODIFY - one or more of an existing item's attributes were modified.    REMOVE - the item was deleted from the table  
        public let eventName: OperationType?
        /// A globally unique identifier for the event that was recorded in this stream record.
        public let eventID: String?

        public init(awsRegion: String? = nil, dynamodb: StreamRecord? = nil, eventID: String? = nil, eventName: OperationType? = nil, eventSource: String? = nil, eventVersion: String? = nil, userIdentity: Identity? = nil) {
            self.eventVersion = eventVersion
            self.dynamodb = dynamodb
            self.userIdentity = userIdentity
            self.eventSource = eventSource
            self.awsRegion = awsRegion
            self.eventName = eventName
            self.eventID = eventID
        }

        private enum CodingKeys: String, CodingKey {
            case eventVersion = "eventVersion"
            case dynamodb = "dynamodb"
            case userIdentity = "userIdentity"
            case eventSource = "eventSource"
            case awsRegion = "awsRegion"
            case eventName = "eventName"
            case eventID = "eventID"
        }
    }

    public struct Shard: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ShardId", required: false, type: .string), 
            AWSShapeMember(label: "ParentShardId", required: false, type: .string), 
            AWSShapeMember(label: "SequenceNumberRange", required: false, type: .structure)
        ]
        /// The system-generated identifier for this shard.
        public let shardId: String?
        /// The shard ID of the current shard's parent.
        public let parentShardId: String?
        /// The range of possible sequence numbers for the shard.
        public let sequenceNumberRange: SequenceNumberRange?

        public init(parentShardId: String? = nil, sequenceNumberRange: SequenceNumberRange? = nil, shardId: String? = nil) {
            self.shardId = shardId
            self.parentShardId = parentShardId
            self.sequenceNumberRange = sequenceNumberRange
        }

        private enum CodingKeys: String, CodingKey {
            case shardId = "ShardId"
            case parentShardId = "ParentShardId"
            case sequenceNumberRange = "SequenceNumberRange"
        }
    }

    public enum OperationType: String, CustomStringConvertible, Codable {
        case insert = "INSERT"
        case modify = "MODIFY"
        case remove = "REMOVE"
        public var description: String { return self.rawValue }
    }

    public struct GetShardIteratorOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ShardIterator", required: false, type: .string)
        ]
        /// The position in the shard from which to start reading stream records sequentially. A shard iterator specifies this position using the sequence number of a stream record in a shard.
        public let shardIterator: String?

        public init(shardIterator: String? = nil) {
            self.shardIterator = shardIterator
        }

        private enum CodingKeys: String, CodingKey {
            case shardIterator = "ShardIterator"
        }
    }

    public struct KeySchemaElement: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "KeyType", required: true, type: .enum), 
            AWSShapeMember(label: "AttributeName", required: true, type: .string)
        ]
        /// The attribute data, consisting of the data type and the attribute value itself.
        public let keyType: KeyType
        /// The name of a key attribute.
        public let attributeName: String

        public init(attributeName: String, keyType: KeyType) {
            self.keyType = keyType
            self.attributeName = attributeName
        }

        private enum CodingKeys: String, CodingKey {
            case keyType = "KeyType"
            case attributeName = "AttributeName"
        }
    }

    public class AttributeValue: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "S", required: false, type: .string), 
            AWSShapeMember(label: "BOOL", required: false, type: .boolean), 
            AWSShapeMember(label: "BS", required: false, type: .list), 
            AWSShapeMember(label: "B", required: false, type: .blob), 
            AWSShapeMember(label: "NS", required: false, type: .list), 
            AWSShapeMember(label: "NULL", required: false, type: .boolean), 
            AWSShapeMember(label: "N", required: false, type: .string), 
            AWSShapeMember(label: "SS", required: false, type: .list), 
            AWSShapeMember(label: "M", required: false, type: .map), 
            AWSShapeMember(label: "L", required: false, type: .list)
        ]
        /// A String data type.
        public let s: String?
        /// A Boolean data type.
        public let bool: Bool?
        /// A Binary Set data type.
        public let bs: [Data]?
        /// A Binary data type.
        public let b: Data?
        /// A Number Set data type.
        public let ns: [String]?
        /// A Null data type.
        public let null: Bool?
        /// A Number data type.
        public let n: String?
        /// A String Set data type.
        public let ss: [String]?
        /// A Map data type.
        public let m: [String: AttributeValue]?
        /// A List data type.
        public let l: [AttributeValue]?

        public init(b: Data? = nil, bool: Bool? = nil, bs: [Data]? = nil, l: [AttributeValue]? = nil, m: [String: AttributeValue]? = nil, n: String? = nil, ns: [String]? = nil, null: Bool? = nil, s: String? = nil, ss: [String]? = nil) {
            self.s = s
            self.bool = bool
            self.bs = bs
            self.b = b
            self.ns = ns
            self.null = null
            self.n = n
            self.ss = ss
            self.m = m
            self.l = l
        }

        private enum CodingKeys: String, CodingKey {
            case s = "S"
            case bool = "BOOL"
            case bs = "BS"
            case b = "B"
            case ns = "NS"
            case null = "NULL"
            case n = "N"
            case ss = "SS"
            case m = "M"
            case l = "L"
        }
    }

    public struct DescribeStreamOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "StreamDescription", required: false, type: .structure)
        ]
        /// A complete description of the stream, including its creation date and time, the DynamoDB table associated with the stream, the shard IDs within the stream, and the beginning and ending sequence numbers of stream records within the shards.
        public let streamDescription: StreamDescription?

        public init(streamDescription: StreamDescription? = nil) {
            self.streamDescription = streamDescription
        }

        private enum CodingKeys: String, CodingKey {
            case streamDescription = "StreamDescription"
        }
    }

    public struct SequenceNumberRange: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "StartingSequenceNumber", required: false, type: .string), 
            AWSShapeMember(label: "EndingSequenceNumber", required: false, type: .string)
        ]
        /// The first sequence number.
        public let startingSequenceNumber: String?
        /// The last sequence number.
        public let endingSequenceNumber: String?

        public init(endingSequenceNumber: String? = nil, startingSequenceNumber: String? = nil) {
            self.startingSequenceNumber = startingSequenceNumber
            self.endingSequenceNumber = endingSequenceNumber
        }

        private enum CodingKeys: String, CodingKey {
            case startingSequenceNumber = "StartingSequenceNumber"
            case endingSequenceNumber = "EndingSequenceNumber"
        }
    }

    public enum StreamStatus: String, CustomStringConvertible, Codable {
        case enabling = "ENABLING"
        case enabled = "ENABLED"
        case disabling = "DISABLING"
        case disabled = "DISABLED"
        public var description: String { return self.rawValue }
    }

    public enum ShardIteratorType: String, CustomStringConvertible, Codable {
        case trimHorizon = "TRIM_HORIZON"
        case latest = "LATEST"
        case atSequenceNumber = "AT_SEQUENCE_NUMBER"
        case afterSequenceNumber = "AFTER_SEQUENCE_NUMBER"
        public var description: String { return self.rawValue }
    }

    public struct Identity: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Type", required: false, type: .string), 
            AWSShapeMember(label: "PrincipalId", required: false, type: .string)
        ]
        /// The type of the identity. For Time To Live, the type is "Service".
        public let `type`: String?
        /// A unique identifier for the entity that made the call. For Time To Live, the principalId is "dynamodb.amazonaws.com".
        public let principalId: String?

        public init(principalId: String? = nil, type: String? = nil) {
            self.`type` = `type`
            self.principalId = principalId
        }

        private enum CodingKeys: String, CodingKey {
            case `type` = "Type"
            case principalId = "PrincipalId"
        }
    }

    public struct Stream: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "TableName", required: false, type: .string), 
            AWSShapeMember(label: "StreamLabel", required: false, type: .string), 
            AWSShapeMember(label: "StreamArn", required: false, type: .string)
        ]
        /// The DynamoDB table with which the stream is associated.
        public let tableName: String?
        /// A timestamp, in ISO 8601 format, for this stream. Note that LatestStreamLabel is not a unique identifier for the stream, because it is possible that a stream from another table might have the same timestamp. However, the combination of the following three elements is guaranteed to be unique:   the AWS customer ID.   the table name   the StreamLabel   
        public let streamLabel: String?
        /// The Amazon Resource Name (ARN) for the stream.
        public let streamArn: String?

        public init(streamArn: String? = nil, streamLabel: String? = nil, tableName: String? = nil) {
            self.tableName = tableName
            self.streamLabel = streamLabel
            self.streamArn = streamArn
        }

        private enum CodingKeys: String, CodingKey {
            case tableName = "TableName"
            case streamLabel = "StreamLabel"
            case streamArn = "StreamArn"
        }
    }

    public struct StreamDescription: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Shards", required: false, type: .list), 
            AWSShapeMember(label: "StreamStatus", required: false, type: .enum), 
            AWSShapeMember(label: "CreationRequestDateTime", required: false, type: .timestamp), 
            AWSShapeMember(label: "KeySchema", required: false, type: .list), 
            AWSShapeMember(label: "StreamViewType", required: false, type: .enum), 
            AWSShapeMember(label: "StreamLabel", required: false, type: .string), 
            AWSShapeMember(label: "TableName", required: false, type: .string), 
            AWSShapeMember(label: "StreamArn", required: false, type: .string), 
            AWSShapeMember(label: "LastEvaluatedShardId", required: false, type: .string)
        ]
        /// The shards that comprise the stream.
        public let shards: [Shard]?
        /// Indicates the current status of the stream:    ENABLING - Streams is currently being enabled on the DynamoDB table.    ENABLED - the stream is enabled.    DISABLING - Streams is currently being disabled on the DynamoDB table.    DISABLED - the stream is disabled.  
        public let streamStatus: StreamStatus?
        /// The date and time when the request to create this stream was issued.
        public let creationRequestDateTime: TimeStamp?
        /// The key attribute(s) of the stream's DynamoDB table.
        public let keySchema: [KeySchemaElement]?
        /// Indicates the format of the records within this stream:    KEYS_ONLY - only the key attributes of items that were modified in the DynamoDB table.    NEW_IMAGE - entire items from the table, as they appeared after they were modified.    OLD_IMAGE - entire items from the table, as they appeared before they were modified.    NEW_AND_OLD_IMAGES - both the new and the old images of the items from the table.  
        public let streamViewType: StreamViewType?
        /// A timestamp, in ISO 8601 format, for this stream. Note that LatestStreamLabel is not a unique identifier for the stream, because it is possible that a stream from another table might have the same timestamp. However, the combination of the following three elements is guaranteed to be unique:   the AWS customer ID.   the table name   the StreamLabel   
        public let streamLabel: String?
        /// The DynamoDB table with which the stream is associated.
        public let tableName: String?
        /// The Amazon Resource Name (ARN) for the stream.
        public let streamArn: String?
        /// The shard ID of the item where the operation stopped, inclusive of the previous result set. Use this value to start a new operation, excluding this value in the new request. If LastEvaluatedShardId is empty, then the "last page" of results has been processed and there is currently no more data to be retrieved. If LastEvaluatedShardId is not empty, it does not necessarily mean that there is more data in the result set. The only way to know when you have reached the end of the result set is when LastEvaluatedShardId is empty.
        public let lastEvaluatedShardId: String?

        public init(creationRequestDateTime: TimeStamp? = nil, keySchema: [KeySchemaElement]? = nil, lastEvaluatedShardId: String? = nil, shards: [Shard]? = nil, streamArn: String? = nil, streamLabel: String? = nil, streamStatus: StreamStatus? = nil, streamViewType: StreamViewType? = nil, tableName: String? = nil) {
            self.shards = shards
            self.streamStatus = streamStatus
            self.creationRequestDateTime = creationRequestDateTime
            self.keySchema = keySchema
            self.streamViewType = streamViewType
            self.streamLabel = streamLabel
            self.tableName = tableName
            self.streamArn = streamArn
            self.lastEvaluatedShardId = lastEvaluatedShardId
        }

        private enum CodingKeys: String, CodingKey {
            case shards = "Shards"
            case streamStatus = "StreamStatus"
            case creationRequestDateTime = "CreationRequestDateTime"
            case keySchema = "KeySchema"
            case streamViewType = "StreamViewType"
            case streamLabel = "StreamLabel"
            case tableName = "TableName"
            case streamArn = "StreamArn"
            case lastEvaluatedShardId = "LastEvaluatedShardId"
        }
    }

}