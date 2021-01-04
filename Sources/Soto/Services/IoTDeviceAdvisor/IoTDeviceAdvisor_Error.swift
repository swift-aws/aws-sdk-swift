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

/// Error enum for IoTDeviceAdvisor
public struct IoTDeviceAdvisorErrorType: AWSErrorType {
    enum Code: String {
        case conflictException = "ConflictException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize IoTDeviceAdvisor
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

    /// Sends Conflict Exception.
    public static var conflictException: Self { .init(.conflictException) }
    /// Sends Internal Failure Exception.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// Sends Resource Not Found Exception.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// Sends invalid request exception.
    public static var validationException: Self { .init(.validationException) }
}

extension IoTDeviceAdvisorErrorType: Equatable {
    public static func == (lhs: IoTDeviceAdvisorErrorType, rhs: IoTDeviceAdvisorErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension IoTDeviceAdvisorErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
