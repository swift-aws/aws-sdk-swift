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

/// Error enum for Firehose
public struct FirehoseErrorType: AWSErrorType {
    enum Code: String {
        case concurrentModificationException = "ConcurrentModificationException"
        case invalidArgumentException = "InvalidArgumentException"
        case invalidKMSResourceException = "InvalidKMSResourceException"
        case limitExceededException = "LimitExceededException"
        case resourceInUseException = "ResourceInUseException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceUnavailableException = "ServiceUnavailableException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Firehose
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

    /// Another modification has already happened. Fetch VersionId again and use it to update the destination.
    public static var concurrentModificationException: Self { .init(.concurrentModificationException) }
    /// The specified input parameter has a value that is not valid.
    public static var invalidArgumentException: Self { .init(.invalidArgumentException) }
    /// Kinesis Data Firehose throws this exception when an attempt to put records or to start or stop delivery stream encryption fails. This happens when the KMS service throws one of the following exception types: AccessDeniedException, InvalidStateException, DisabledException, or NotFoundException.
    public static var invalidKMSResourceException: Self { .init(.invalidKMSResourceException) }
    /// You have already reached the limit for a requested resource.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// The resource is already in use and not available for this operation.
    public static var resourceInUseException: Self { .init(.resourceInUseException) }
    /// The specified resource could not be found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The service is unavailable. Back off and retry the operation. If you continue to see the exception, throughput limits for the delivery stream may have been exceeded. For more information about limits and how to request an increase, see Amazon Kinesis Data Firehose Limits.
    public static var serviceUnavailableException: Self { .init(.serviceUnavailableException) }
}

extension FirehoseErrorType: Equatable {
    public static func == (lhs: FirehoseErrorType, rhs: FirehoseErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension FirehoseErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
