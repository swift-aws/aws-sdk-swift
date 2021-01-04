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

/// Error enum for AmplifyBackend
public struct AmplifyBackendErrorType: AWSErrorType {
    enum Code: String {
        case badRequestException = "BadRequestException"
        case gatewayTimeoutException = "GatewayTimeoutException"
        case notFoundException = "NotFoundException"
        case tooManyRequestsException = "TooManyRequestsException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize AmplifyBackend
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

    /// An error returned if a request is not formed properly.
    public static var badRequestException: Self { .init(.badRequestException) }
    /// An error returned if there's a temporary issue with the service.
    public static var gatewayTimeoutException: Self { .init(.gatewayTimeoutException) }
    /// An error returned when a specific resource type is not found.
    public static var notFoundException: Self { .init(.notFoundException) }
    /// An error that is returned when a limit of a specific type is exceeded.
    public static var tooManyRequestsException: Self { .init(.tooManyRequestsException) }
}

extension AmplifyBackendErrorType: Equatable {
    public static func == (lhs: AmplifyBackendErrorType, rhs: AmplifyBackendErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension AmplifyBackendErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
