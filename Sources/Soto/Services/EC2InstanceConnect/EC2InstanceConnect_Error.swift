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

/// Error enum for EC2InstanceConnect
public struct EC2InstanceConnectErrorType: AWSErrorType {
    enum Code: String {
        case authException = "AuthException"
        case eC2InstanceNotFoundException = "EC2InstanceNotFoundException"
        case invalidArgsException = "InvalidArgsException"
        case serviceException = "ServiceException"
        case throttlingException = "ThrottlingException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize EC2InstanceConnect
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

    /// Indicates that either your AWS credentials are invalid or you do not have access to the EC2 instance.
    public static var authException: Self { .init(.authException) }
    /// Indicates that the instance requested was not found in the given zone. Check that you have provided a valid instance ID and the correct zone.
    public static var eC2InstanceNotFoundException: Self { .init(.eC2InstanceNotFoundException) }
    /// Indicates that you provided bad input. Ensure you have a valid instance ID, the correct zone, and a valid SSH public key.
    public static var invalidArgsException: Self { .init(.invalidArgsException) }
    /// Indicates that the service encountered an error. Follow the message's instructions and try again.
    public static var serviceException: Self { .init(.serviceException) }
    /// Indicates you have been making requests too frequently and have been throttled. Wait for a while and try again. If higher call volume is warranted contact AWS Support.
    public static var throttlingException: Self { .init(.throttlingException) }
}

extension EC2InstanceConnectErrorType: Equatable {
    public static func == (lhs: EC2InstanceConnectErrorType, rhs: EC2InstanceConnectErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension EC2InstanceConnectErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
