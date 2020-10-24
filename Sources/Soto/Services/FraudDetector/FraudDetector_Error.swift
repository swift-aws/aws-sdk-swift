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

/// Error enum for FraudDetector
public struct FraudDetectorErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case conflictException = "ConflictException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case throttlingException = "ThrottlingException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize FraudDetector
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

    /// An exception indicating Amazon Fraud Detector does not have the needed permissions. This can occur if you submit a request, such as PutExternalModel, that specifies a role that is not in your account.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// An exception indicating there was a conflict during a delete operation. The following delete operations can cause a conflict exception:   DeleteDetector: A conflict exception will occur if the detector has associated Rules or DetectorVersions. You can only delete a detector if it has no Rules or DetectorVersions.   DeleteDetectorVersion: A conflict exception will occur if the DetectorVersion status is ACTIVE.   DeleteRule: A conflict exception will occur if the RuleVersion is in use by an associated ACTIVE or INACTIVE DetectorVersion.
    public static var conflictException: Self { .init(.conflictException) }
    /// An exception indicating an internal server error.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// An exception indicating the specified resource was not found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// An exception indicating a throttling error.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// An exception indicating a specified value is not allowed.
    public static var validationException: Self { .init(.validationException) }
}

extension FraudDetectorErrorType: Equatable {
    public static func == (lhs: FraudDetectorErrorType, rhs: FraudDetectorErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension FraudDetectorErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
