//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

import SotoCore

/// Error enum for Comprehend
public struct ComprehendErrorType: AWSErrorType {
    enum Code: String {
        case batchSizeLimitExceededException = "BatchSizeLimitExceededException"
        case concurrentModificationException = "ConcurrentModificationException"
        case internalServerException = "InternalServerException"
        case invalidFilterException = "InvalidFilterException"
        case invalidRequestException = "InvalidRequestException"
        case jobNotFoundException = "JobNotFoundException"
        case kmsKeyValidationException = "KmsKeyValidationException"
        case resourceInUseException = "ResourceInUseException"
        case resourceLimitExceededException = "ResourceLimitExceededException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case resourceUnavailableException = "ResourceUnavailableException"
        case textSizeLimitExceededException = "TextSizeLimitExceededException"
        case tooManyRequestsException = "TooManyRequestsException"
        case tooManyTagKeysException = "TooManyTagKeysException"
        case tooManyTagsException = "TooManyTagsException"
        case unsupportedLanguageException = "UnsupportedLanguageException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Comprehend
    public init?(errorCode: String, context: AWSErrorContext) {
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code) {
        self.error = error
        self.context = nil
    }

    /// return error code string
    public var errorCode: String { self.error.rawValue }

    /// The number of documents in the request exceeds the limit of 25. Try your request again with fewer documents.
    public static var batchSizeLimitExceededException: Self { .init(.batchSizeLimitExceededException) }
    /// Concurrent modification of the tags associated with an Amazon Comprehend resource is not supported.
    public static var concurrentModificationException: Self { .init(.concurrentModificationException) }
    /// An internal server error occurred. Retry your request.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// The filter specified for the operation is invalid. Specify a different filter.
    public static var invalidFilterException: Self { .init(.invalidFilterException) }
    /// The request is invalid.
    public static var invalidRequestException: Self { .init(.invalidRequestException) }
    /// The specified job was not found. Check the job ID and try again.
    public static var jobNotFoundException: Self { .init(.jobNotFoundException) }
    /// The KMS customer managed key (CMK) entered cannot be validated. Verify the key and re-enter it.
    public static var kmsKeyValidationException: Self { .init(.kmsKeyValidationException) }
    /// The specified resource name is already in use. Use a different name and try your request again.
    public static var resourceInUseException: Self { .init(.resourceInUseException) }
    /// The maximum number of resources per account has been exceeded. Review the resources, and then try your request again.
    public static var resourceLimitExceededException: Self { .init(.resourceLimitExceededException) }
    /// The specified resource ARN was not found. Check the ARN and try your request again.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The specified resource is not available. Check the resource and try your request again.
    public static var resourceUnavailableException: Self { .init(.resourceUnavailableException) }
    /// The size of the input text exceeds the limit. Use a smaller document.
    public static var textSizeLimitExceededException: Self { .init(.textSizeLimitExceededException) }
    /// The number of requests exceeds the limit. Resubmit your request later.
    public static var tooManyRequestsException: Self { .init(.tooManyRequestsException) }
    /// The request contains more tag keys than can be associated with a resource (50 tag keys per resource).
    public static var tooManyTagKeysException: Self { .init(.tooManyTagKeysException) }
    /// The request contains more tags than can be associated with a resource (50 tags per resource). The maximum number of tags includes both existing tags and those included in your current request.
    public static var tooManyTagsException: Self { .init(.tooManyTagsException) }
    /// Amazon Comprehend can't process the language of the input text. For all custom entity recognition APIs (such as CreateEntityRecognizer), only English, Spanish, French, Italian, German, or Portuguese are accepted. For most other APIs, such as those for Custom Classification, Amazon Comprehend accepts text in all supported languages. For a list of supported languages, see supported-languages.
    public static var unsupportedLanguageException: Self { .init(.unsupportedLanguageException) }
}

extension ComprehendErrorType: Equatable {
    public static func == (lhs: ComprehendErrorType, rhs: ComprehendErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension ComprehendErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}