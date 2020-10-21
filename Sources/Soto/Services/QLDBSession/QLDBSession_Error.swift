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

/// Error enum for QLDBSession
public struct QLDBSessionErrorType: AWSErrorType {
    enum Code: String {
        case badRequestException = "BadRequestException"
        case invalidSessionException = "InvalidSessionException"
        case limitExceededException = "LimitExceededException"
        case occConflictException = "OccConflictException"
        case rateExceededException = "RateExceededException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize QLDBSession
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

    /// Returned if the request is malformed or contains an error such as an invalid parameter value or a missing required parameter.
    public static var badRequestException: Self { .init(.badRequestException) }
    /// Returned if the session doesn't exist anymore because it timed out or expired.
    public static var invalidSessionException: Self { .init(.invalidSessionException) }
    /// Returned if a resource limit such as number of active sessions is exceeded.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// Returned when a transaction cannot be written to the journal due to a failure in the verification phase of optimistic concurrency control (OCC).
    public static var occConflictException: Self { .init(.occConflictException) }
    /// Returned when the rate of requests exceeds the allowed throughput.
    public static var rateExceededException: Self { .init(.rateExceededException) }
}

extension QLDBSessionErrorType: Equatable {
    public static func == (lhs: QLDBSessionErrorType, rhs: QLDBSessionErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension QLDBSessionErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
