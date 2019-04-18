// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for IoT
public enum IoTErrorType: AWSErrorType {
    case invalidRequestException(message: String?)
    case resourceAlreadyExistsException(message: String?)
    case throttlingException(message: String?)
    case internalFailureException(message: String?)
    case resourceNotFoundException(message: String?)
    case internalException(message: String?)
    case serviceUnavailableException(message: String?)
    case versionConflictException(message: String?)
    case deleteConflictException(message: String?)
    case unauthorizedException(message: String?)
    case invalidResponseException(message: String?)
    case limitExceededException(message: String?)
    case certificateStateException(message: String?)
    case transferConflictException(message: String?)
    case transferAlreadyCompletedException(message: String?)
    case invalidStateTransitionException(message: String?)
    case malformedPolicyException(message: String?)
    case versionsLimitExceededException(message: String?)
    case notConfiguredException(message: String?)
    case conflictingResourceUpdateException(message: String?)
    case invalidQueryException(message: String?)
    case indexNotReadyException(message: String?)
    case sqlParseException(message: String?)
    case certificateValidationException(message: String?)
    case certificateConflictException(message: String?)
    case registrationCodeValidationException(message: String?)
    case resourceRegistrationFailureException(message: String?)
}

extension IoTErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InvalidRequestException":
            self = .invalidRequestException(message: message)
        case "ResourceAlreadyExistsException":
            self = .resourceAlreadyExistsException(message: message)
        case "ThrottlingException":
            self = .throttlingException(message: message)
        case "InternalFailureException":
            self = .internalFailureException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "InternalException":
            self = .internalException(message: message)
        case "ServiceUnavailableException":
            self = .serviceUnavailableException(message: message)
        case "VersionConflictException":
            self = .versionConflictException(message: message)
        case "DeleteConflictException":
            self = .deleteConflictException(message: message)
        case "UnauthorizedException":
            self = .unauthorizedException(message: message)
        case "InvalidResponseException":
            self = .invalidResponseException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "CertificateStateException":
            self = .certificateStateException(message: message)
        case "TransferConflictException":
            self = .transferConflictException(message: message)
        case "TransferAlreadyCompletedException":
            self = .transferAlreadyCompletedException(message: message)
        case "InvalidStateTransitionException":
            self = .invalidStateTransitionException(message: message)
        case "MalformedPolicyException":
            self = .malformedPolicyException(message: message)
        case "VersionsLimitExceededException":
            self = .versionsLimitExceededException(message: message)
        case "NotConfiguredException":
            self = .notConfiguredException(message: message)
        case "ConflictingResourceUpdateException":
            self = .conflictingResourceUpdateException(message: message)
        case "InvalidQueryException":
            self = .invalidQueryException(message: message)
        case "IndexNotReadyException":
            self = .indexNotReadyException(message: message)
        case "SqlParseException":
            self = .sqlParseException(message: message)
        case "CertificateValidationException":
            self = .certificateValidationException(message: message)
        case "CertificateConflictException":
            self = .certificateConflictException(message: message)
        case "RegistrationCodeValidationException":
            self = .registrationCodeValidationException(message: message)
        case "ResourceRegistrationFailureException":
            self = .resourceRegistrationFailureException(message: message)
        default:
            return nil
        }
    }
}