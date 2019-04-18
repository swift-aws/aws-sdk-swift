// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for MarketplaceMetering
public enum MarketplaceMeteringErrorType: AWSErrorType {
    case internalServiceErrorException(message: String?)
    case invalidProductCodeException(message: String?)
    case invalidUsageDimensionException(message: String?)
    case invalidEndpointRegionException(message: String?)
    case timestampOutOfBoundsException(message: String?)
    case duplicateRequestException(message: String?)
    case throttlingException(message: String?)
    case invalidRegionException(message: String?)
    case invalidPublicKeyVersionException(message: String?)
    case platformNotSupportedException(message: String?)
    case customerNotEntitledException(message: String?)
    case disabledApiException(message: String?)
    case invalidTokenException(message: String?)
    case expiredTokenException(message: String?)
    case invalidCustomerIdentifierException(message: String?)
}

extension MarketplaceMeteringErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InternalServiceErrorException":
            self = .internalServiceErrorException(message: message)
        case "InvalidProductCodeException":
            self = .invalidProductCodeException(message: message)
        case "InvalidUsageDimensionException":
            self = .invalidUsageDimensionException(message: message)
        case "InvalidEndpointRegionException":
            self = .invalidEndpointRegionException(message: message)
        case "TimestampOutOfBoundsException":
            self = .timestampOutOfBoundsException(message: message)
        case "DuplicateRequestException":
            self = .duplicateRequestException(message: message)
        case "ThrottlingException":
            self = .throttlingException(message: message)
        case "InvalidRegionException":
            self = .invalidRegionException(message: message)
        case "InvalidPublicKeyVersionException":
            self = .invalidPublicKeyVersionException(message: message)
        case "PlatformNotSupportedException":
            self = .platformNotSupportedException(message: message)
        case "CustomerNotEntitledException":
            self = .customerNotEntitledException(message: message)
        case "DisabledApiException":
            self = .disabledApiException(message: message)
        case "InvalidTokenException":
            self = .invalidTokenException(message: message)
        case "ExpiredTokenException":
            self = .expiredTokenException(message: message)
        case "InvalidCustomerIdentifierException":
            self = .invalidCustomerIdentifierException(message: message)
        default:
            return nil
        }
    }
}