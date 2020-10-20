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

/// Error enum for Glacier
public struct GlacierErrorType: AWSErrorType {
    enum Code: String {
        case insufficientCapacityException = "InsufficientCapacityException"
        case invalidParameterValueException = "InvalidParameterValueException"
        case limitExceededException = "LimitExceededException"
        case missingParameterValueException = "MissingParameterValueException"
        case policyEnforcedException = "PolicyEnforcedException"
        case requestTimeoutException = "RequestTimeoutException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceUnavailableException = "ServiceUnavailableException"
    }

    private var error: Code
    public var message: String?

    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.message = message
    }

    internal init(_ error: Code) {
        self.error = error
        self.message = nil
    }

    public static var insufficientCapacityException: Self { .init(.insufficientCapacityException) }
    public static var invalidParameterValueException: Self { .init(.invalidParameterValueException) }
    public static var limitExceededException: Self { .init(.limitExceededException) }
    public static var missingParameterValueException: Self { .init(.missingParameterValueException) }
    public static var policyEnforcedException: Self { .init(.policyEnforcedException) }
    public static var requestTimeoutException: Self { .init(.requestTimeoutException) }
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    public static var serviceUnavailableException: Self { .init(.serviceUnavailableException) }
}

extension GlacierErrorType: Equatable {
    public static func == (lhs: GlacierErrorType, rhs: GlacierErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension GlacierErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
