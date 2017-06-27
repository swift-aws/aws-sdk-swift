// THIS FILE IS AUTOMATICALLY GENERATED. DO NOT EDIT.
/**
The MIT License (MIT)

Copyright (c) 2017 Yuki Takei(noppoMan)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

*/

import AWSSDKSwiftCore

/// Error enum for Importexport
public enum ImportexportError: AWSErrorType {
    case missingParameterException(message: String?)
    case invalidParameterException(message: String?)
    case invalidAccessKeyIdException(message: String?)
    case invalidAddressException(message: String?)
    case invalidManifestFieldException(message: String?)
    case missingManifestFieldException(message: String?)
    case noSuchBucketException(message: String?)
    case missingCustomsException(message: String?)
    case invalidCustomsException(message: String?)
    case invalidFileSystemException(message: String?)
    case multipleRegionsException(message: String?)
    case bucketPermissionException(message: String?)
    case malformedManifestException(message: String?)
    case createJobQuotaExceededException(message: String?)
    case invalidJobIdException(message: String?)
    case invalidVersionException(message: String?)
    case expiredJobIdException(message: String?)
    case canceledJobIdException(message: String?)
    case unableToUpdateJobIdException(message: String?)
    case unableToCancelJobIdException(message: String?)
}

extension ImportexportError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = errorCode.substring(from: errorCode.index(index, offsetBy: 1))
        }
        switch errorCode {
        case "MissingParameterException":
            self = .missingParameterException(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "InvalidAccessKeyIdException":
            self = .invalidAccessKeyIdException(message: message)
        case "InvalidAddressException":
            self = .invalidAddressException(message: message)
        case "InvalidManifestFieldException":
            self = .invalidManifestFieldException(message: message)
        case "MissingManifestFieldException":
            self = .missingManifestFieldException(message: message)
        case "NoSuchBucketException":
            self = .noSuchBucketException(message: message)
        case "MissingCustomsException":
            self = .missingCustomsException(message: message)
        case "InvalidCustomsException":
            self = .invalidCustomsException(message: message)
        case "InvalidFileSystemException":
            self = .invalidFileSystemException(message: message)
        case "MultipleRegionsException":
            self = .multipleRegionsException(message: message)
        case "BucketPermissionException":
            self = .bucketPermissionException(message: message)
        case "MalformedManifestException":
            self = .malformedManifestException(message: message)
        case "CreateJobQuotaExceededException":
            self = .createJobQuotaExceededException(message: message)
        case "InvalidJobIdException":
            self = .invalidJobIdException(message: message)
        case "InvalidVersionException":
            self = .invalidVersionException(message: message)
        case "ExpiredJobIdException":
            self = .expiredJobIdException(message: message)
        case "CanceledJobIdException":
            self = .canceledJobIdException(message: message)
        case "UnableToUpdateJobIdException":
            self = .unableToUpdateJobIdException(message: message)
        case "UnableToCancelJobIdException":
            self = .unableToCancelJobIdException(message: message)
        default:
            return nil
        }
    }
}