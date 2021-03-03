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

/// Error enum for CodeBuild
public struct CodeBuildErrorType: AWSErrorType {
    enum Code: String {
        case accountLimitExceededException = "AccountLimitExceededException"
        case invalidInputException = "InvalidInputException"
        case oAuthProviderException = "OAuthProviderException"
        case resourceAlreadyExistsException = "ResourceAlreadyExistsException"
        case resourceNotFoundException = "ResourceNotFoundException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize CodeBuild
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

    /// An AWS service limit was exceeded for the calling AWS account.
    public static var accountLimitExceededException: Self { .init(.accountLimitExceededException) }
    /// The input value that was provided is not valid.
    public static var invalidInputException: Self { .init(.invalidInputException) }
    /// There was a problem with the underlying OAuth provider.
    public static var oAuthProviderException: Self { .init(.oAuthProviderException) }
    /// The specified AWS resource cannot be created, because an AWS resource with the same settings already exists.
    public static var resourceAlreadyExistsException: Self { .init(.resourceAlreadyExistsException) }
    /// The specified AWS resource cannot be found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
}

extension CodeBuildErrorType: Equatable {
    public static func == (lhs: CodeBuildErrorType, rhs: CodeBuildErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension CodeBuildErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
