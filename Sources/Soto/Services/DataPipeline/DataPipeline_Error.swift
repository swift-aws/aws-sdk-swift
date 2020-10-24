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

/// Error enum for DataPipeline
public struct DataPipelineErrorType: AWSErrorType {
    enum Code: String {
        case internalServiceError = "InternalServiceError"
        case invalidRequestException = "InvalidRequestException"
        case pipelineDeletedException = "PipelineDeletedException"
        case pipelineNotFoundException = "PipelineNotFoundException"
        case taskNotFoundException = "TaskNotFoundException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize DataPipeline
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

    /// An internal service error occurred.
    public static var internalServiceError: Self { .init(.internalServiceError) }
    /// The request was not valid. Verify that your request was properly formatted, that the signature was generated with the correct credentials, and that you haven't exceeded any of the service limits for your account.
    public static var invalidRequestException: Self { .init(.invalidRequestException) }
    /// The specified pipeline has been deleted.
    public static var pipelineDeletedException: Self { .init(.pipelineDeletedException) }
    /// The specified pipeline was not found. Verify that you used the correct user and account identifiers.
    public static var pipelineNotFoundException: Self { .init(.pipelineNotFoundException) }
    /// The specified task was not found.
    public static var taskNotFoundException: Self { .init(.taskNotFoundException) }
}

extension DataPipelineErrorType: Equatable {
    public static func == (lhs: DataPipelineErrorType, rhs: DataPipelineErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension DataPipelineErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
