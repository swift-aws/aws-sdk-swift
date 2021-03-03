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

/// Error enum for DirectoryService
public struct DirectoryServiceErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case authenticationFailedException = "AuthenticationFailedException"
        case certificateAlreadyExistsException = "CertificateAlreadyExistsException"
        case certificateDoesNotExistException = "CertificateDoesNotExistException"
        case certificateInUseException = "CertificateInUseException"
        case certificateLimitExceededException = "CertificateLimitExceededException"
        case clientException = "ClientException"
        case directoryAlreadyInRegionException = "DirectoryAlreadyInRegionException"
        case directoryAlreadySharedException = "DirectoryAlreadySharedException"
        case directoryDoesNotExistException = "DirectoryDoesNotExistException"
        case directoryLimitExceededException = "DirectoryLimitExceededException"
        case directoryNotSharedException = "DirectoryNotSharedException"
        case directoryUnavailableException = "DirectoryUnavailableException"
        case domainControllerLimitExceededException = "DomainControllerLimitExceededException"
        case entityAlreadyExistsException = "EntityAlreadyExistsException"
        case entityDoesNotExistException = "EntityDoesNotExistException"
        case insufficientPermissionsException = "InsufficientPermissionsException"
        case invalidCertificateException = "InvalidCertificateException"
        case invalidClientAuthStatusException = "InvalidClientAuthStatusException"
        case invalidLDAPSStatusException = "InvalidLDAPSStatusException"
        case invalidNextTokenException = "InvalidNextTokenException"
        case invalidParameterException = "InvalidParameterException"
        case invalidPasswordException = "InvalidPasswordException"
        case invalidTargetException = "InvalidTargetException"
        case ipRouteLimitExceededException = "IpRouteLimitExceededException"
        case noAvailableCertificateException = "NoAvailableCertificateException"
        case organizationsException = "OrganizationsException"
        case regionLimitExceededException = "RegionLimitExceededException"
        case serviceException = "ServiceException"
        case shareLimitExceededException = "ShareLimitExceededException"
        case snapshotLimitExceededException = "SnapshotLimitExceededException"
        case tagLimitExceededException = "TagLimitExceededException"
        case unsupportedOperationException = "UnsupportedOperationException"
        case userDoesNotExistException = "UserDoesNotExistException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize DirectoryService
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

    /// Client authentication is not available in this region at this time.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// An authentication error occurred.
    public static var authenticationFailedException: Self { .init(.authenticationFailedException) }
    /// The certificate has already been registered into the system.
    public static var certificateAlreadyExistsException: Self { .init(.certificateAlreadyExistsException) }
    /// The certificate is not present in the system for describe or deregister activities.
    public static var certificateDoesNotExistException: Self { .init(.certificateDoesNotExistException) }
    /// The certificate is being used for the LDAP security connection and cannot be removed without disabling LDAP security.
    public static var certificateInUseException: Self { .init(.certificateInUseException) }
    /// The certificate could not be added because the certificate limit has been reached.
    public static var certificateLimitExceededException: Self { .init(.certificateLimitExceededException) }
    /// A client exception has occurred.
    public static var clientException: Self { .init(.clientException) }
    /// The Region you specified is the same Region where the AWS Managed Microsoft AD directory was created. Specify a different Region and try again.
    public static var directoryAlreadyInRegionException: Self { .init(.directoryAlreadyInRegionException) }
    /// The specified directory has already been shared with this AWS account.
    public static var directoryAlreadySharedException: Self { .init(.directoryAlreadySharedException) }
    /// The specified directory does not exist in the system.
    public static var directoryDoesNotExistException: Self { .init(.directoryDoesNotExistException) }
    /// The maximum number of directories in the region has been reached. You can use the GetDirectoryLimits operation to determine your directory limits in the region.
    public static var directoryLimitExceededException: Self { .init(.directoryLimitExceededException) }
    /// The specified directory has not been shared with this AWS account.
    public static var directoryNotSharedException: Self { .init(.directoryNotSharedException) }
    /// The specified directory is unavailable or could not be found.
    public static var directoryUnavailableException: Self { .init(.directoryUnavailableException) }
    /// The maximum allowed number of domain controllers per directory was exceeded. The default limit per directory is 20 domain controllers.
    public static var domainControllerLimitExceededException: Self { .init(.domainControllerLimitExceededException) }
    /// The specified entity already exists.
    public static var entityAlreadyExistsException: Self { .init(.entityAlreadyExistsException) }
    /// The specified entity could not be found.
    public static var entityDoesNotExistException: Self { .init(.entityDoesNotExistException) }
    /// The account does not have sufficient permission to perform the operation.
    public static var insufficientPermissionsException: Self { .init(.insufficientPermissionsException) }
    /// The certificate PEM that was provided has incorrect encoding.
    public static var invalidCertificateException: Self { .init(.invalidCertificateException) }
    /// Client authentication is already enabled.
    public static var invalidClientAuthStatusException: Self { .init(.invalidClientAuthStatusException) }
    /// The LDAP activities could not be performed because they are limited by the LDAPS status.
    public static var invalidLDAPSStatusException: Self { .init(.invalidLDAPSStatusException) }
    /// The NextToken value is not valid.
    public static var invalidNextTokenException: Self { .init(.invalidNextTokenException) }
    /// One or more parameters are not valid.
    public static var invalidParameterException: Self { .init(.invalidParameterException) }
    /// The new password provided by the user does not meet the password complexity requirements defined in your directory.
    public static var invalidPasswordException: Self { .init(.invalidPasswordException) }
    /// The specified shared target is not valid.
    public static var invalidTargetException: Self { .init(.invalidTargetException) }
    /// The maximum allowed number of IP addresses was exceeded. The default limit is 100 IP address blocks.
    public static var ipRouteLimitExceededException: Self { .init(.ipRouteLimitExceededException) }
    /// Client authentication setup could not be completed because at least one valid certificate must be registered in the system.
    public static var noAvailableCertificateException: Self { .init(.noAvailableCertificateException) }
    /// Exception encountered while trying to access your AWS organization.
    public static var organizationsException: Self { .init(.organizationsException) }
    /// You have reached the limit for maximum number of simultaneous Region replications per directory.
    public static var regionLimitExceededException: Self { .init(.regionLimitExceededException) }
    /// An exception has occurred in AWS Directory Service.
    public static var serviceException: Self { .init(.serviceException) }
    /// The maximum number of AWS accounts that you can share with this directory has been reached.
    public static var shareLimitExceededException: Self { .init(.shareLimitExceededException) }
    /// The maximum number of manual snapshots for the directory has been reached. You can use the GetSnapshotLimits operation to determine the snapshot limits for a directory.
    public static var snapshotLimitExceededException: Self { .init(.snapshotLimitExceededException) }
    /// The maximum allowed number of tags was exceeded.
    public static var tagLimitExceededException: Self { .init(.tagLimitExceededException) }
    /// The operation is not supported.
    public static var unsupportedOperationException: Self { .init(.unsupportedOperationException) }
    /// The user provided a username that does not exist in your directory.
    public static var userDoesNotExistException: Self { .init(.userDoesNotExistException) }
}

extension DirectoryServiceErrorType: Equatable {
    public static func == (lhs: DirectoryServiceErrorType, rhs: DirectoryServiceErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension DirectoryServiceErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
