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

/// Error enum for CostExplorer
public struct CostExplorerErrorType: AWSErrorType {
    enum Code: String {
        case billExpirationException = "BillExpirationException"
        case dataUnavailableException = "DataUnavailableException"
        case invalidNextTokenException = "InvalidNextTokenException"
        case limitExceededException = "LimitExceededException"
        case requestChangedException = "RequestChangedException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceQuotaExceededException = "ServiceQuotaExceededException"
        case unknownMonitorException = "UnknownMonitorException"
        case unknownSubscriptionException = "UnknownSubscriptionException"
        case unresolvableUsageUnitException = "UnresolvableUsageUnitException"
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

    public static var billExpirationException: Self { .init(.billExpirationException) }
    public static var dataUnavailableException: Self { .init(.dataUnavailableException) }
    public static var invalidNextTokenException: Self { .init(.invalidNextTokenException) }
    public static var limitExceededException: Self { .init(.limitExceededException) }
    public static var requestChangedException: Self { .init(.requestChangedException) }
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    public static var unknownMonitorException: Self { .init(.unknownMonitorException) }
    public static var unknownSubscriptionException: Self { .init(.unknownSubscriptionException) }
    public static var unresolvableUsageUnitException: Self { .init(.unresolvableUsageUnitException) }
}

extension CostExplorerErrorType: Equatable {
    public static func == (lhs: CostExplorerErrorType, rhs: CostExplorerErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension CostExplorerErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
