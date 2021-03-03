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

/// Error enum for IAM
public struct IAMErrorType: AWSErrorType {
    enum Code: String {
        case concurrentModificationException = "ConcurrentModification"
        case credentialReportExpiredException = "ReportExpired"
        case credentialReportNotPresentException = "ReportNotPresent"
        case credentialReportNotReadyException = "ReportInProgress"
        case deleteConflictException = "DeleteConflict"
        case duplicateCertificateException = "DuplicateCertificate"
        case duplicateSSHPublicKeyException = "DuplicateSSHPublicKey"
        case entityAlreadyExistsException = "EntityAlreadyExists"
        case entityTemporarilyUnmodifiableException = "EntityTemporarilyUnmodifiable"
        case invalidAuthenticationCodeException = "InvalidAuthenticationCode"
        case invalidCertificateException = "InvalidCertificate"
        case invalidInputException = "InvalidInput"
        case invalidPublicKeyException = "InvalidPublicKey"
        case invalidUserTypeException = "InvalidUserType"
        case keyPairMismatchException = "KeyPairMismatch"
        case limitExceededException = "LimitExceeded"
        case malformedCertificateException = "MalformedCertificate"
        case malformedPolicyDocumentException = "MalformedPolicyDocument"
        case noSuchEntityException = "NoSuchEntity"
        case passwordPolicyViolationException = "PasswordPolicyViolation"
        case policyEvaluationException = "PolicyEvaluation"
        case policyNotAttachableException = "PolicyNotAttachable"
        case reportGenerationLimitExceededException = "ReportGenerationLimitExceeded"
        case serviceFailureException = "ServiceFailure"
        case serviceNotSupportedException = "NotSupportedService"
        case unmodifiableEntityException = "UnmodifiableEntity"
        case unrecognizedPublicKeyEncodingException = "UnrecognizedPublicKeyEncoding"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize IAM
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

    /// The request was rejected because multiple requests to change this object were submitted simultaneously. Wait a few minutes and submit your request again.
    public static var concurrentModificationException: Self { .init(.concurrentModificationException) }
    /// The request was rejected because the most recent credential report has expired. To generate a new credential report, use GenerateCredentialReport. For more information about credential report expiration, see Getting Credential Reports in the IAM User Guide.
    public static var credentialReportExpiredException: Self { .init(.credentialReportExpiredException) }
    /// The request was rejected because the credential report does not exist. To generate a credential report, use GenerateCredentialReport.
    public static var credentialReportNotPresentException: Self { .init(.credentialReportNotPresentException) }
    /// The request was rejected because the credential report is still being generated.
    public static var credentialReportNotReadyException: Self { .init(.credentialReportNotReadyException) }
    /// The request was rejected because it attempted to delete a resource that has attached subordinate entities. The error message describes these entities.
    public static var deleteConflictException: Self { .init(.deleteConflictException) }
    /// The request was rejected because the same certificate is associated with an IAM user in the account.
    public static var duplicateCertificateException: Self { .init(.duplicateCertificateException) }
    /// The request was rejected because the SSH public key is already associated with the specified IAM user.
    public static var duplicateSSHPublicKeyException: Self { .init(.duplicateSSHPublicKeyException) }
    /// The request was rejected because it attempted to create a resource that already exists.
    public static var entityAlreadyExistsException: Self { .init(.entityAlreadyExistsException) }
    /// The request was rejected because it referenced an entity that is temporarily unmodifiable, such as a user name that was deleted and then recreated. The error indicates that the request is likely to succeed if you try again after waiting several minutes. The error message describes the entity.
    public static var entityTemporarilyUnmodifiableException: Self { .init(.entityTemporarilyUnmodifiableException) }
    /// The request was rejected because the authentication code was not recognized. The error message describes the specific error.
    public static var invalidAuthenticationCodeException: Self { .init(.invalidAuthenticationCodeException) }
    /// The request was rejected because the certificate is invalid.
    public static var invalidCertificateException: Self { .init(.invalidCertificateException) }
    /// The request was rejected because an invalid or out-of-range value was supplied for an input parameter.
    public static var invalidInputException: Self { .init(.invalidInputException) }
    /// The request was rejected because the public key is malformed or otherwise invalid.
    public static var invalidPublicKeyException: Self { .init(.invalidPublicKeyException) }
    /// The request was rejected because the type of user for the transaction was incorrect.
    public static var invalidUserTypeException: Self { .init(.invalidUserTypeException) }
    /// The request was rejected because the public key certificate and the private key do not match.
    public static var keyPairMismatchException: Self { .init(.keyPairMismatchException) }
    /// The request was rejected because it attempted to create resources beyond the current AWS account limitations. The error message describes the limit exceeded.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// The request was rejected because the certificate was malformed or expired. The error message describes the specific error.
    public static var malformedCertificateException: Self { .init(.malformedCertificateException) }
    /// The request was rejected because the policy document was malformed. The error message describes the specific error.
    public static var malformedPolicyDocumentException: Self { .init(.malformedPolicyDocumentException) }
    /// The request was rejected because it referenced a resource entity that does not exist. The error message describes the resource.
    public static var noSuchEntityException: Self { .init(.noSuchEntityException) }
    /// The request was rejected because the provided password did not meet the requirements imposed by the account password policy.
    public static var passwordPolicyViolationException: Self { .init(.passwordPolicyViolationException) }
    /// The request failed because a provided policy could not be successfully evaluated. An additional detailed message indicates the source of the failure.
    public static var policyEvaluationException: Self { .init(.policyEvaluationException) }
    /// The request failed because AWS service role policies can only be attached to the service-linked role for that service.
    public static var policyNotAttachableException: Self { .init(.policyNotAttachableException) }
    /// The request failed because the maximum number of concurrent requests for this account are already running.
    public static var reportGenerationLimitExceededException: Self { .init(.reportGenerationLimitExceededException) }
    /// The request processing has failed because of an unknown error, exception or failure.
    public static var serviceFailureException: Self { .init(.serviceFailureException) }
    /// The specified service does not support service-specific credentials.
    public static var serviceNotSupportedException: Self { .init(.serviceNotSupportedException) }
    /// The request was rejected because only the service that depends on the service-linked role can modify or delete the role on your behalf. The error message includes the name of the service that depends on this service-linked role. You must request the change through that service.
    public static var unmodifiableEntityException: Self { .init(.unmodifiableEntityException) }
    /// The request was rejected because the public key encoding format is unsupported or unrecognized.
    public static var unrecognizedPublicKeyEncodingException: Self { .init(.unrecognizedPublicKeyEncodingException) }
}

extension IAMErrorType: Equatable {
    public static func == (lhs: IAMErrorType, rhs: IAMErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension IAMErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
