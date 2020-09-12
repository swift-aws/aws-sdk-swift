// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension IdentityStore {

    ///  Lists the attribute name and value of the group that you specified in the search. We only support DisplayName as a valid filter attribute path currently, and filter is required. This API returns minimum attributes, including GroupId and group DisplayName in the response.
    public func listGroupsPaginator(_ input: ListGroupsRequest, onPage: @escaping (ListGroupsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listGroups, tokenKey: \ListGroupsResponse.nextToken, onPage: onPage)
    }

    ///  Lists the attribute name and value of the user that you specified in the search. We only support UserName as a valid filter attribute path currently, and filter is required. This API returns minimum attributes, including UserId and UserName in the response.
    public func listUsersPaginator(_ input: ListUsersRequest, onPage: @escaping (ListUsersResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listUsers, tokenKey: \ListUsersResponse.nextToken, onPage: onPage)
    }

}

extension IdentityStore.ListGroupsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IdentityStore.ListGroupsRequest {
        return .init(
            filters: self.filters, 
            identityStoreId: self.identityStoreId, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension IdentityStore.ListUsersRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> IdentityStore.ListUsersRequest {
        return .init(
            filters: self.filters, 
            identityStoreId: self.identityStoreId, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}


