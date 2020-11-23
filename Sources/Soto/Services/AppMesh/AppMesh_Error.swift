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

/// Error enum for AppMesh
public struct AppMeshErrorType: AWSErrorType {
    enum Code: String {
        case badRequestException = "BadRequestException"
        case conflictException = "ConflictException"
        case forbiddenException = "ForbiddenException"
        case internalServerErrorException = "InternalServerErrorException"
        case limitExceededException = "LimitExceededException"
        case notFoundException = "NotFoundException"
        case resourceInUseException = "ResourceInUseException"
        case serviceUnavailableException = "ServiceUnavailableException"
        case tooManyRequestsException = "TooManyRequestsException"
        case tooManyTagsException = "TooManyTagsException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize AppMesh
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

    /// The request syntax was malformed. Check your request syntax and try again.
    public static var badRequestException: Self { .init(.badRequestException) }
    /// The request contains a client token that was used for a previous update resource call with different specifications. Try the request again with a new client token.
    public static var conflictException: Self { .init(.conflictException) }
    /// You don't have permissions to perform this action.
    public static var forbiddenException: Self { .init(.forbiddenException) }
    /// The request processing has failed because of an unknown error, exception, or failure.
    public static var internalServerErrorException: Self { .init(.internalServerErrorException) }
    /// You have exceeded a service limit for your account. For more information, see Service Limits in the AWS App Mesh User Guide.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// The specified resource doesn't exist. Check your request syntax and try again.
    public static var notFoundException: Self { .init(.notFoundException) }
    /// You can't delete the specified resource because it's in use or required by another resource.
    public static var resourceInUseException: Self { .init(.resourceInUseException) }
    /// The request has failed due to a temporary failure of the service.
    public static var serviceUnavailableException: Self { .init(.serviceUnavailableException) }
    /// The maximum request rate permitted by the App Mesh APIs has been exceeded for your account. For best results, use an increasing or variable sleep interval between requests.
    public static var tooManyRequestsException: Self { .init(.tooManyRequestsException) }
    /// The request exceeds the maximum allowed number of tags allowed per resource. The current limit is 50 user tags per resource. You must reduce the number of tags in the request. None of the tags in this request were applied.
    public static var tooManyTagsException: Self { .init(.tooManyTagsException) }
}

extension AppMeshErrorType: Equatable {
    public static func == (lhs: AppMeshErrorType, rhs: AppMeshErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension AppMeshErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
