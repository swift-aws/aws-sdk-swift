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

/// Error enum for ApiGatewayV2
public struct ApiGatewayV2ErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case badRequestException = "BadRequestException"
        case conflictException = "ConflictException"
        case notFoundException = "NotFoundException"
        case tooManyRequestsException = "TooManyRequestsException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize ApiGatewayV2
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

    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// The request is not valid, for example, the input is incomplete or incorrect. See the accompanying error message for details.
    public static var badRequestException: Self { .init(.badRequestException) }
    /// The requested operation would cause a conflict with the current state of a service resource associated with the request. Resolve the conflict before retrying this request. See the accompanying error message for details.
    public static var conflictException: Self { .init(.conflictException) }
    /// The resource specified in the request was not found. See the message field for more information.
    public static var notFoundException: Self { .init(.notFoundException) }
    /// A limit has been exceeded. See the accompanying error message for details.
    public static var tooManyRequestsException: Self { .init(.tooManyRequestsException) }
}

extension ApiGatewayV2ErrorType: Equatable {
    public static func == (lhs: ApiGatewayV2ErrorType, rhs: ApiGatewayV2ErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension ApiGatewayV2ErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
