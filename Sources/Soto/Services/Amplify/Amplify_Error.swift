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

/// Error enum for Amplify
public struct AmplifyErrorType: AWSErrorType {
    enum Code: String {
        case badRequestException = "BadRequestException"
        case dependentServiceFailureException = "DependentServiceFailureException"
        case internalFailureException = "InternalFailureException"
        case limitExceededException = "LimitExceededException"
        case notFoundException = "NotFoundException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case unauthorizedException = "UnauthorizedException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Amplify
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

    ///  A request contains unexpected data.
    public static var badRequestException: Self { .init(.badRequestException) }
    ///  An operation failed because a dependent service threw an exception.
    public static var dependentServiceFailureException: Self { .init(.dependentServiceFailureException) }
    ///  The service failed to perform an operation due to an internal issue.
    public static var internalFailureException: Self { .init(.internalFailureException) }
    ///  A resource could not be created because service quotas were exceeded.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    ///  An entity was not found during an operation.
    public static var notFoundException: Self { .init(.notFoundException) }
    ///  An operation failed due to a non-existent resource.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    ///  An operation failed due to a lack of access.
    public static var unauthorizedException: Self { .init(.unauthorizedException) }
}

extension AmplifyErrorType: Equatable {
    public static func == (lhs: AmplifyErrorType, rhs: AmplifyErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension AmplifyErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
