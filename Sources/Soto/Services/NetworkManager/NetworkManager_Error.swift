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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/soto/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import SotoCore

/// Error enum for NetworkManager
public struct NetworkManagerErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case conflictException = "ConflictException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceQuotaExceededException = "ServiceQuotaExceededException"
        case throttlingException = "ThrottlingException"
        case validationException = "ValidationException"
    }

    private var error: Code
    public var message: String?

    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.message = message
    }

    internal init(_ error: Code) {
        self.error = error
        self.message = nil
    }

    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    public static var conflictException: Self { .init(.conflictException) }
    public static var internalServerException: Self { .init(.internalServerException) }
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    public static var throttlingException: Self { .init(.throttlingException) }
    public static var validationException: Self { .init(.validationException) }
}

extension NetworkManagerErrorType: Equatable {
    public static func == (lhs: NetworkManagerErrorType, rhs: NetworkManagerErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension NetworkManagerErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
