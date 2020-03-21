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

import Foundation
import AWSSDKSwiftCore

extension MediaStoreData {
    //MARK: Enums

    public enum ItemType: String, CustomStringConvertible, Codable {
        case object = "OBJECT"
        case folder = "FOLDER"
        public var description: String { return self.rawValue }
    }

    public enum StorageClass: String, CustomStringConvertible, Codable {
        case temporal = "TEMPORAL"
        public var description: String { return self.rawValue }
    }

    public enum UploadAvailability: String, CustomStringConvertible, Codable {
        case standard = "STANDARD"
        case streaming = "STREAMING"
        public var description: String { return self.rawValue }
    }

    //MARK: Shapes

    public struct DeleteObjectRequest: AWSShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "path", location: .uri(locationName: "Path"))
        ]

        /// The path (including the file name) where the object is stored in the container. Format: &lt;folder name&gt;/&lt;folder name&gt;/&lt;file name&gt;
        public let path: String

        public init(path: String) {
            self.path = path
        }

        public func validate(name: String) throws {
            try validate(self.path, name:"path", parent: name, max: 900)
            try validate(self.path, name:"path", parent: name, min: 1)
            try validate(self.path, name:"path", parent: name, pattern: "(?:[A-Za-z0-9_\\.\\-\\~]+/){0,10}[A-Za-z0-9_\\.\\-\\~]+")
        }

        private enum CodingKeys: String, CodingKey {
            case path = "Path"
        }
    }

    public struct DeleteObjectResponse: AWSShape {


        public init() {
        }

    }

    public struct DescribeObjectRequest: AWSShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "path", location: .uri(locationName: "Path"))
        ]

        /// The path (including the file name) where the object is stored in the container. Format: &lt;folder name&gt;/&lt;folder name&gt;/&lt;file name&gt;
        public let path: String

        public init(path: String) {
            self.path = path
        }

        public func validate(name: String) throws {
            try validate(self.path, name:"path", parent: name, max: 900)
            try validate(self.path, name:"path", parent: name, min: 1)
            try validate(self.path, name:"path", parent: name, pattern: "(?:[A-Za-z0-9_\\.\\-\\~]+/){0,10}[A-Za-z0-9_\\.\\-\\~]+")
        }

        private enum CodingKeys: String, CodingKey {
            case path = "Path"
        }
    }

    public struct DescribeObjectResponse: AWSShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "cacheControl", location: .header(locationName: "Cache-Control")), 
            AWSMemberEncoding(label: "contentLength", location: .header(locationName: "Content-Length")), 
            AWSMemberEncoding(label: "contentType", location: .header(locationName: "Content-Type")), 
            AWSMemberEncoding(label: "eTag", location: .header(locationName: "ETag")), 
            AWSMemberEncoding(label: "lastModified", location: .header(locationName: "Last-Modified"))
        ]

        /// An optional CacheControl header that allows the caller to control the object's cache behavior. Headers can be passed in as specified in the HTTP at https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9. Headers with a custom user-defined value are also accepted.
        public let cacheControl: String?
        /// The length of the object in bytes.
        public let contentLength: Int64?
        /// The content type of the object.
        public let contentType: String?
        /// The ETag that represents a unique instance of the object.
        public let eTag: String?
        /// The date and time that the object was last modified.
        public let lastModified: TimeStamp?

        public init(cacheControl: String? = nil, contentLength: Int64? = nil, contentType: String? = nil, eTag: String? = nil, lastModified: TimeStamp? = nil) {
            self.cacheControl = cacheControl
            self.contentLength = contentLength
            self.contentType = contentType
            self.eTag = eTag
            self.lastModified = lastModified
        }

        private enum CodingKeys: String, CodingKey {
            case cacheControl = "Cache-Control"
            case contentLength = "Content-Length"
            case contentType = "Content-Type"
            case eTag = "ETag"
            case lastModified = "Last-Modified"
        }
    }

    public struct GetObjectRequest: AWSShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "path", location: .uri(locationName: "Path")), 
            AWSMemberEncoding(label: "range", location: .header(locationName: "Range"))
        ]

        /// The path (including the file name) where the object is stored in the container. Format: &lt;folder name&gt;/&lt;folder name&gt;/&lt;file name&gt; For example, to upload the file mlaw.avi to the folder path premium\canada in the container movies, enter the path premium/canada/mlaw.avi. Do not include the container name in this path. If the path includes any folders that don't exist yet, the service creates them. For example, suppose you have an existing premium/usa subfolder. If you specify premium/canada, the service creates a canada subfolder in the premium folder. You then have two subfolders, usa and canada, in the premium folder.  There is no correlation between the path to the source and the path (folders) in the container in AWS Elemental MediaStore. For more information about folders and how they exist in a container, see the AWS Elemental MediaStore User Guide. The file name is the name that is assigned to the file that you upload. The file can have the same name inside and outside of AWS Elemental MediaStore, or it can have the same name. The file name can include or omit an extension. 
        public let path: String
        /// The range bytes of an object to retrieve. For more information about the Range header, see http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35. AWS Elemental MediaStore ignores this header for partially uploaded objects that have streaming upload availability.
        public let range: String?

        public init(path: String, range: String? = nil) {
            self.path = path
            self.range = range
        }

        public func validate(name: String) throws {
            try validate(self.path, name:"path", parent: name, max: 900)
            try validate(self.path, name:"path", parent: name, min: 1)
            try validate(self.path, name:"path", parent: name, pattern: "(?:[A-Za-z0-9_\\.\\-\\~]+/){0,10}[A-Za-z0-9_\\.\\-\\~]+")
            try validate(self.range, name:"range", parent: name, pattern: "^bytes=(?:\\d+\\-\\d*|\\d*\\-\\d+)$")
        }

        private enum CodingKeys: String, CodingKey {
            case path = "Path"
            case range = "Range"
        }
    }

    public struct GetObjectResponse: AWSShape {
        /// The key for the payload
        public static let payloadPath: String? = "body"
        public static var _encoding = [
            AWSMemberEncoding(label: "body", location: .body(locationName: "Body"), encoding: .blob), 
            AWSMemberEncoding(label: "cacheControl", location: .header(locationName: "Cache-Control")), 
            AWSMemberEncoding(label: "contentLength", location: .header(locationName: "Content-Length")), 
            AWSMemberEncoding(label: "contentRange", location: .header(locationName: "Content-Range")), 
            AWSMemberEncoding(label: "contentType", location: .header(locationName: "Content-Type")), 
            AWSMemberEncoding(label: "eTag", location: .header(locationName: "ETag")), 
            AWSMemberEncoding(label: "lastModified", location: .header(locationName: "Last-Modified"))
        ]

        /// The bytes of the object. 
        public let body: Data?
        /// An optional CacheControl header that allows the caller to control the object's cache behavior. Headers can be passed in as specified in the HTTP spec at https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9. Headers with a custom user-defined value are also accepted.
        public let cacheControl: String?
        /// The length of the object in bytes.
        public let contentLength: Int64?
        /// The range of bytes to retrieve.
        public let contentRange: String?
        /// The content type of the object.
        public let contentType: String?
        /// The ETag that represents a unique instance of the object.
        public let eTag: String?
        /// The date and time that the object was last modified.
        public let lastModified: TimeStamp?
        /// The HTML status code of the request. Status codes ranging from 200 to 299 indicate success. All other status codes indicate the type of error that occurred.
        public let statusCode: Int

        public init(body: Data? = nil, cacheControl: String? = nil, contentLength: Int64? = nil, contentRange: String? = nil, contentType: String? = nil, eTag: String? = nil, lastModified: TimeStamp? = nil, statusCode: Int) {
            self.body = body
            self.cacheControl = cacheControl
            self.contentLength = contentLength
            self.contentRange = contentRange
            self.contentType = contentType
            self.eTag = eTag
            self.lastModified = lastModified
            self.statusCode = statusCode
        }

        private enum CodingKeys: String, CodingKey {
            case body = "Body"
            case cacheControl = "Cache-Control"
            case contentLength = "Content-Length"
            case contentRange = "Content-Range"
            case contentType = "Content-Type"
            case eTag = "ETag"
            case lastModified = "Last-Modified"
            case statusCode = "StatusCode"
        }
    }

    public struct Item: AWSShape {

        /// The length of the item in bytes.
        public let contentLength: Int64?
        /// The content type of the item.
        public let contentType: String?
        /// The ETag that represents a unique instance of the item.
        public let eTag: String?
        /// The date and time that the item was last modified.
        public let lastModified: TimeStamp?
        /// The name of the item.
        public let name: String?
        /// The item type (folder or object).
        public let `type`: ItemType?

        public init(contentLength: Int64? = nil, contentType: String? = nil, eTag: String? = nil, lastModified: TimeStamp? = nil, name: String? = nil, type: ItemType? = nil) {
            self.contentLength = contentLength
            self.contentType = contentType
            self.eTag = eTag
            self.lastModified = lastModified
            self.name = name
            self.`type` = `type`
        }

        private enum CodingKeys: String, CodingKey {
            case contentLength = "ContentLength"
            case contentType = "ContentType"
            case eTag = "ETag"
            case lastModified = "LastModified"
            case name = "Name"
            case `type` = "Type"
        }
    }

    public struct ListItemsRequest: AWSShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "maxResults", location: .querystring(locationName: "MaxResults")), 
            AWSMemberEncoding(label: "nextToken", location: .querystring(locationName: "NextToken")), 
            AWSMemberEncoding(label: "path", location: .querystring(locationName: "Path"))
        ]

        /// The maximum number of results to return per API request. For example, you submit a ListItems request with MaxResults set at 500. Although 2,000 items match your request, the service returns no more than the first 500 items. (The service also returns a NextToken value that you can use to fetch the next batch of results.) The service might return fewer results than the MaxResults value. If MaxResults is not included in the request, the service defaults to pagination with a maximum of 1,000 results per page.
        public let maxResults: Int?
        /// The token that identifies which batch of results that you want to see. For example, you submit a ListItems request with MaxResults set at 500. The service returns the first batch of results (up to 500) and a NextToken value. To see the next batch of results, you can submit the ListItems request a second time and specify the NextToken value. Tokens expire after 15 minutes.
        public let nextToken: String?
        /// The path in the container from which to retrieve items. Format: &lt;folder name&gt;/&lt;folder name&gt;/&lt;file name&gt;
        public let path: String?

        public init(maxResults: Int? = nil, nextToken: String? = nil, path: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.path = path
        }

        public func validate(name: String) throws {
            try validate(self.maxResults, name:"maxResults", parent: name, max: 1000)
            try validate(self.maxResults, name:"maxResults", parent: name, min: 1)
            try validate(self.path, name:"path", parent: name, max: 900)
            try validate(self.path, name:"path", parent: name, min: 0)
            try validate(self.path, name:"path", parent: name, pattern: "/?(?:[A-Za-z0-9_\\.\\-\\~]+/){0,10}(?:[A-Za-z0-9_\\.\\-\\~]+)?/?")
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
            case path = "Path"
        }
    }

    public struct ListItemsResponse: AWSShape {

        /// The metadata entries for the folders and objects at the requested path.
        public let items: [Item]?
        /// The token that can be used in a request to view the next set of results. For example, you submit a ListItems request that matches 2,000 items with MaxResults set at 500. The service returns the first batch of results (up to 500) and a NextToken value that can be used to fetch the next batch of results.
        public let nextToken: String?

        public init(items: [Item]? = nil, nextToken: String? = nil) {
            self.items = items
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case items = "Items"
            case nextToken = "NextToken"
        }
    }

    public struct PutObjectRequest: AWSShape {
        /// The key for the payload
        public static let payloadPath: String? = "body"
        public static var _encoding = [
            AWSMemberEncoding(label: "body", location: .body(locationName: "Body"), encoding: .blob), 
            AWSMemberEncoding(label: "cacheControl", location: .header(locationName: "Cache-Control")), 
            AWSMemberEncoding(label: "contentType", location: .header(locationName: "Content-Type")), 
            AWSMemberEncoding(label: "path", location: .uri(locationName: "Path")), 
            AWSMemberEncoding(label: "storageClass", location: .header(locationName: "x-amz-storage-class")), 
            AWSMemberEncoding(label: "uploadAvailability", location: .header(locationName: "x-amz-upload-availability"))
        ]

        /// The bytes to be stored. 
        public let body: AWSPayload
        /// An optional CacheControl header that allows the caller to control the object's cache behavior. Headers can be passed in as specified in the HTTP at https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9. Headers with a custom user-defined value are also accepted.
        public let cacheControl: String?
        /// The content type of the object.
        public let contentType: String?
        /// The path (including the file name) where the object is stored in the container. Format: &lt;folder name&gt;/&lt;folder name&gt;/&lt;file name&gt; For example, to upload the file mlaw.avi to the folder path premium\canada in the container movies, enter the path premium/canada/mlaw.avi. Do not include the container name in this path. If the path includes any folders that don't exist yet, the service creates them. For example, suppose you have an existing premium/usa subfolder. If you specify premium/canada, the service creates a canada subfolder in the premium folder. You then have two subfolders, usa and canada, in the premium folder.  There is no correlation between the path to the source and the path (folders) in the container in AWS Elemental MediaStore. For more information about folders and how they exist in a container, see the AWS Elemental MediaStore User Guide. The file name is the name that is assigned to the file that you upload. The file can have the same name inside and outside of AWS Elemental MediaStore, or it can have the same name. The file name can include or omit an extension. 
        public let path: String
        /// Indicates the storage class of a Put request. Defaults to high-performance temporal storage class, and objects are persisted into durable storage shortly after being received.
        public let storageClass: StorageClass?
        /// Indicates the availability of an object while it is still uploading. If the value is set to streaming, the object is available for downloading after some initial buffering but before the object is uploaded completely. If the value is set to standard, the object is available for downloading only when it is uploaded completely. The default value for this header is standard. To use this header, you must also set the HTTP Transfer-Encoding header to chunked.
        public let uploadAvailability: UploadAvailability?

        public init(body: AWSPayload, cacheControl: String? = nil, contentType: String? = nil, path: String, storageClass: StorageClass? = nil, uploadAvailability: UploadAvailability? = nil) {
            self.body = body
            self.cacheControl = cacheControl
            self.contentType = contentType
            self.path = path
            self.storageClass = storageClass
            self.uploadAvailability = uploadAvailability
        }

        public func validate(name: String) throws {
            try validate(self.contentType, name:"contentType", parent: name, pattern: "^[\\w\\-\\/\\.\\+]{1,255}$")
            try validate(self.path, name:"path", parent: name, max: 900)
            try validate(self.path, name:"path", parent: name, min: 1)
            try validate(self.path, name:"path", parent: name, pattern: "(?:[A-Za-z0-9_\\.\\-\\~]+/){0,10}[A-Za-z0-9_\\.\\-\\~]+")
        }

        private enum CodingKeys: String, CodingKey {
            case body = "Body"
            case cacheControl = "Cache-Control"
            case contentType = "Content-Type"
            case path = "Path"
            case storageClass = "x-amz-storage-class"
            case uploadAvailability = "x-amz-upload-availability"
        }
    }

    public struct PutObjectResponse: AWSShape {

        /// The SHA256 digest of the object that is persisted.
        public let contentSHA256: String?
        /// Unique identifier of the object in the container.
        public let eTag: String?
        /// The storage class where the object was persisted. The class should be “Temporal”.
        public let storageClass: StorageClass?

        public init(contentSHA256: String? = nil, eTag: String? = nil, storageClass: StorageClass? = nil) {
            self.contentSHA256 = contentSHA256
            self.eTag = eTag
            self.storageClass = storageClass
        }

        private enum CodingKeys: String, CodingKey {
            case contentSHA256 = "ContentSHA256"
            case eTag = "ETag"
            case storageClass = "StorageClass"
        }
    }
}
