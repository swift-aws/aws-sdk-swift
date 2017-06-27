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

/// Error enum for Sqs
public enum SqsError: AWSErrorType {
    case invalidMessageContents(message: String?)
    case unsupportedOperation(message: String?)
    case invalidIdFormat(message: String?)
    case receiptHandleIsInvalid(message: String?)
    case overLimit(message: String?)
    case tooManyEntriesInBatchRequest(message: String?)
    case emptyBatchRequest(message: String?)
    case batchEntryIdsNotDistinct(message: String?)
    case invalidBatchEntryId(message: String?)
    case queueDoesNotExist(message: String?)
    case purgeQueueInProgress(message: String?)
    case messageNotInflight(message: String?)
    case queueDeletedRecently(message: String?)
    case queueNameExists(message: String?)
    case invalidAttributeName(message: String?)
    case batchRequestTooLong(message: String?)
}

extension SqsError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = errorCode.substring(from: errorCode.index(index, offsetBy: 1))
        }
        switch errorCode {
        case "InvalidMessageContents":
            self = .invalidMessageContents(message: message)
        case "UnsupportedOperation":
            self = .unsupportedOperation(message: message)
        case "InvalidIdFormat":
            self = .invalidIdFormat(message: message)
        case "ReceiptHandleIsInvalid":
            self = .receiptHandleIsInvalid(message: message)
        case "OverLimit":
            self = .overLimit(message: message)
        case "TooManyEntriesInBatchRequest":
            self = .tooManyEntriesInBatchRequest(message: message)
        case "EmptyBatchRequest":
            self = .emptyBatchRequest(message: message)
        case "BatchEntryIdsNotDistinct":
            self = .batchEntryIdsNotDistinct(message: message)
        case "InvalidBatchEntryId":
            self = .invalidBatchEntryId(message: message)
        case "QueueDoesNotExist":
            self = .queueDoesNotExist(message: message)
        case "PurgeQueueInProgress":
            self = .purgeQueueInProgress(message: message)
        case "MessageNotInflight":
            self = .messageNotInflight(message: message)
        case "QueueDeletedRecently":
            self = .queueDeletedRecently(message: message)
        case "QueueNameExists":
            self = .queueNameExists(message: message)
        case "InvalidAttributeName":
            self = .invalidAttributeName(message: message)
        case "BatchRequestTooLong":
            self = .batchRequestTooLong(message: message)
        default:
            return nil
        }
    }
}