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

// MARK: Paginators

extension LexModelBuildingService {
    ///  Returns a list of aliases for a specified Amazon Lex bot. This operation requires permissions for the lex:GetBotAliases action.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func getBotAliasesPaginator<Result>(
        _ input: GetBotAliasesRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, GetBotAliasesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getBotAliases,
            tokenKey: \GetBotAliasesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func getBotAliasesPaginator(
        _ input: GetBotAliasesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetBotAliasesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getBotAliases,
            tokenKey: \GetBotAliasesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   Returns a list of all of the channels associated with the specified bot.  The GetBotChannelAssociations operation requires permissions for the lex:GetBotChannelAssociations action.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func getBotChannelAssociationsPaginator<Result>(
        _ input: GetBotChannelAssociationsRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, GetBotChannelAssociationsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getBotChannelAssociations,
            tokenKey: \GetBotChannelAssociationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func getBotChannelAssociationsPaginator(
        _ input: GetBotChannelAssociationsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetBotChannelAssociationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getBotChannelAssociations,
            tokenKey: \GetBotChannelAssociationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets information about all of the versions of a bot. The GetBotVersions operation returns a BotMetadata object for each version of a bot. For example, if a bot has three numbered versions, the GetBotVersions operation returns four BotMetadata objects in the response, one for each numbered version and one for the $LATEST version.  The GetBotVersions operation always returns at least one version, the $LATEST version. This operation requires permissions for the lex:GetBotVersions action.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func getBotVersionsPaginator<Result>(
        _ input: GetBotVersionsRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, GetBotVersionsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getBotVersions,
            tokenKey: \GetBotVersionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func getBotVersionsPaginator(
        _ input: GetBotVersionsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetBotVersionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getBotVersions,
            tokenKey: \GetBotVersionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns bot information as follows:    If you provide the nameContains field, the response includes information for the $LATEST version of all bots whose name contains the specified string.   If you don't specify the nameContains field, the operation returns information about the $LATEST version of all of your bots.   This operation requires permission for the lex:GetBots action.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func getBotsPaginator<Result>(
        _ input: GetBotsRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, GetBotsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getBots,
            tokenKey: \GetBotsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func getBotsPaginator(
        _ input: GetBotsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetBotsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getBots,
            tokenKey: \GetBotsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets a list of built-in intents that meet the specified criteria. This operation requires permission for the lex:GetBuiltinIntents action.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func getBuiltinIntentsPaginator<Result>(
        _ input: GetBuiltinIntentsRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, GetBuiltinIntentsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getBuiltinIntents,
            tokenKey: \GetBuiltinIntentsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func getBuiltinIntentsPaginator(
        _ input: GetBuiltinIntentsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetBuiltinIntentsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getBuiltinIntents,
            tokenKey: \GetBuiltinIntentsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets a list of built-in slot types that meet the specified criteria. For a list of built-in slot types, see Slot Type Reference in the Alexa Skills Kit. This operation requires permission for the lex:GetBuiltInSlotTypes action.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func getBuiltinSlotTypesPaginator<Result>(
        _ input: GetBuiltinSlotTypesRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, GetBuiltinSlotTypesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getBuiltinSlotTypes,
            tokenKey: \GetBuiltinSlotTypesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func getBuiltinSlotTypesPaginator(
        _ input: GetBuiltinSlotTypesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetBuiltinSlotTypesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getBuiltinSlotTypes,
            tokenKey: \GetBuiltinSlotTypesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets information about all of the versions of an intent. The GetIntentVersions operation returns an IntentMetadata object for each version of an intent. For example, if an intent has three numbered versions, the GetIntentVersions operation returns four IntentMetadata objects in the response, one for each numbered version and one for the $LATEST version.  The GetIntentVersions operation always returns at least one version, the $LATEST version. This operation requires permissions for the lex:GetIntentVersions action.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func getIntentVersionsPaginator<Result>(
        _ input: GetIntentVersionsRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, GetIntentVersionsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getIntentVersions,
            tokenKey: \GetIntentVersionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func getIntentVersionsPaginator(
        _ input: GetIntentVersionsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetIntentVersionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getIntentVersions,
            tokenKey: \GetIntentVersionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns intent information as follows:    If you specify the nameContains field, returns the $LATEST version of all intents that contain the specified string.    If you don't specify the nameContains field, returns information about the $LATEST version of all intents.     The operation requires permission for the lex:GetIntents action.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func getIntentsPaginator<Result>(
        _ input: GetIntentsRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, GetIntentsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getIntents,
            tokenKey: \GetIntentsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func getIntentsPaginator(
        _ input: GetIntentsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetIntentsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getIntents,
            tokenKey: \GetIntentsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets information about all versions of a slot type. The GetSlotTypeVersions operation returns a SlotTypeMetadata object for each version of a slot type. For example, if a slot type has three numbered versions, the GetSlotTypeVersions operation returns four SlotTypeMetadata objects in the response, one for each numbered version and one for the $LATEST version.  The GetSlotTypeVersions operation always returns at least one version, the $LATEST version. This operation requires permissions for the lex:GetSlotTypeVersions action.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func getSlotTypeVersionsPaginator<Result>(
        _ input: GetSlotTypeVersionsRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, GetSlotTypeVersionsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getSlotTypeVersions,
            tokenKey: \GetSlotTypeVersionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func getSlotTypeVersionsPaginator(
        _ input: GetSlotTypeVersionsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetSlotTypeVersionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getSlotTypeVersions,
            tokenKey: \GetSlotTypeVersionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns slot type information as follows:    If you specify the nameContains field, returns the $LATEST version of all slot types that contain the specified string.    If you don't specify the nameContains field, returns information about the $LATEST version of all slot types.     The operation requires permission for the lex:GetSlotTypes action.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func getSlotTypesPaginator<Result>(
        _ input: GetSlotTypesRequest,
        _ initialValue: Result,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (Result, GetSlotTypesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getSlotTypes,
            tokenKey: \GetSlotTypesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - eventLoop: EventLoop to run this process on
    ///   - logger: Logger used flot logging
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func getSlotTypesPaginator(
        _ input: GetSlotTypesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (GetSlotTypesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getSlotTypes,
            tokenKey: \GetSlotTypesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension LexModelBuildingService.GetBotAliasesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LexModelBuildingService.GetBotAliasesRequest {
        return .init(
            botName: self.botName,
            maxResults: self.maxResults,
            nameContains: self.nameContains,
            nextToken: token
        )
    }
}

extension LexModelBuildingService.GetBotChannelAssociationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LexModelBuildingService.GetBotChannelAssociationsRequest {
        return .init(
            botAlias: self.botAlias,
            botName: self.botName,
            maxResults: self.maxResults,
            nameContains: self.nameContains,
            nextToken: token
        )
    }
}

extension LexModelBuildingService.GetBotVersionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LexModelBuildingService.GetBotVersionsRequest {
        return .init(
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token
        )
    }
}

extension LexModelBuildingService.GetBotsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LexModelBuildingService.GetBotsRequest {
        return .init(
            maxResults: self.maxResults,
            nameContains: self.nameContains,
            nextToken: token
        )
    }
}

extension LexModelBuildingService.GetBuiltinIntentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LexModelBuildingService.GetBuiltinIntentsRequest {
        return .init(
            locale: self.locale,
            maxResults: self.maxResults,
            nextToken: token,
            signatureContains: self.signatureContains
        )
    }
}

extension LexModelBuildingService.GetBuiltinSlotTypesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LexModelBuildingService.GetBuiltinSlotTypesRequest {
        return .init(
            locale: self.locale,
            maxResults: self.maxResults,
            nextToken: token,
            signatureContains: self.signatureContains
        )
    }
}

extension LexModelBuildingService.GetIntentVersionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LexModelBuildingService.GetIntentVersionsRequest {
        return .init(
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token
        )
    }
}

extension LexModelBuildingService.GetIntentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LexModelBuildingService.GetIntentsRequest {
        return .init(
            maxResults: self.maxResults,
            nameContains: self.nameContains,
            nextToken: token
        )
    }
}

extension LexModelBuildingService.GetSlotTypeVersionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LexModelBuildingService.GetSlotTypeVersionsRequest {
        return .init(
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token
        )
    }
}

extension LexModelBuildingService.GetSlotTypesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LexModelBuildingService.GetSlotTypesRequest {
        return .init(
            maxResults: self.maxResults,
            nameContains: self.nameContains,
            nextToken: token
        )
    }
}
