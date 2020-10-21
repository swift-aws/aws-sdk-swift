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

/// Error enum for Mobile
public struct MobileErrorType: AWSErrorType {
    enum Code: String {
        case accountActionRequiredException = "AccountActionRequiredException"
        case badRequestException = "BadRequestException"
        case internalFailureException = "InternalFailureException"
        case limitExceededException = "LimitExceededException"
        case notFoundException = "NotFoundException"
        case serviceUnavailableException = "ServiceUnavailableException"
        case tooManyRequestsException = "TooManyRequestsException"
        case unauthorizedException = "UnauthorizedException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Mobile
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

    ///  Account Action is required in order to continue the request.
    public static var accountActionRequiredException: Self { .init(.accountActionRequiredException) }
    ///  The request cannot be processed because some parameter is not valid or the project state prevents the operation from being performed.
    public static var badRequestException: Self { .init(.badRequestException) }
    ///  The service has encountered an unexpected error condition which prevents it from servicing the request.
    public static var internalFailureException: Self { .init(.internalFailureException) }
    ///  There are too many AWS Mobile Hub projects in the account or the account has exceeded the maximum number of resources in some AWS service. You should create another sub-account using AWS Organizations or remove some resources and retry your request.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    ///  No entity can be found with the specified identifier.
    public static var notFoundException: Self { .init(.notFoundException) }
    ///  The service is temporarily unavailable. The request should be retried after some time delay.
    public static var serviceUnavailableException: Self { .init(.serviceUnavailableException) }
    ///  Too many requests have been received for this AWS account in too short a time. The request should be retried after some time delay.
    public static var tooManyRequestsException: Self { .init(.tooManyRequestsException) }
    ///  Credentials of the caller are insufficient to authorize the request.
    public static var unauthorizedException: Self { .init(.unauthorizedException) }
}

extension MobileErrorType: Equatable {
    public static func == (lhs: MobileErrorType, rhs: MobileErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension MobileErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
