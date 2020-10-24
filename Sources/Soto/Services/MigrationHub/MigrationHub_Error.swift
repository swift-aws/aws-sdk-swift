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

/// Error enum for MigrationHub
public struct MigrationHubErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case dryRunOperation = "DryRunOperation"
        case homeRegionNotSetException = "HomeRegionNotSetException"
        case internalServerError = "InternalServerError"
        case invalidInputException = "InvalidInputException"
        case policyErrorException = "PolicyErrorException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceUnavailableException = "ServiceUnavailableException"
        case throttlingException = "ThrottlingException"
        case unauthorizedOperation = "UnauthorizedOperation"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize MigrationHub
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
    /// Exception raised to indicate a successfully authorized action when the DryRun flag is set to "true".
    public static var dryRunOperation: Self { .init(.dryRunOperation) }
    /// The home region is not set. Set the home region to continue.
    public static var homeRegionNotSetException: Self { .init(.homeRegionNotSetException) }
    /// Exception raised when an internal, configuration, or dependency error is encountered.
    public static var internalServerError: Self { .init(.internalServerError) }
    /// Exception raised when the provided input violates a policy constraint or is entered in the wrong format or data type.
    public static var invalidInputException: Self { .init(.invalidInputException) }
    /// Exception raised when there are problems accessing Application Discovery Service (Application Discovery Service); most likely due to a misconfigured policy or the migrationhub-discovery role is missing or not configured correctly.
    public static var policyErrorException: Self { .init(.policyErrorException) }
    /// Exception raised when the request references a resource (Application Discovery Service configuration, update stream, migration task, etc.) that does not exist in Application Discovery Service (Application Discovery Service) or in Migration Hub's repository.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// Exception raised when there is an internal, configuration, or dependency error encountered.
    public static var serviceUnavailableException: Self { .init(.serviceUnavailableException) }
    /// The request was denied due to request throttling.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// Exception raised to indicate a request was not authorized when the DryRun flag is set to "true".
    public static var unauthorizedOperation: Self { .init(.unauthorizedOperation) }
}

extension MigrationHubErrorType: Equatable {
    public static func == (lhs: MigrationHubErrorType, rhs: MigrationHubErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension MigrationHubErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
