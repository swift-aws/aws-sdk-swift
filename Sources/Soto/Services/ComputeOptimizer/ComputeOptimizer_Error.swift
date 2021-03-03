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

/// Error enum for ComputeOptimizer
public struct ComputeOptimizerErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case internalServerException = "InternalServerException"
        case invalidParameterValueException = "InvalidParameterValueException"
        case limitExceededException = "LimitExceededException"
        case missingAuthenticationToken = "MissingAuthenticationToken"
        case optInRequiredException = "OptInRequiredException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceUnavailableException = "ServiceUnavailableException"
        case throttlingException = "ThrottlingException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize ComputeOptimizer
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

    /// You do not have sufficient access to perform this action.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// An internal error has occurred. Try your call again.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// An invalid or out-of-range value was supplied for the input parameter.
    public static var invalidParameterValueException: Self { .init(.invalidParameterValueException) }
    /// The request exceeds a limit of the service.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// The request must contain either a valid (registered) AWS access key ID or X.509 certificate.
    public static var missingAuthenticationToken: Self { .init(.missingAuthenticationToken) }
    /// The account is not opted in to AWS Compute Optimizer.
    public static var optInRequiredException: Self { .init(.optInRequiredException) }
    /// A resource that is required for the action doesn't exist.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The request has failed due to a temporary failure of the server.
    public static var serviceUnavailableException: Self { .init(.serviceUnavailableException) }
    /// The request was denied due to request throttling.
    public static var throttlingException: Self { .init(.throttlingException) }
}

extension ComputeOptimizerErrorType: Equatable {
    public static func == (lhs: ComputeOptimizerErrorType, rhs: ComputeOptimizerErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension ComputeOptimizerErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
