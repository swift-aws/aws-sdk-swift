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

/// Error enum for DataExchange
public struct DataExchangeErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case conflictException = "ConflictException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceLimitExceededException = "ServiceLimitExceededException"
        case throttlingException = "ThrottlingException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize DataExchange
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

    /// Access to the resource is denied.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// The request couldn't be completed because it conflicted with the current state of the resource.
    public static var conflictException: Self { .init(.conflictException) }
    /// An exception occurred with the service.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// The resource couldn't be found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The request has exceeded the quotas imposed by the service.
    public static var serviceLimitExceededException: Self { .init(.serviceLimitExceededException) }
    /// The limit on the number of requests per second was exceeded.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// The request was invalid.
    public static var validationException: Self { .init(.validationException) }
}

extension DataExchangeErrorType: Equatable {
    public static func == (lhs: DataExchangeErrorType, rhs: DataExchangeErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension DataExchangeErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}