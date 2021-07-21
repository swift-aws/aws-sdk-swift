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

/// Error enum for AlexaForBusiness
public struct AlexaForBusinessErrorType: AWSErrorType {
    enum Code: String {
        case alreadyExistsException = "AlreadyExistsException"
        case concurrentModificationException = "ConcurrentModificationException"
        case deviceNotRegisteredException = "DeviceNotRegisteredException"
        case invalidCertificateAuthorityException = "InvalidCertificateAuthorityException"
        case invalidDeviceException = "InvalidDeviceException"
        case invalidSecretsManagerResourceException = "InvalidSecretsManagerResourceException"
        case invalidServiceLinkedRoleStateException = "InvalidServiceLinkedRoleStateException"
        case invalidUserStatusException = "InvalidUserStatusException"
        case limitExceededException = "LimitExceededException"
        case nameInUseException = "NameInUseException"
        case notFoundException = "NotFoundException"
        case resourceAssociatedException = "ResourceAssociatedException"
        case resourceInUseException = "ResourceInUseException"
        case skillNotLinkedException = "SkillNotLinkedException"
        case unauthorizedException = "UnauthorizedException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize AlexaForBusiness
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

    /// The resource being created already exists.
    public static var alreadyExistsException: Self { .init(.alreadyExistsException) }
    /// There is a concurrent modification of resources.
    public static var concurrentModificationException: Self { .init(.concurrentModificationException) }
    /// The request failed because this device is no longer registered and therefore no longer managed by this account.
    public static var deviceNotRegisteredException: Self { .init(.deviceNotRegisteredException) }
    /// The Certificate Authority can't issue or revoke a certificate.
    public static var invalidCertificateAuthorityException: Self { .init(.invalidCertificateAuthorityException) }
    /// The device is in an invalid state.
    public static var invalidDeviceException: Self { .init(.invalidDeviceException) }
    /// A password in SecretsManager is in an invalid state.
    public static var invalidSecretsManagerResourceException: Self { .init(.invalidSecretsManagerResourceException) }
    /// The service linked role is locked for deletion.
    public static var invalidServiceLinkedRoleStateException: Self { .init(.invalidServiceLinkedRoleStateException) }
    /// The attempt to update a user is invalid due to the user's current status.
    public static var invalidUserStatusException: Self { .init(.invalidUserStatusException) }
    /// You are performing an action that would put you beyond your account's limits.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// The name sent in the request is already in use.
    public static var nameInUseException: Self { .init(.nameInUseException) }
    /// The resource is not found.
    public static var notFoundException: Self { .init(.notFoundException) }
    /// Another resource is associated with the resource in the request.
    public static var resourceAssociatedException: Self { .init(.resourceAssociatedException) }
    /// The resource in the request is already in use.
    public static var resourceInUseException: Self { .init(.resourceInUseException) }
    /// The skill must be linked to a third-party account.
    public static var skillNotLinkedException: Self { .init(.skillNotLinkedException) }
    /// The caller has no permissions to operate on the resource involved in the API call.
    public static var unauthorizedException: Self { .init(.unauthorizedException) }
}

extension AlexaForBusinessErrorType: Equatable {
    public static func == (lhs: AlexaForBusinessErrorType, rhs: AlexaForBusinessErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension AlexaForBusinessErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
