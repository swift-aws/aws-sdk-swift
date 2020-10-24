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

/// Error enum for Personalize
public struct PersonalizeErrorType: AWSErrorType {
    enum Code: String {
        case invalidInputException = "InvalidInputException"
        case invalidNextTokenException = "InvalidNextTokenException"
        case limitExceededException = "LimitExceededException"
        case resourceAlreadyExistsException = "ResourceAlreadyExistsException"
        case resourceInUseException = "ResourceInUseException"
        case resourceNotFoundException = "ResourceNotFoundException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Personalize
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

    /// Provide a valid value for the field or parameter.
    public static var invalidInputException: Self { .init(.invalidInputException) }
    /// The token is not valid.
    public static var invalidNextTokenException: Self { .init(.invalidNextTokenException) }
    /// The limit on the number of requests per second has been exceeded.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// The specified resource already exists.
    public static var resourceAlreadyExistsException: Self { .init(.resourceAlreadyExistsException) }
    /// The specified resource is in use.
    public static var resourceInUseException: Self { .init(.resourceInUseException) }
    /// Could not find the specified resource.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
}

extension PersonalizeErrorType: Equatable {
    public static func == (lhs: PersonalizeErrorType, rhs: PersonalizeErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension PersonalizeErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
