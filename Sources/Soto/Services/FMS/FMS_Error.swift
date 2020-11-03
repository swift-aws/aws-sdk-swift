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

/// Error enum for FMS
public struct FMSErrorType: AWSErrorType {
    enum Code: String {
        case internalErrorException = "InternalErrorException"
        case invalidInputException = "InvalidInputException"
        case invalidOperationException = "InvalidOperationException"
        case invalidTypeException = "InvalidTypeException"
        case limitExceededException = "LimitExceededException"
        case resourceNotFoundException = "ResourceNotFoundException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize FMS
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

    /// The operation failed because of a system problem, even though the request was valid. Retry your request.
    public static var internalErrorException: Self { .init(.internalErrorException) }
    /// The parameters of the request were invalid.
    public static var invalidInputException: Self { .init(.invalidInputException) }
    /// The operation failed because there was nothing to do or the operation wasn't possible. For example, you might have submitted an AssociateAdminAccount request for an account ID that was already set as the AWS Firewall Manager administrator. Or you might have tried to access a Region that's disabled by default, and that you need to enable for the Firewall Manager administrator account and for AWS Organizations before you can access it.
    public static var invalidOperationException: Self { .init(.invalidOperationException) }
    /// The value of the Type parameter is invalid.
    public static var invalidTypeException: Self { .init(.invalidTypeException) }
    /// The operation exceeds a resource limit, for example, the maximum number of policy objects that you can create for an AWS account. For more information, see Firewall Manager Limits in the AWS WAF Developer Guide.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// The specified resource was not found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
}

extension FMSErrorType: Equatable {
    public static func == (lhs: FMSErrorType, rhs: FMSErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension FMSErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}