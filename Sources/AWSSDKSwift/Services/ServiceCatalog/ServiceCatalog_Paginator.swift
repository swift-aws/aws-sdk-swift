// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension ServiceCatalog {

    ///  Lists all portfolios for which sharing was accepted by this account.
    public func listAcceptedPortfolioSharesPaginator(_ input: ListAcceptedPortfolioSharesInput, onPage: @escaping (ListAcceptedPortfolioSharesOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listAcceptedPortfolioShares, tokenKey: \ListAcceptedPortfolioSharesOutput.nextPageToken, onPage: onPage)
    }

    ///  Lists all the budgets associated to the specified resource.
    public func listBudgetsForResourcePaginator(_ input: ListBudgetsForResourceInput, onPage: @escaping (ListBudgetsForResourceOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listBudgetsForResource, tokenKey: \ListBudgetsForResourceOutput.nextPageToken, onPage: onPage)
    }

    ///  Lists the constraints for the specified portfolio and product.
    public func listConstraintsForPortfolioPaginator(_ input: ListConstraintsForPortfolioInput, onPage: @escaping (ListConstraintsForPortfolioOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listConstraintsForPortfolio, tokenKey: \ListConstraintsForPortfolioOutput.nextPageToken, onPage: onPage)
    }

    ///  Lists the paths to the specified product. A path is how the user has access to a specified product, and is necessary when provisioning a product. A path also determines the constraints put on the product.
    public func listLaunchPathsPaginator(_ input: ListLaunchPathsInput, onPage: @escaping (ListLaunchPathsOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listLaunchPaths, tokenKey: \ListLaunchPathsOutput.nextPageToken, onPage: onPage)
    }

    ///  Lists the organization nodes that have access to the specified portfolio. This API can only be called by the master account in the organization or by a delegated admin. If a delegated admin is de-registered, they can no longer perform this operation.
    public func listOrganizationPortfolioAccessPaginator(_ input: ListOrganizationPortfolioAccessInput, onPage: @escaping (ListOrganizationPortfolioAccessOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listOrganizationPortfolioAccess, tokenKey: \ListOrganizationPortfolioAccessOutput.nextPageToken, onPage: onPage)
    }

    ///  Lists the account IDs that have access to the specified portfolio. A delegated admin can list the accounts that have access to the shared portfolio. Note that if a delegated admin is de-registered, they can no longer perform this operation.
    public func listPortfolioAccessPaginator(_ input: ListPortfolioAccessInput, onPage: @escaping (ListPortfolioAccessOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listPortfolioAccess, tokenKey: \ListPortfolioAccessOutput.nextPageToken, onPage: onPage)
    }

    ///  Lists all portfolios in the catalog.
    public func listPortfoliosPaginator(_ input: ListPortfoliosInput, onPage: @escaping (ListPortfoliosOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listPortfolios, tokenKey: \ListPortfoliosOutput.nextPageToken, onPage: onPage)
    }

    ///  Lists all portfolios that the specified product is associated with.
    public func listPortfoliosForProductPaginator(_ input: ListPortfoliosForProductInput, onPage: @escaping (ListPortfoliosForProductOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listPortfoliosForProduct, tokenKey: \ListPortfoliosForProductOutput.nextPageToken, onPage: onPage)
    }

    ///  Lists all principal ARNs associated with the specified portfolio.
    public func listPrincipalsForPortfolioPaginator(_ input: ListPrincipalsForPortfolioInput, onPage: @escaping (ListPrincipalsForPortfolioOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listPrincipalsForPortfolio, tokenKey: \ListPrincipalsForPortfolioOutput.nextPageToken, onPage: onPage)
    }

    ///  Lists all provisioning artifacts (also known as versions) for the specified self-service action.
    public func listProvisioningArtifactsForServiceActionPaginator(_ input: ListProvisioningArtifactsForServiceActionInput, onPage: @escaping (ListProvisioningArtifactsForServiceActionOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listProvisioningArtifactsForServiceAction, tokenKey: \ListProvisioningArtifactsForServiceActionOutput.nextPageToken, onPage: onPage)
    }

    ///  Lists the resources associated with the specified TagOption.
    public func listResourcesForTagOptionPaginator(_ input: ListResourcesForTagOptionInput, onPage: @escaping (ListResourcesForTagOptionOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listResourcesForTagOption, tokenKey: \ListResourcesForTagOptionOutput.pageToken, onPage: onPage)
    }

    ///  Lists all self-service actions.
    public func listServiceActionsPaginator(_ input: ListServiceActionsInput, onPage: @escaping (ListServiceActionsOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listServiceActions, tokenKey: \ListServiceActionsOutput.nextPageToken, onPage: onPage)
    }

    ///  Returns a paginated list of self-service actions associated with the specified Product ID and Provisioning Artifact ID.
    public func listServiceActionsForProvisioningArtifactPaginator(_ input: ListServiceActionsForProvisioningArtifactInput, onPage: @escaping (ListServiceActionsForProvisioningArtifactOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listServiceActionsForProvisioningArtifact, tokenKey: \ListServiceActionsForProvisioningArtifactOutput.nextPageToken, onPage: onPage)
    }

    ///  Lists the specified TagOptions or all TagOptions.
    public func listTagOptionsPaginator(_ input: ListTagOptionsInput, onPage: @escaping (ListTagOptionsOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTagOptions, tokenKey: \ListTagOptionsOutput.pageToken, onPage: onPage)
    }

    ///  Gets information about the products to which the caller has access.
    public func searchProductsPaginator(_ input: SearchProductsInput, onPage: @escaping (SearchProductsOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: searchProducts, tokenKey: \SearchProductsOutput.nextPageToken, onPage: onPage)
    }

    ///  Gets information about the products for the specified portfolio or all products.
    public func searchProductsAsAdminPaginator(_ input: SearchProductsAsAdminInput, onPage: @escaping (SearchProductsAsAdminOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: searchProductsAsAdmin, tokenKey: \SearchProductsAsAdminOutput.nextPageToken, onPage: onPage)
    }

    ///  Gets information about the provisioned products that meet the specified criteria.
    public func searchProvisionedProductsPaginator(_ input: SearchProvisionedProductsInput, onPage: @escaping (SearchProvisionedProductsOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: searchProvisionedProducts, tokenKey: \SearchProvisionedProductsOutput.nextPageToken, onPage: onPage)
    }

}

extension ServiceCatalog.ListAcceptedPortfolioSharesInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ServiceCatalog.ListAcceptedPortfolioSharesInput {
        return .init(
            acceptLanguage: self.acceptLanguage, 
            pageSize: self.pageSize, 
            pageToken: token, 
            portfolioShareType: self.portfolioShareType
        )

    }
}

extension ServiceCatalog.ListBudgetsForResourceInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ServiceCatalog.ListBudgetsForResourceInput {
        return .init(
            acceptLanguage: self.acceptLanguage, 
            pageSize: self.pageSize, 
            pageToken: token, 
            resourceId: self.resourceId
        )

    }
}

extension ServiceCatalog.ListConstraintsForPortfolioInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ServiceCatalog.ListConstraintsForPortfolioInput {
        return .init(
            acceptLanguage: self.acceptLanguage, 
            pageSize: self.pageSize, 
            pageToken: token, 
            portfolioId: self.portfolioId, 
            productId: self.productId
        )

    }
}

extension ServiceCatalog.ListLaunchPathsInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ServiceCatalog.ListLaunchPathsInput {
        return .init(
            acceptLanguage: self.acceptLanguage, 
            pageSize: self.pageSize, 
            pageToken: token, 
            productId: self.productId
        )

    }
}

extension ServiceCatalog.ListOrganizationPortfolioAccessInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ServiceCatalog.ListOrganizationPortfolioAccessInput {
        return .init(
            acceptLanguage: self.acceptLanguage, 
            organizationNodeType: self.organizationNodeType, 
            pageSize: self.pageSize, 
            pageToken: token, 
            portfolioId: self.portfolioId
        )

    }
}

extension ServiceCatalog.ListPortfolioAccessInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ServiceCatalog.ListPortfolioAccessInput {
        return .init(
            acceptLanguage: self.acceptLanguage, 
            organizationParentId: self.organizationParentId, 
            pageSize: self.pageSize, 
            pageToken: token, 
            portfolioId: self.portfolioId
        )

    }
}

extension ServiceCatalog.ListPortfoliosInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ServiceCatalog.ListPortfoliosInput {
        return .init(
            acceptLanguage: self.acceptLanguage, 
            pageSize: self.pageSize, 
            pageToken: token
        )

    }
}

extension ServiceCatalog.ListPortfoliosForProductInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ServiceCatalog.ListPortfoliosForProductInput {
        return .init(
            acceptLanguage: self.acceptLanguage, 
            pageSize: self.pageSize, 
            pageToken: token, 
            productId: self.productId
        )

    }
}

extension ServiceCatalog.ListPrincipalsForPortfolioInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ServiceCatalog.ListPrincipalsForPortfolioInput {
        return .init(
            acceptLanguage: self.acceptLanguage, 
            pageSize: self.pageSize, 
            pageToken: token, 
            portfolioId: self.portfolioId
        )

    }
}

extension ServiceCatalog.ListProvisioningArtifactsForServiceActionInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ServiceCatalog.ListProvisioningArtifactsForServiceActionInput {
        return .init(
            acceptLanguage: self.acceptLanguage, 
            pageSize: self.pageSize, 
            pageToken: token, 
            serviceActionId: self.serviceActionId
        )

    }
}

extension ServiceCatalog.ListResourcesForTagOptionInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ServiceCatalog.ListResourcesForTagOptionInput {
        return .init(
            pageSize: self.pageSize, 
            pageToken: token, 
            resourceType: self.resourceType, 
            tagOptionId: self.tagOptionId
        )

    }
}

extension ServiceCatalog.ListServiceActionsInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ServiceCatalog.ListServiceActionsInput {
        return .init(
            acceptLanguage: self.acceptLanguage, 
            pageSize: self.pageSize, 
            pageToken: token
        )

    }
}

extension ServiceCatalog.ListServiceActionsForProvisioningArtifactInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ServiceCatalog.ListServiceActionsForProvisioningArtifactInput {
        return .init(
            acceptLanguage: self.acceptLanguage, 
            pageSize: self.pageSize, 
            pageToken: token, 
            productId: self.productId, 
            provisioningArtifactId: self.provisioningArtifactId
        )

    }
}

extension ServiceCatalog.ListTagOptionsInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ServiceCatalog.ListTagOptionsInput {
        return .init(
            filters: self.filters, 
            pageSize: self.pageSize, 
            pageToken: token
        )

    }
}

extension ServiceCatalog.SearchProductsInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ServiceCatalog.SearchProductsInput {
        return .init(
            acceptLanguage: self.acceptLanguage, 
            filters: self.filters, 
            pageSize: self.pageSize, 
            pageToken: token, 
            sortBy: self.sortBy, 
            sortOrder: self.sortOrder
        )

    }
}

extension ServiceCatalog.SearchProductsAsAdminInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ServiceCatalog.SearchProductsAsAdminInput {
        return .init(
            acceptLanguage: self.acceptLanguage, 
            filters: self.filters, 
            pageSize: self.pageSize, 
            pageToken: token, 
            portfolioId: self.portfolioId, 
            productSource: self.productSource, 
            sortBy: self.sortBy, 
            sortOrder: self.sortOrder
        )

    }
}

extension ServiceCatalog.SearchProvisionedProductsInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ServiceCatalog.SearchProvisionedProductsInput {
        return .init(
            acceptLanguage: self.acceptLanguage, 
            accessLevelFilter: self.accessLevelFilter, 
            filters: self.filters, 
            pageSize: self.pageSize, 
            pageToken: token, 
            sortBy: self.sortBy, 
            sortOrder: self.sortOrder
        )

    }
}


