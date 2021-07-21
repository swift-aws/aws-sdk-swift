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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto-codegenerator.
// DO NOT EDIT.

import SotoCore

/// Error enum for Braket
public struct BraketErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case conflictException = "ConflictException"
        case deviceOfflineException = "DeviceOfflineException"
        case deviceRetiredException = "DeviceRetiredException"
        case internalServiceException = "InternalServiceException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceQuotaExceededException = "ServiceQuotaExceededException"
        case throttlingException = "ThrottlingException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Braket
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
    /// An error occurred due to a conflict.
    public static var conflictException: Self { .init(.conflictException) }
    /// The specified device is currently offline.
    public static var deviceOfflineException: Self { .init(.deviceOfflineException) }
    /// The specified device has been retired.
    public static var deviceRetiredException: Self { .init(.deviceRetiredException) }
    /// The request processing has failed because of an unknown error, exception, or failure.
    public static var internalServiceException: Self { .init(.internalServiceException) }
    /// The specified resource was not found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The request failed because a service quota is exceeded.
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    /// The throttling rate limit is met.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// The input fails to satisfy the constraints specified by an AWS service.
    public static var validationException: Self { .init(.validationException) }
}

extension BraketErrorType: Equatable {
    public static func == (lhs: BraketErrorType, rhs: BraketErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension BraketErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
