//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
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

/// Error enum for Textract
public struct TextractErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case badDocumentException = "BadDocumentException"
        case documentTooLargeException = "DocumentTooLargeException"
        case humanLoopQuotaExceededException = "HumanLoopQuotaExceededException"
        case idempotentParameterMismatchException = "IdempotentParameterMismatchException"
        case internalServerError = "InternalServerError"
        case invalidJobIdException = "InvalidJobIdException"
        case invalidKMSKeyException = "InvalidKMSKeyException"
        case invalidParameterException = "InvalidParameterException"
        case invalidS3ObjectException = "InvalidS3ObjectException"
        case limitExceededException = "LimitExceededException"
        case provisionedThroughputExceededException = "ProvisionedThroughputExceededException"
        case throttlingException = "ThrottlingException"
        case unsupportedDocumentException = "UnsupportedDocumentException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Textract
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

    /// You aren't authorized to perform the action. Use the Amazon Resource Name (ARN) of an authorized user or IAM role to perform the operation.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// Amazon Textract isn't able to read the document. For more information on the document limits in Amazon Textract, see limits.
    public static var badDocumentException: Self { .init(.badDocumentException) }
    /// The document can't be processed because it's too large. The maximum document size for synchronous operations 10 MB. The maximum document size for asynchronous operations is 500 MB for PDF files.
    public static var documentTooLargeException: Self { .init(.documentTooLargeException) }
    /// Indicates you have exceeded the maximum number of active human in the loop workflows available
    public static var humanLoopQuotaExceededException: Self { .init(.humanLoopQuotaExceededException) }
    /// A ClientRequestToken input parameter was reused with an operation, but at least one of the other input parameters is different from the previous call to the operation.
    public static var idempotentParameterMismatchException: Self { .init(.idempotentParameterMismatchException) }
    /// Amazon Textract experienced a service issue. Try your call again.
    public static var internalServerError: Self { .init(.internalServerError) }
    /// An invalid job identifier was passed to GetDocumentAnalysis or to GetDocumentAnalysis.
    public static var invalidJobIdException: Self { .init(.invalidJobIdException) }
    ///  Indicates you do not have decrypt permissions with the KMS key entered, or the KMS key was entered incorrectly.
    public static var invalidKMSKeyException: Self { .init(.invalidKMSKeyException) }
    /// An input parameter violated a constraint. For example, in synchronous operations, an InvalidParameterException exception occurs when neither of the S3Object or Bytes values are supplied in the Document request parameter. Validate your parameter before calling the API operation again.
    public static var invalidParameterException: Self { .init(.invalidParameterException) }
    /// Amazon Textract is unable to access the S3 object that's specified in the request. for more information, Configure Access to Amazon S3 For troubleshooting information, see Troubleshooting Amazon S3
    public static var invalidS3ObjectException: Self { .init(.invalidS3ObjectException) }
    /// An Amazon Textract service limit was exceeded. For example, if you start too many asynchronous jobs concurrently, calls to start operations (StartDocumentTextDetection, for example) raise a LimitExceededException exception (HTTP status code: 400) until the number of concurrently running jobs is below the Amazon Textract service limit.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// The number of requests exceeded your throughput limit. If you want to increase this limit, contact Amazon Textract.
    public static var provisionedThroughputExceededException: Self { .init(.provisionedThroughputExceededException) }
    /// Amazon Textract is temporarily unable to process the request. Try your call again.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// The format of the input document isn't supported. Documents for synchronous operations can be in PNG or JPEG format. Documents for asynchronous operations can also be in PDF format.
    public static var unsupportedDocumentException: Self { .init(.unsupportedDocumentException) }
}

extension TextractErrorType: Equatable {
    public static func == (lhs: TextractErrorType, rhs: TextractErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension TextractErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
