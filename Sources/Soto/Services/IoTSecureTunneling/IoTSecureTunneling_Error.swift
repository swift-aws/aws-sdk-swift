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

/// Error enum for IoTSecureTunneling
public struct IoTSecureTunnelingErrorType: AWSErrorType {
    enum Code: String {
        case limitExceededException = "LimitExceededException"
        case resourceNotFoundException = "ResourceNotFoundException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize IoTSecureTunneling
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

    /// Thrown when a tunnel limit is exceeded.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// Thrown when an operation is attempted on a resource that does not exist.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
}

extension IoTSecureTunnelingErrorType: Equatable {
    public static func == (lhs: IoTSecureTunnelingErrorType, rhs: IoTSecureTunnelingErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension IoTSecureTunnelingErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
