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

/// Error enum for PinpointSMSVoice
public struct PinpointSMSVoiceErrorType: AWSErrorType {
    enum Code: String {
        case alreadyExistsException = "AlreadyExistsException"
        case badRequestException = "BadRequestException"
        case internalServiceErrorException = "InternalServiceErrorException"
        case limitExceededException = "LimitExceededException"
        case notFoundException = "NotFoundException"
        case tooManyRequestsException = "TooManyRequestsException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize PinpointSMSVoice
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

    /// The resource specified in your request already exists.
    public static var alreadyExistsException: Self { .init(.alreadyExistsException) }
    /// The input you provided is invalid.
    public static var badRequestException: Self { .init(.badRequestException) }
    /// The API encountered an unexpected error and couldn't complete the request. You might be able to successfully issue the request again in the future.
    public static var internalServiceErrorException: Self { .init(.internalServiceErrorException) }
    /// There are too many instances of the specified resource type.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// The resource you attempted to access doesn't exist.
    public static var notFoundException: Self { .init(.notFoundException) }
    /// You've issued too many requests to the resource. Wait a few minutes, and then try again.
    public static var tooManyRequestsException: Self { .init(.tooManyRequestsException) }
}

extension PinpointSMSVoiceErrorType: Equatable {
    public static func == (lhs: PinpointSMSVoiceErrorType, rhs: PinpointSMSVoiceErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension PinpointSMSVoiceErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
