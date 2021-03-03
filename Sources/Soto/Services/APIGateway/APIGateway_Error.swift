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

/// Error enum for APIGateway
public struct APIGatewayErrorType: AWSErrorType {
    enum Code: String {
        case badRequestException = "BadRequestException"
        case conflictException = "ConflictException"
        case limitExceededException = "LimitExceededException"
        case notFoundException = "NotFoundException"
        case serviceUnavailableException = "ServiceUnavailableException"
        case tooManyRequestsException = "TooManyRequestsException"
        case unauthorizedException = "UnauthorizedException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize APIGateway
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

    /// The submitted request is not valid, for example, the input is incomplete or incorrect. See the accompanying error message for details.
    public static var badRequestException: Self { .init(.badRequestException) }
    /// The request configuration has conflicts. For details, see the accompanying error message.
    public static var conflictException: Self { .init(.conflictException) }
    /// The request exceeded the rate limit. Retry after the specified time period.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// The requested resource is not found. Make sure that the request URI is correct.
    public static var notFoundException: Self { .init(.notFoundException) }
    /// The requested service is not available. For details see the accompanying error message. Retry after the specified time period.
    public static var serviceUnavailableException: Self { .init(.serviceUnavailableException) }
    /// The request has reached its throttling limit. Retry after the specified time period.
    public static var tooManyRequestsException: Self { .init(.tooManyRequestsException) }
    /// The request is denied because the caller has insufficient permissions.
    public static var unauthorizedException: Self { .init(.unauthorizedException) }
}

extension APIGatewayErrorType: Equatable {
    public static func == (lhs: APIGatewayErrorType, rhs: APIGatewayErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension APIGatewayErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
