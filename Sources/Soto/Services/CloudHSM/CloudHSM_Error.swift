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

/// Error enum for CloudHSM
public struct CloudHSMErrorType: AWSErrorType {
    enum Code: String {
        case cloudHsmInternalException = "CloudHsmInternalException"
        case cloudHsmServiceException = "CloudHsmServiceException"
        case invalidRequestException = "InvalidRequestException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize CloudHSM
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

    /// Indicates that an internal error occurred.
    public static var cloudHsmInternalException: Self { .init(.cloudHsmInternalException) }
    /// Indicates that an exception occurred in the AWS CloudHSM service.
    public static var cloudHsmServiceException: Self { .init(.cloudHsmServiceException) }
    /// Indicates that one or more of the request parameters are not valid.
    public static var invalidRequestException: Self { .init(.invalidRequestException) }
}

extension CloudHSMErrorType: Equatable {
    public static func == (lhs: CloudHSMErrorType, rhs: CloudHSMErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension CloudHSMErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
