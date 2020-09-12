// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension CodeArtifact {

    ///   Returns a list of  DomainSummary  objects for all domains owned by the AWS account that makes this call. Each returned DomainSummary object contains information about a domain. 
    public func listDomainsPaginator(_ input: ListDomainsRequest, onPage: @escaping (ListDomainsResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDomains, tokenKey: \ListDomainsResult.nextToken, onPage: onPage)
    }

    ///   Returns a list of  AssetSummary  objects for assets in a package version. 
    public func listPackageVersionAssetsPaginator(_ input: ListPackageVersionAssetsRequest, onPage: @escaping (ListPackageVersionAssetsResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listPackageVersionAssets, tokenKey: \ListPackageVersionAssetsResult.nextToken, onPage: onPage)
    }

    ///   Returns a list of  PackageVersionSummary  objects for package versions in a repository that match the request parameters. 
    public func listPackageVersionsPaginator(_ input: ListPackageVersionsRequest, onPage: @escaping (ListPackageVersionsResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listPackageVersions, tokenKey: \ListPackageVersionsResult.nextToken, onPage: onPage)
    }

    ///   Returns a list of  PackageSummary  objects for packages in a repository that match the request parameters. 
    public func listPackagesPaginator(_ input: ListPackagesRequest, onPage: @escaping (ListPackagesResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listPackages, tokenKey: \ListPackagesResult.nextToken, onPage: onPage)
    }

    ///   Returns a list of  RepositorySummary  objects. Each RepositorySummary contains information about a repository in the specified AWS account and that matches the input parameters. 
    public func listRepositoriesPaginator(_ input: ListRepositoriesRequest, onPage: @escaping (ListRepositoriesResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listRepositories, tokenKey: \ListRepositoriesResult.nextToken, onPage: onPage)
    }

    ///   Returns a list of  RepositorySummary  objects. Each RepositorySummary contains information about a repository in the specified domain and that matches the input parameters. 
    public func listRepositoriesInDomainPaginator(_ input: ListRepositoriesInDomainRequest, onPage: @escaping (ListRepositoriesInDomainResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listRepositoriesInDomain, tokenKey: \ListRepositoriesInDomainResult.nextToken, onPage: onPage)
    }

}

extension CodeArtifact.ListDomainsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> CodeArtifact.ListDomainsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension CodeArtifact.ListPackageVersionAssetsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> CodeArtifact.ListPackageVersionAssetsRequest {
        return .init(
            domain: self.domain, 
            domainOwner: self.domainOwner, 
            format: self.format, 
            maxResults: self.maxResults, 
            namespace: self.namespace, 
            nextToken: token, 
            package: self.package, 
            packageVersion: self.packageVersion, 
            repository: self.repository
        )

    }
}

extension CodeArtifact.ListPackageVersionsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> CodeArtifact.ListPackageVersionsRequest {
        return .init(
            domain: self.domain, 
            domainOwner: self.domainOwner, 
            format: self.format, 
            maxResults: self.maxResults, 
            namespace: self.namespace, 
            nextToken: token, 
            package: self.package, 
            repository: self.repository, 
            sortBy: self.sortBy, 
            status: self.status
        )

    }
}

extension CodeArtifact.ListPackagesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> CodeArtifact.ListPackagesRequest {
        return .init(
            domain: self.domain, 
            domainOwner: self.domainOwner, 
            format: self.format, 
            maxResults: self.maxResults, 
            namespace: self.namespace, 
            nextToken: token, 
            packagePrefix: self.packagePrefix, 
            repository: self.repository
        )

    }
}

extension CodeArtifact.ListRepositoriesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> CodeArtifact.ListRepositoriesRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            repositoryPrefix: self.repositoryPrefix
        )

    }
}

extension CodeArtifact.ListRepositoriesInDomainRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> CodeArtifact.ListRepositoriesInDomainRequest {
        return .init(
            administratorAccount: self.administratorAccount, 
            domain: self.domain, 
            domainOwner: self.domainOwner, 
            maxResults: self.maxResults, 
            nextToken: token, 
            repositoryPrefix: self.repositoryPrefix
        )

    }
}


