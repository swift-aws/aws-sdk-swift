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

/// Error enum for RAM
public struct RAMErrorType: AWSErrorType {
    enum Code: String {
        case idempotentParameterMismatchException = "IdempotentParameterMismatchException"
        case invalidClientTokenException = "InvalidClientTokenException"
        case invalidMaxResultsException = "InvalidMaxResultsException"
        case invalidNextTokenException = "InvalidNextTokenException"
        case invalidParameterException = "InvalidParameterException"
        case invalidResourceTypeException = "InvalidResourceTypeException"
        case invalidStateTransitionException = "InvalidStateTransitionException"
        case malformedArnException = "MalformedArnException"
        case missingRequiredParameterException = "MissingRequiredParameterException"
        case operationNotPermittedException = "OperationNotPermittedException"
        case resourceArnNotFoundException = "ResourceArnNotFoundException"
        case resourceShareInvitationAlreadyAcceptedException = "ResourceShareInvitationAlreadyAcceptedException"
        case resourceShareInvitationAlreadyRejectedException = "ResourceShareInvitationAlreadyRejectedException"
        case resourceShareInvitationArnNotFoundException = "ResourceShareInvitationArnNotFoundException"
        case resourceShareInvitationExpiredException = "ResourceShareInvitationExpiredException"
        case resourceShareLimitExceededException = "ResourceShareLimitExceededException"
        case serverInternalException = "ServerInternalException"
        case serviceUnavailableException = "ServiceUnavailableException"
        case tagLimitExceededException = "TagLimitExceededException"
        case tagPolicyViolationException = "TagPolicyViolationException"
        case unknownResourceException = "UnknownResourceException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize RAM
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

    /// A client token input parameter was reused with an operation, but at least one of the other input parameters is different from the previous call to the operation.
    public static var idempotentParameterMismatchException: Self { .init(.idempotentParameterMismatchException) }
    /// A client token is not valid.
    public static var invalidClientTokenException: Self { .init(.invalidClientTokenException) }
    /// The specified value for MaxResults is not valid.
    public static var invalidMaxResultsException: Self { .init(.invalidMaxResultsException) }
    /// The specified value for NextToken is not valid.
    public static var invalidNextTokenException: Self { .init(.invalidNextTokenException) }
    /// A parameter is not valid.
    public static var invalidParameterException: Self { .init(.invalidParameterException) }
    /// The specified resource type is not valid.
    public static var invalidResourceTypeException: Self { .init(.invalidResourceTypeException) }
    /// The requested state transition is not valid.
    public static var invalidStateTransitionException: Self { .init(.invalidStateTransitionException) }
    /// The format of an Amazon Resource Name (ARN) is not valid.
    public static var malformedArnException: Self { .init(.malformedArnException) }
    /// A required input parameter is missing.
    public static var missingRequiredParameterException: Self { .init(.missingRequiredParameterException) }
    /// The requested operation is not permitted.
    public static var operationNotPermittedException: Self { .init(.operationNotPermittedException) }
    /// An Amazon Resource Name (ARN) was not found.
    public static var resourceArnNotFoundException: Self { .init(.resourceArnNotFoundException) }
    /// The invitation was already accepted.
    public static var resourceShareInvitationAlreadyAcceptedException: Self { .init(.resourceShareInvitationAlreadyAcceptedException) }
    /// The invitation was already rejected.
    public static var resourceShareInvitationAlreadyRejectedException: Self { .init(.resourceShareInvitationAlreadyRejectedException) }
    /// The Amazon Resource Name (ARN) for an invitation was not found.
    public static var resourceShareInvitationArnNotFoundException: Self { .init(.resourceShareInvitationArnNotFoundException) }
    /// The invitation is expired.
    public static var resourceShareInvitationExpiredException: Self { .init(.resourceShareInvitationExpiredException) }
    /// The requested resource share exceeds the limit for your account.
    public static var resourceShareLimitExceededException: Self { .init(.resourceShareLimitExceededException) }
    /// The service could not respond to the request due to an internal problem.
    public static var serverInternalException: Self { .init(.serverInternalException) }
    /// The service is not available.
    public static var serviceUnavailableException: Self { .init(.serviceUnavailableException) }
    /// The requested tags exceed the limit for your account.
    public static var tagLimitExceededException: Self { .init(.tagLimitExceededException) }
    /// The specified tag is a reserved word and cannot be used.
    public static var tagPolicyViolationException: Self { .init(.tagPolicyViolationException) }
    /// A specified resource was not found.
    public static var unknownResourceException: Self { .init(.unknownResourceException) }
}

extension RAMErrorType: Equatable {
    public static func == (lhs: RAMErrorType, rhs: RAMErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension RAMErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
