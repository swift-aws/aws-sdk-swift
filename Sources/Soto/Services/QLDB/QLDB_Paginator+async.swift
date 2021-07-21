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

#if compiler(>=5.5)

import SotoCore

// MARK: Paginators

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension QLDB {
    ///  Returns an array of all Amazon QLDB journal stream descriptors for a given ledger. The output of each stream descriptor includes the same details that are returned by DescribeJournalKinesisStream. This action does not return any expired journal streams. For more information, see Expiration for terminal streams in the Amazon QLDB Developer Guide. This action returns a maximum of MaxResults items. It is paginated so that you can retrieve all the items by calling ListJournalKinesisStreamsForLedger multiple times.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listJournalKinesisStreamsForLedgerPaginator(
        _ input: ListJournalKinesisStreamsForLedgerRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListJournalKinesisStreamsForLedgerRequest, ListJournalKinesisStreamsForLedgerResponse> {
        return .init(
            input: input,
            command: listJournalKinesisStreamsForLedger,
            inputKey: \ListJournalKinesisStreamsForLedgerRequest.nextToken,
            outputKey: \ListJournalKinesisStreamsForLedgerResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns an array of journal export job descriptions for all ledgers that are associated with the current AWS account and Region. This action returns a maximum of MaxResults items, and is paginated so that you can retrieve all the items by calling ListJournalS3Exports multiple times. This action does not return any expired export jobs. For more information, see Export job expiration in the Amazon QLDB Developer Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listJournalS3ExportsPaginator(
        _ input: ListJournalS3ExportsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListJournalS3ExportsRequest, ListJournalS3ExportsResponse> {
        return .init(
            input: input,
            command: listJournalS3Exports,
            inputKey: \ListJournalS3ExportsRequest.nextToken,
            outputKey: \ListJournalS3ExportsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns an array of journal export job descriptions for a specified ledger. This action returns a maximum of MaxResults items, and is paginated so that you can retrieve all the items by calling ListJournalS3ExportsForLedger multiple times. This action does not return any expired export jobs. For more information, see Export job expiration in the Amazon QLDB Developer Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listJournalS3ExportsForLedgerPaginator(
        _ input: ListJournalS3ExportsForLedgerRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListJournalS3ExportsForLedgerRequest, ListJournalS3ExportsForLedgerResponse> {
        return .init(
            input: input,
            command: listJournalS3ExportsForLedger,
            inputKey: \ListJournalS3ExportsForLedgerRequest.nextToken,
            outputKey: \ListJournalS3ExportsForLedgerResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns an array of ledger summaries that are associated with the current AWS account and Region. This action returns a maximum of 100 items and is paginated so that you can retrieve all the items by calling ListLedgers multiple times.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listLedgersPaginator(
        _ input: ListLedgersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListLedgersRequest, ListLedgersResponse> {
        return .init(
            input: input,
            command: listLedgers,
            inputKey: \ListLedgersRequest.nextToken,
            outputKey: \ListLedgersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5)
