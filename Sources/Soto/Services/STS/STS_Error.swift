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

/// Error enum for STS
public struct STSErrorType: AWSErrorType {
    enum Code: String {
        case expiredTokenException = "ExpiredTokenException"
        case iDPCommunicationErrorException = "IDPCommunicationError"
        case iDPRejectedClaimException = "IDPRejectedClaim"
        case invalidAuthorizationMessageException = "InvalidAuthorizationMessageException"
        case invalidIdentityTokenException = "InvalidIdentityToken"
        case malformedPolicyDocumentException = "MalformedPolicyDocument"
        case packedPolicyTooLargeException = "PackedPolicyTooLarge"
        case regionDisabledException = "RegionDisabledException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize STS
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

    /// The web identity token that was passed is expired or is not valid. Get a new identity token from the identity provider and then retry the request.
    public static var expiredTokenException: Self { .init(.expiredTokenException) }
    /// The request could not be fulfilled because the identity provider (IDP) that was asked to verify the incoming identity token could not be reached. This is often a transient error caused by network conditions. Retry the request a limited number of times so that you don't exceed the request rate. If the error persists, the identity provider might be down or not responding.
    public static var iDPCommunicationErrorException: Self { .init(.iDPCommunicationErrorException) }
    /// The identity provider (IdP) reported that authentication failed. This might be because the claim is invalid. If this error is returned for the AssumeRoleWithWebIdentity operation, it can also mean that the claim has expired or has been explicitly revoked.
    public static var iDPRejectedClaimException: Self { .init(.iDPRejectedClaimException) }
    /// The error returned if the message passed to DecodeAuthorizationMessage was invalid. This can happen if the token contains invalid characters, such as linebreaks.
    public static var invalidAuthorizationMessageException: Self { .init(.invalidAuthorizationMessageException) }
    /// The web identity token that was passed could not be validated by AWS. Get a new identity token from the identity provider and then retry the request.
    public static var invalidIdentityTokenException: Self { .init(.invalidIdentityTokenException) }
    /// The request was rejected because the policy document was malformed. The error message describes the specific error.
    public static var malformedPolicyDocumentException: Self { .init(.malformedPolicyDocumentException) }
    /// The request was rejected because the total packed size of the session policies and session tags combined was too large. An AWS conversion compresses the session policy document, session policy ARNs, and session tags into a packed binary format that has a separate limit. The error message indicates by percentage how close the policies and tags are to the upper size limit. For more information, see Passing Session Tags in STS in the IAM User Guide. You could receive this error even though you meet other defined session policy and session tag limits. For more information, see IAM and STS Entity Character Limits in the IAM User Guide.
    public static var packedPolicyTooLargeException: Self { .init(.packedPolicyTooLargeException) }
    /// STS is not activated in the requested region for the account that is being asked to generate credentials. The account administrator must use the IAM console to activate STS in that region. For more information, see Activating and Deactivating AWS STS in an AWS Region in the IAM User Guide.
    public static var regionDisabledException: Self { .init(.regionDisabledException) }
}

extension STSErrorType: Equatable {
    public static func == (lhs: STSErrorType, rhs: STSErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension STSErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
