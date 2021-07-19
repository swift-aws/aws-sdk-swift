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

// MARK: Paginators

extension Imagebuilder {
    ///   Returns the list of component build versions for the specified semantic version.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listComponentBuildVersionsPaginator<Result>(
        _ input: ListComponentBuildVersionsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListComponentBuildVersionsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listComponentBuildVersions,
            inputKey: \ListComponentBuildVersionsRequest.nextToken,
            outputKey: \ListComponentBuildVersionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listComponentBuildVersionsPaginator(
        _ input: ListComponentBuildVersionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListComponentBuildVersionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listComponentBuildVersions,
            inputKey: \ListComponentBuildVersionsRequest.nextToken,
            outputKey: \ListComponentBuildVersionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns the list of component build versions for the specified semantic version.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listComponentsPaginator<Result>(
        _ input: ListComponentsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListComponentsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listComponents,
            inputKey: \ListComponentsRequest.nextToken,
            outputKey: \ListComponentsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listComponentsPaginator(
        _ input: ListComponentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListComponentsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listComponents,
            inputKey: \ListComponentsRequest.nextToken,
            outputKey: \ListComponentsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of container recipes.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listContainerRecipesPaginator<Result>(
        _ input: ListContainerRecipesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListContainerRecipesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listContainerRecipes,
            inputKey: \ListContainerRecipesRequest.nextToken,
            outputKey: \ListContainerRecipesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listContainerRecipesPaginator(
        _ input: ListContainerRecipesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListContainerRecipesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listContainerRecipes,
            inputKey: \ListContainerRecipesRequest.nextToken,
            outputKey: \ListContainerRecipesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of distribution configurations.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listDistributionConfigurationsPaginator<Result>(
        _ input: ListDistributionConfigurationsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListDistributionConfigurationsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listDistributionConfigurations,
            inputKey: \ListDistributionConfigurationsRequest.nextToken,
            outputKey: \ListDistributionConfigurationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listDistributionConfigurationsPaginator(
        _ input: ListDistributionConfigurationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListDistributionConfigurationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDistributionConfigurations,
            inputKey: \ListDistributionConfigurationsRequest.nextToken,
            outputKey: \ListDistributionConfigurationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   Returns a list of image build versions.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listImageBuildVersionsPaginator<Result>(
        _ input: ListImageBuildVersionsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListImageBuildVersionsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listImageBuildVersions,
            inputKey: \ListImageBuildVersionsRequest.nextToken,
            outputKey: \ListImageBuildVersionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listImageBuildVersionsPaginator(
        _ input: ListImageBuildVersionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListImageBuildVersionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listImageBuildVersions,
            inputKey: \ListImageBuildVersionsRequest.nextToken,
            outputKey: \ListImageBuildVersionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  List the Packages that are associated with an Image Build Version, as determined by Amazon EC2 Systems Manager Inventory at build time.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listImagePackagesPaginator<Result>(
        _ input: ListImagePackagesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListImagePackagesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listImagePackages,
            inputKey: \ListImagePackagesRequest.nextToken,
            outputKey: \ListImagePackagesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listImagePackagesPaginator(
        _ input: ListImagePackagesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListImagePackagesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listImagePackages,
            inputKey: \ListImagePackagesRequest.nextToken,
            outputKey: \ListImagePackagesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   Returns a list of images created by the specified pipeline.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listImagePipelineImagesPaginator<Result>(
        _ input: ListImagePipelineImagesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListImagePipelineImagesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listImagePipelineImages,
            inputKey: \ListImagePipelineImagesRequest.nextToken,
            outputKey: \ListImagePipelineImagesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listImagePipelineImagesPaginator(
        _ input: ListImagePipelineImagesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListImagePipelineImagesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listImagePipelineImages,
            inputKey: \ListImagePipelineImagesRequest.nextToken,
            outputKey: \ListImagePipelineImagesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of image pipelines.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listImagePipelinesPaginator<Result>(
        _ input: ListImagePipelinesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListImagePipelinesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listImagePipelines,
            inputKey: \ListImagePipelinesRequest.nextToken,
            outputKey: \ListImagePipelinesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listImagePipelinesPaginator(
        _ input: ListImagePipelinesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListImagePipelinesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listImagePipelines,
            inputKey: \ListImagePipelinesRequest.nextToken,
            outputKey: \ListImagePipelinesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   Returns a list of image recipes.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listImageRecipesPaginator<Result>(
        _ input: ListImageRecipesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListImageRecipesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listImageRecipes,
            inputKey: \ListImageRecipesRequest.nextToken,
            outputKey: \ListImageRecipesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listImageRecipesPaginator(
        _ input: ListImageRecipesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListImageRecipesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listImageRecipes,
            inputKey: \ListImageRecipesRequest.nextToken,
            outputKey: \ListImageRecipesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   Returns the list of images that you have access to.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listImagesPaginator<Result>(
        _ input: ListImagesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListImagesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listImages,
            inputKey: \ListImagesRequest.nextToken,
            outputKey: \ListImagesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listImagesPaginator(
        _ input: ListImagesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListImagesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listImages,
            inputKey: \ListImagesRequest.nextToken,
            outputKey: \ListImagesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   Returns a list of infrastructure configurations.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listInfrastructureConfigurationsPaginator<Result>(
        _ input: ListInfrastructureConfigurationsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListInfrastructureConfigurationsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listInfrastructureConfigurations,
            inputKey: \ListInfrastructureConfigurationsRequest.nextToken,
            outputKey: \ListInfrastructureConfigurationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listInfrastructureConfigurationsPaginator(
        _ input: ListInfrastructureConfigurationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListInfrastructureConfigurationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listInfrastructureConfigurations,
            inputKey: \ListInfrastructureConfigurationsRequest.nextToken,
            outputKey: \ListInfrastructureConfigurationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension Imagebuilder.ListComponentBuildVersionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Imagebuilder.ListComponentBuildVersionsRequest {
        return .init(
            componentVersionArn: self.componentVersionArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Imagebuilder.ListComponentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Imagebuilder.ListComponentsRequest {
        return .init(
            byName: self.byName,
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            owner: self.owner
        )
    }
}

extension Imagebuilder.ListContainerRecipesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Imagebuilder.ListContainerRecipesRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            owner: self.owner
        )
    }
}

extension Imagebuilder.ListDistributionConfigurationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Imagebuilder.ListDistributionConfigurationsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Imagebuilder.ListImageBuildVersionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Imagebuilder.ListImageBuildVersionsRequest {
        return .init(
            filters: self.filters,
            imageVersionArn: self.imageVersionArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Imagebuilder.ListImagePackagesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Imagebuilder.ListImagePackagesRequest {
        return .init(
            imageBuildVersionArn: self.imageBuildVersionArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Imagebuilder.ListImagePipelineImagesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Imagebuilder.ListImagePipelineImagesRequest {
        return .init(
            filters: self.filters,
            imagePipelineArn: self.imagePipelineArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Imagebuilder.ListImagePipelinesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Imagebuilder.ListImagePipelinesRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Imagebuilder.ListImageRecipesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Imagebuilder.ListImageRecipesRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            owner: self.owner
        )
    }
}

extension Imagebuilder.ListImagesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Imagebuilder.ListImagesRequest {
        return .init(
            byName: self.byName,
            filters: self.filters,
            includeDeprecated: self.includeDeprecated,
            maxResults: self.maxResults,
            nextToken: token,
            owner: self.owner
        )
    }
}

extension Imagebuilder.ListInfrastructureConfigurationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Imagebuilder.ListInfrastructureConfigurationsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
