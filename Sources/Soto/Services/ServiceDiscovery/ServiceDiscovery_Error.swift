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

/// Error enum for ServiceDiscovery
public struct ServiceDiscoveryErrorType: AWSErrorType {
    enum Code: String {
        case customHealthNotFound = "CustomHealthNotFound"
        case duplicateRequest = "DuplicateRequest"
        case instanceNotFound = "InstanceNotFound"
        case invalidInput = "InvalidInput"
        case namespaceAlreadyExists = "NamespaceAlreadyExists"
        case namespaceNotFound = "NamespaceNotFound"
        case operationNotFound = "OperationNotFound"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceInUse = "ResourceInUse"
        case resourceLimitExceeded = "ResourceLimitExceeded"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceAlreadyExists = "ServiceAlreadyExists"
        case serviceNotFound = "ServiceNotFound"
        case tooManyTagsException = "TooManyTagsException"
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

    public static var customHealthNotFound: Self { .init(.customHealthNotFound) }
    public static var duplicateRequest: Self { .init(.duplicateRequest) }
    public static var instanceNotFound: Self { .init(.instanceNotFound) }
    public static var invalidInput: Self { .init(.invalidInput) }
    public static var namespaceAlreadyExists: Self { .init(.namespaceAlreadyExists) }
    public static var namespaceNotFound: Self { .init(.namespaceNotFound) }
    public static var operationNotFound: Self { .init(.operationNotFound) }
    public static var requestLimitExceeded: Self { .init(.requestLimitExceeded) }
    public static var resourceInUse: Self { .init(.resourceInUse) }
    public static var resourceLimitExceeded: Self { .init(.resourceLimitExceeded) }
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    public static var serviceAlreadyExists: Self { .init(.serviceAlreadyExists) }
    public static var serviceNotFound: Self { .init(.serviceNotFound) }
    public static var tooManyTagsException: Self { .init(.tooManyTagsException) }
}

extension ServiceDiscoveryErrorType: Equatable {
    public static func == (lhs: ServiceDiscoveryErrorType, rhs: ServiceDiscoveryErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension ServiceDiscoveryErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
