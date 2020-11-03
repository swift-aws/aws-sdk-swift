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

/// Error enum for GroundStation
public struct GroundStationErrorType: AWSErrorType {
    enum Code: String {
        case dependencyException = "DependencyException"
        case invalidParameterException = "InvalidParameterException"
        case resourceLimitExceededException = "ResourceLimitExceededException"
        case resourceNotFoundException = "ResourceNotFoundException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize GroundStation
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

    /// Dependency encountered an error.
    public static var dependencyException: Self { .init(.dependencyException) }
    /// One or more parameters are not valid.
    public static var invalidParameterException: Self { .init(.invalidParameterException) }
    /// Account limits for this resource have been exceeded.
    public static var resourceLimitExceededException: Self { .init(.resourceLimitExceededException) }
    /// Resource was not found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
}

extension GroundStationErrorType: Equatable {
    public static func == (lhs: GroundStationErrorType, rhs: GroundStationErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension GroundStationErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}