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

/// Error enum for Cloud9
public struct Cloud9ErrorType: AWSErrorType {
    enum Code: String {
        case badRequestException = "BadRequestException"
        case concurrentAccessException = "ConcurrentAccessException"
        case conflictException = "ConflictException"
        case forbiddenException = "ForbiddenException"
        case internalServerErrorException = "InternalServerErrorException"
        case limitExceededException = "LimitExceededException"
        case notFoundException = "NotFoundException"
        case tooManyRequestsException = "TooManyRequestsException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Cloud9
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

    /// The target request is invalid.
    public static var badRequestException: Self { .init(.badRequestException) }
    /// A concurrent access issue occurred.
    public static var concurrentAccessException: Self { .init(.concurrentAccessException) }
    /// A conflict occurred.
    public static var conflictException: Self { .init(.conflictException) }
    /// An access permissions issue occurred.
    public static var forbiddenException: Self { .init(.forbiddenException) }
    /// An internal server error occurred.
    public static var internalServerErrorException: Self { .init(.internalServerErrorException) }
    /// A service limit was exceeded.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// The target resource cannot be found.
    public static var notFoundException: Self { .init(.notFoundException) }
    /// Too many service requests were made over the given time period.
    public static var tooManyRequestsException: Self { .init(.tooManyRequestsException) }
}

extension Cloud9ErrorType: Equatable {
    public static func == (lhs: Cloud9ErrorType, rhs: Cloud9ErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension Cloud9ErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
