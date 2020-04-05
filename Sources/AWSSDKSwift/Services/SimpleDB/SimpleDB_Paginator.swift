// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension SimpleDB {

    ///   The ListDomains operation lists all domains associated with the Access Key ID. It returns domain names up to the limit set by MaxNumberOfDomains. A NextToken is returned if there are more than MaxNumberOfDomains domains. Calling ListDomains successive times with the NextToken provided by the operation returns up to MaxNumberOfDomains more domain names with each successive operation call. 
    public func listDomainsPaginator(_ input: ListDomainsRequest, onPage: @escaping (ListDomainsResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDomains, tokenKey: \ListDomainsResult.nextToken, onPage: onPage)
    }

    ///   The Select operation returns a set of attributes for ItemNames that match the select expression. Select is similar to the standard SQL SELECT statement.   The total size of the response cannot exceed 1 MB in total size. Amazon SimpleDB automatically adjusts the number of items returned per page to enforce this limit. For example, if the client asks to retrieve 2500 items, but each individual item is 10 kB in size, the system returns 100 items and an appropriate NextToken so the client can access the next page of results.   For information on how to construct select expressions, see Using Select to Create Amazon SimpleDB Queries in the Developer Guide. 
    public func selectPaginator(_ input: SelectRequest, onPage: @escaping (SelectResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: select, tokenKey: \SelectResult.nextToken, onPage: onPage)
    }

}

extension SimpleDB.ListDomainsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SimpleDB.ListDomainsRequest {
        return .init(
            maxNumberOfDomains: self.maxNumberOfDomains, 
            nextToken: token
        )

    }
}

extension SimpleDB.SelectRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SimpleDB.SelectRequest {
        return .init(
            consistentRead: self.consistentRead, 
            nextToken: token, 
            selectExpression: self.selectExpression
        )

    }
}


