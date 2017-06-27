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

/// Error enum for WafRegional
public enum WafRegionalError: AWSErrorType {
    case wAFInternalErrorException(message: String?)
    case wAFInvalidAccountException(message: String?)
    case wAFStaleDataException(message: String?)
    case wAFDisallowedNameException(message: String?)
    case wAFInvalidParameterException(message: String?)
    case wAFLimitsExceededException(message: String?)
    case wAFInvalidOperationException(message: String?)
    case wAFNonexistentContainerException(message: String?)
    case wAFNonexistentItemException(message: String?)
    case wAFReferencedItemException(message: String?)
    case wAFNonEmptyEntityException(message: String?)
    case wAFUnavailableEntityException(message: String?)
}

extension WafRegionalError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = errorCode.substring(from: errorCode.index(index, offsetBy: 1))
        }
        switch errorCode {
        case "WAFInternalErrorException":
            self = .wAFInternalErrorException(message: message)
        case "WAFInvalidAccountException":
            self = .wAFInvalidAccountException(message: message)
        case "WAFStaleDataException":
            self = .wAFStaleDataException(message: message)
        case "WAFDisallowedNameException":
            self = .wAFDisallowedNameException(message: message)
        case "WAFInvalidParameterException":
            self = .wAFInvalidParameterException(message: message)
        case "WAFLimitsExceededException":
            self = .wAFLimitsExceededException(message: message)
        case "WAFInvalidOperationException":
            self = .wAFInvalidOperationException(message: message)
        case "WAFNonexistentContainerException":
            self = .wAFNonexistentContainerException(message: message)
        case "WAFNonexistentItemException":
            self = .wAFNonexistentItemException(message: message)
        case "WAFReferencedItemException":
            self = .wAFReferencedItemException(message: message)
        case "WAFNonEmptyEntityException":
            self = .wAFNonEmptyEntityException(message: message)
        case "WAFUnavailableEntityException":
            self = .wAFUnavailableEntityException(message: message)
        default:
            return nil
        }
    }
}