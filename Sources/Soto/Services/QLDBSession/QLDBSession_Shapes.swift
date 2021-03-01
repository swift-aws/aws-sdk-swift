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

import Foundation
import SotoCore

extension QLDBSession {
    // MARK: Enums

    // MARK: Shapes

    public struct AbortTransactionRequest: AWSEncodableShape {
        public init() {}
    }

    public struct AbortTransactionResult: AWSDecodableShape {
        /// Contains server-side performance information for the command.
        public let timingInformation: TimingInformation?

        public init(timingInformation: TimingInformation? = nil) {
            self.timingInformation = timingInformation
        }

        private enum CodingKeys: String, CodingKey {
            case timingInformation = "TimingInformation"
        }
    }

    public struct CommitTransactionRequest: AWSEncodableShape {
        /// Specifies the commit digest for the transaction to commit. For every active transaction, the commit digest must be passed. QLDB validates CommitDigest and rejects the commit with an error if the digest computed on the client does not match the digest computed by QLDB. The purpose of the CommitDigest parameter is to ensure that QLDB commits a transaction if and only if the server has processed the exact set of statements sent by the client, in the same order that client sent them, and with no duplicates.
        public let commitDigest: Data
        /// Specifies the transaction ID of the transaction to commit.
        public let transactionId: String

        public init(commitDigest: Data, transactionId: String) {
            self.commitDigest = commitDigest
            self.transactionId = transactionId
        }

        public func validate(name: String) throws {
            try self.validate(self.transactionId, name: "transactionId", parent: name, max: 22)
            try self.validate(self.transactionId, name: "transactionId", parent: name, min: 22)
            try self.validate(self.transactionId, name: "transactionId", parent: name, pattern: "^[A-Za-z-0-9]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case commitDigest = "CommitDigest"
            case transactionId = "TransactionId"
        }
    }

    public struct CommitTransactionResult: AWSDecodableShape {
        /// The commit digest of the committed transaction.
        public let commitDigest: Data?
        /// Contains metrics about the number of I/O requests that were consumed.
        public let consumedIOs: IOUsage?
        /// Contains server-side performance information for the command.
        public let timingInformation: TimingInformation?
        /// The transaction ID of the committed transaction.
        public let transactionId: String?

        public init(commitDigest: Data? = nil, consumedIOs: IOUsage? = nil, timingInformation: TimingInformation? = nil, transactionId: String? = nil) {
            self.commitDigest = commitDigest
            self.consumedIOs = consumedIOs
            self.timingInformation = timingInformation
            self.transactionId = transactionId
        }

        private enum CodingKeys: String, CodingKey {
            case commitDigest = "CommitDigest"
            case consumedIOs = "ConsumedIOs"
            case timingInformation = "TimingInformation"
            case transactionId = "TransactionId"
        }
    }

    public struct EndSessionRequest: AWSEncodableShape {
        public init() {}
    }

    public struct EndSessionResult: AWSDecodableShape {
        /// Contains server-side performance information for the command.
        public let timingInformation: TimingInformation?

        public init(timingInformation: TimingInformation? = nil) {
            self.timingInformation = timingInformation
        }

        private enum CodingKeys: String, CodingKey {
            case timingInformation = "TimingInformation"
        }
    }

    public struct ExecuteStatementRequest: AWSEncodableShape {
        /// Specifies the parameters for the parameterized statement in the request.
        public let parameters: [ValueHolder]?
        /// Specifies the statement of the request.
        public let statement: String
        /// Specifies the transaction ID of the request.
        public let transactionId: String

        public init(parameters: [ValueHolder]? = nil, statement: String, transactionId: String) {
            self.parameters = parameters
            self.statement = statement
            self.transactionId = transactionId
        }

        public func validate(name: String) throws {
            try self.parameters?.forEach {
                try $0.validate(name: "\(name).parameters[]")
            }
            try self.validate(self.statement, name: "statement", parent: name, max: 100_000)
            try self.validate(self.statement, name: "statement", parent: name, min: 1)
            try self.validate(self.transactionId, name: "transactionId", parent: name, max: 22)
            try self.validate(self.transactionId, name: "transactionId", parent: name, min: 22)
            try self.validate(self.transactionId, name: "transactionId", parent: name, pattern: "^[A-Za-z-0-9]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case parameters = "Parameters"
            case statement = "Statement"
            case transactionId = "TransactionId"
        }
    }

    public struct ExecuteStatementResult: AWSDecodableShape {
        /// Contains metrics about the number of I/O requests that were consumed.
        public let consumedIOs: IOUsage?
        /// Contains the details of the first fetched page.
        public let firstPage: Page?
        /// Contains server-side performance information for the command.
        public let timingInformation: TimingInformation?

        public init(consumedIOs: IOUsage? = nil, firstPage: Page? = nil, timingInformation: TimingInformation? = nil) {
            self.consumedIOs = consumedIOs
            self.firstPage = firstPage
            self.timingInformation = timingInformation
        }

        private enum CodingKeys: String, CodingKey {
            case consumedIOs = "ConsumedIOs"
            case firstPage = "FirstPage"
            case timingInformation = "TimingInformation"
        }
    }

    public struct FetchPageRequest: AWSEncodableShape {
        /// Specifies the next page token of the page to be fetched.
        public let nextPageToken: String
        /// Specifies the transaction ID of the page to be fetched.
        public let transactionId: String

        public init(nextPageToken: String, transactionId: String) {
            self.nextPageToken = nextPageToken
            self.transactionId = transactionId
        }

        public func validate(name: String) throws {
            try self.validate(self.nextPageToken, name: "nextPageToken", parent: name, max: 1024)
            try self.validate(self.nextPageToken, name: "nextPageToken", parent: name, min: 4)
            try self.validate(self.nextPageToken, name: "nextPageToken", parent: name, pattern: "^[A-Za-z-0-9+/=]+$")
            try self.validate(self.transactionId, name: "transactionId", parent: name, max: 22)
            try self.validate(self.transactionId, name: "transactionId", parent: name, min: 22)
            try self.validate(self.transactionId, name: "transactionId", parent: name, pattern: "^[A-Za-z-0-9]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case nextPageToken = "NextPageToken"
            case transactionId = "TransactionId"
        }
    }

    public struct FetchPageResult: AWSDecodableShape {
        /// Contains metrics about the number of I/O requests that were consumed.
        public let consumedIOs: IOUsage?
        /// Contains details of the fetched page.
        public let page: Page?
        /// Contains server-side performance information for the command.
        public let timingInformation: TimingInformation?

        public init(consumedIOs: IOUsage? = nil, page: Page? = nil, timingInformation: TimingInformation? = nil) {
            self.consumedIOs = consumedIOs
            self.page = page
            self.timingInformation = timingInformation
        }

        private enum CodingKeys: String, CodingKey {
            case consumedIOs = "ConsumedIOs"
            case page = "Page"
            case timingInformation = "TimingInformation"
        }
    }

    public struct IOUsage: AWSDecodableShape {
        /// The number of read I/O requests that the command made.
        public let readIOs: Int64?
        /// The number of write I/O requests that the command made.
        public let writeIOs: Int64?

        public init(readIOs: Int64? = nil, writeIOs: Int64? = nil) {
            self.readIOs = readIOs
            self.writeIOs = writeIOs
        }

        private enum CodingKeys: String, CodingKey {
            case readIOs = "ReadIOs"
            case writeIOs = "WriteIOs"
        }
    }

    public struct Page: AWSDecodableShape {
        /// The token of the next page.
        public let nextPageToken: String?
        /// A structure that contains values in multiple encoding formats.
        public let values: [ValueHolder]?

        public init(nextPageToken: String? = nil, values: [ValueHolder]? = nil) {
            self.nextPageToken = nextPageToken
            self.values = values
        }

        private enum CodingKeys: String, CodingKey {
            case nextPageToken = "NextPageToken"
            case values = "Values"
        }
    }

    public struct SendCommandRequest: AWSEncodableShape {
        /// Command to abort the current transaction.
        public let abortTransaction: AbortTransactionRequest?
        /// Command to commit the specified transaction.
        public let commitTransaction: CommitTransactionRequest?
        /// Command to end the current session.
        public let endSession: EndSessionRequest?
        /// Command to execute a statement in the specified transaction.
        public let executeStatement: ExecuteStatementRequest?
        /// Command to fetch a page.
        public let fetchPage: FetchPageRequest?
        /// Specifies the session token for the current command. A session token is constant throughout the life of the session. To obtain a session token, run the StartSession command. This SessionToken is required for every subsequent command that is issued during the current session.
        public let sessionToken: String?
        /// Command to start a new session. A session token is obtained as part of the response.
        public let startSession: StartSessionRequest?
        /// Command to start a new transaction.
        public let startTransaction: StartTransactionRequest?

        public init(abortTransaction: AbortTransactionRequest? = nil, commitTransaction: CommitTransactionRequest? = nil, endSession: EndSessionRequest? = nil, executeStatement: ExecuteStatementRequest? = nil, fetchPage: FetchPageRequest? = nil, sessionToken: String? = nil, startSession: StartSessionRequest? = nil, startTransaction: StartTransactionRequest? = nil) {
            self.abortTransaction = abortTransaction
            self.commitTransaction = commitTransaction
            self.endSession = endSession
            self.executeStatement = executeStatement
            self.fetchPage = fetchPage
            self.sessionToken = sessionToken
            self.startSession = startSession
            self.startTransaction = startTransaction
        }

        public func validate(name: String) throws {
            try self.commitTransaction?.validate(name: "\(name).commitTransaction")
            try self.executeStatement?.validate(name: "\(name).executeStatement")
            try self.fetchPage?.validate(name: "\(name).fetchPage")
            try self.validate(self.sessionToken, name: "sessionToken", parent: name, max: 1024)
            try self.validate(self.sessionToken, name: "sessionToken", parent: name, min: 4)
            try self.validate(self.sessionToken, name: "sessionToken", parent: name, pattern: "^[A-Za-z-0-9+/=]+$")
            try self.startSession?.validate(name: "\(name).startSession")
        }

        private enum CodingKeys: String, CodingKey {
            case abortTransaction = "AbortTransaction"
            case commitTransaction = "CommitTransaction"
            case endSession = "EndSession"
            case executeStatement = "ExecuteStatement"
            case fetchPage = "FetchPage"
            case sessionToken = "SessionToken"
            case startSession = "StartSession"
            case startTransaction = "StartTransaction"
        }
    }

    public struct SendCommandResult: AWSDecodableShape {
        /// Contains the details of the aborted transaction.
        public let abortTransaction: AbortTransactionResult?
        /// Contains the details of the committed transaction.
        public let commitTransaction: CommitTransactionResult?
        /// Contains the details of the ended session.
        public let endSession: EndSessionResult?
        /// Contains the details of the executed statement.
        public let executeStatement: ExecuteStatementResult?
        /// Contains the details of the fetched page.
        public let fetchPage: FetchPageResult?
        /// Contains the details of the started session that includes a session token. This SessionToken is required for every subsequent command that is issued during the current session.
        public let startSession: StartSessionResult?
        /// Contains the details of the started transaction.
        public let startTransaction: StartTransactionResult?

        public init(abortTransaction: AbortTransactionResult? = nil, commitTransaction: CommitTransactionResult? = nil, endSession: EndSessionResult? = nil, executeStatement: ExecuteStatementResult? = nil, fetchPage: FetchPageResult? = nil, startSession: StartSessionResult? = nil, startTransaction: StartTransactionResult? = nil) {
            self.abortTransaction = abortTransaction
            self.commitTransaction = commitTransaction
            self.endSession = endSession
            self.executeStatement = executeStatement
            self.fetchPage = fetchPage
            self.startSession = startSession
            self.startTransaction = startTransaction
        }

        private enum CodingKeys: String, CodingKey {
            case abortTransaction = "AbortTransaction"
            case commitTransaction = "CommitTransaction"
            case endSession = "EndSession"
            case executeStatement = "ExecuteStatement"
            case fetchPage = "FetchPage"
            case startSession = "StartSession"
            case startTransaction = "StartTransaction"
        }
    }

    public struct StartSessionRequest: AWSEncodableShape {
        /// The name of the ledger to start a new session against.
        public let ledgerName: String

        public init(ledgerName: String) {
            self.ledgerName = ledgerName
        }

        public func validate(name: String) throws {
            try self.validate(self.ledgerName, name: "ledgerName", parent: name, max: 32)
            try self.validate(self.ledgerName, name: "ledgerName", parent: name, min: 1)
            try self.validate(self.ledgerName, name: "ledgerName", parent: name, pattern: "(?!^.*--)(?!^[0-9]+$)(?!^-)(?!.*-$)^[A-Za-z0-9-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case ledgerName = "LedgerName"
        }
    }

    public struct StartSessionResult: AWSDecodableShape {
        /// Session token of the started session. This SessionToken is required for every subsequent command that is issued during the current session.
        public let sessionToken: String?
        /// Contains server-side performance information for the command.
        public let timingInformation: TimingInformation?

        public init(sessionToken: String? = nil, timingInformation: TimingInformation? = nil) {
            self.sessionToken = sessionToken
            self.timingInformation = timingInformation
        }

        private enum CodingKeys: String, CodingKey {
            case sessionToken = "SessionToken"
            case timingInformation = "TimingInformation"
        }
    }

    public struct StartTransactionRequest: AWSEncodableShape {
        public init() {}
    }

    public struct StartTransactionResult: AWSDecodableShape {
        /// Contains server-side performance information for the command.
        public let timingInformation: TimingInformation?
        /// The transaction ID of the started transaction.
        public let transactionId: String?

        public init(timingInformation: TimingInformation? = nil, transactionId: String? = nil) {
            self.timingInformation = timingInformation
            self.transactionId = transactionId
        }

        private enum CodingKeys: String, CodingKey {
            case timingInformation = "TimingInformation"
            case transactionId = "TransactionId"
        }
    }

    public struct TimingInformation: AWSDecodableShape {
        /// The amount of time that QLDB spent on processing the command, measured in milliseconds.
        public let processingTimeMilliseconds: Int64?

        public init(processingTimeMilliseconds: Int64? = nil) {
            self.processingTimeMilliseconds = processingTimeMilliseconds
        }

        private enum CodingKeys: String, CodingKey {
            case processingTimeMilliseconds = "ProcessingTimeMilliseconds"
        }
    }

    public struct ValueHolder: AWSEncodableShape & AWSDecodableShape {
        /// An Amazon Ion binary value contained in a ValueHolder structure.
        public let ionBinary: Data?
        /// An Amazon Ion plaintext value contained in a ValueHolder structure.
        public let ionText: String?

        public init(ionBinary: Data? = nil, ionText: String? = nil) {
            self.ionBinary = ionBinary
            self.ionText = ionText
        }

        public func validate(name: String) throws {
            try self.validate(self.ionBinary, name: "ionBinary", parent: name, max: 131_072)
            try self.validate(self.ionBinary, name: "ionBinary", parent: name, min: 1)
            try self.validate(self.ionText, name: "ionText", parent: name, max: 1_048_576)
            try self.validate(self.ionText, name: "ionText", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case ionBinary = "IonBinary"
            case ionText = "IonText"
        }
    }
}
