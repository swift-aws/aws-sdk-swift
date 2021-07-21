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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto-codegenerator.
// DO NOT EDIT.

import SotoCore

/// Error enum for CloudHSMV2
public struct CloudHSMV2ErrorType: AWSErrorType {
    enum Code: String {
        case cloudHsmAccessDeniedException = "CloudHsmAccessDeniedException"
        case cloudHsmInternalFailureException = "CloudHsmInternalFailureException"
        case cloudHsmInvalidRequestException = "CloudHsmInvalidRequestException"
        case cloudHsmResourceNotFoundException = "CloudHsmResourceNotFoundException"
        case cloudHsmServiceException = "CloudHsmServiceException"
        case cloudHsmTagException = "CloudHsmTagException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize CloudHSMV2
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

    /// The request was rejected because the requester does not have permission to perform the requested operation.
    public static var cloudHsmAccessDeniedException: Self { .init(.cloudHsmAccessDeniedException) }
    /// The request was rejected because of an AWS CloudHSM internal failure. The request can be retried.
    public static var cloudHsmInternalFailureException: Self { .init(.cloudHsmInternalFailureException) }
    /// The request was rejected because it is not a valid request.
    public static var cloudHsmInvalidRequestException: Self { .init(.cloudHsmInvalidRequestException) }
    /// The request was rejected because it refers to a resource that cannot be found.
    public static var cloudHsmResourceNotFoundException: Self { .init(.cloudHsmResourceNotFoundException) }
    /// The request was rejected because an error occurred.
    public static var cloudHsmServiceException: Self { .init(.cloudHsmServiceException) }
    /// The request was rejected because of a tagging failure. Verify the tag conditions in all applicable policies, and then retry the request.
    public static var cloudHsmTagException: Self { .init(.cloudHsmTagException) }
}

extension CloudHSMV2ErrorType: Equatable {
    public static func == (lhs: CloudHSMV2ErrorType, rhs: CloudHSMV2ErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension CloudHSMV2ErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
