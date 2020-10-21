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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/soto/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import SotoCore

/// Error enum for SSOAdmin
public struct SSOAdminErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case conflictException = "ConflictException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceQuotaExceededException = "ServiceQuotaExceededException"
        case throttlingException = "ThrottlingException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize SSOAdmin
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
    /// Occurs when a conflict with a previous successful write is detected. This generally occurs when the previous write did not have time to propagate to the host serving the current request. A retry (with appropriate backoff logic) is the recommended response to this exception.
    public static var conflictException: Self { .init(.conflictException) }
    /// The request processing has failed because of an unknown error, exception, or failure with an internal server.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// Indicates that a requested resource is not found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// Indicates that the principal has crossed the permitted number of resources that can be created.
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    /// Indicates that the principal has crossed the throttling limits of the API operations.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// The request failed because it contains a syntax error.
    public static var validationException: Self { .init(.validationException) }
}

extension SSOAdminErrorType: Equatable {
    public static func == (lhs: SSOAdminErrorType, rhs: SSOAdminErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension SSOAdminErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
