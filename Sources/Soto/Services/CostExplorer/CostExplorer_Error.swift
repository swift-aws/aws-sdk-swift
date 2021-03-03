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

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize CostExplorer
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

    /// The requested report expired. Update the date interval and try again.
    public static var billExpirationException: Self { .init(.billExpirationException) }
    /// The requested data is unavailable.
    public static var dataUnavailableException: Self { .init(.dataUnavailableException) }
    /// The pagination token is invalid. Try again without a pagination token.
    public static var invalidNextTokenException: Self { .init(.invalidNextTokenException) }
    /// You made too many calls in a short period of time. Try again later.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// Your request parameters changed between pages. Try again with the old parameters or without a pagination token.
    public static var requestChangedException: Self { .init(.requestChangedException) }
    ///  The specified ARN in the request doesn't exist.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    ///  You've reached the limit on the number of resources you can create, or exceeded the size of an individual resource.
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    /// The cost anomaly monitor does not exist for the account.
    public static var unknownMonitorException: Self { .init(.unknownMonitorException) }
    /// The cost anomaly subscription does not exist for the account.
    public static var unknownSubscriptionException: Self { .init(.unknownSubscriptionException) }
    /// Cost Explorer was unable to identify the usage unit. Provide UsageType/UsageTypeGroup filter selections that contain matching units, for example: hours.
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
