// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension KMS {

    ///  Gets a list of aliases in the caller's AWS account and region. You cannot list aliases in other accounts. For more information about aliases, see CreateAlias. By default, the ListAliases command returns all aliases in the account and region. To get only the aliases that point to a particular customer master key (CMK), use the KeyId parameter. The ListAliases response can include aliases that you created and associated with your customer managed CMKs, and aliases that AWS created and associated with AWS managed CMKs in your account. You can recognize AWS aliases because their names have the format aws/&lt;service-name&gt;, such as aws/dynamodb. The response might also include aliases that have no TargetKeyId field. These are predefined aliases that AWS has created but has not yet associated with a CMK. Aliases that AWS creates in your account, including predefined aliases, do not count against your AWS KMS aliases quota.
    public func listAliasesPaginator(_ input: ListAliasesRequest, onPage: @escaping (ListAliasesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listAliases, tokenKey: \ListAliasesResponse.nextMarker, onPage: onPage)
    }

    ///  Gets a list of all grants for the specified customer master key (CMK). To perform this operation on a CMK in a different AWS account, specify the key ARN in the value of the KeyId parameter.
    public func listGrantsPaginator(_ input: ListGrantsRequest, onPage: @escaping (ListGrantsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listGrants, tokenKey: \ListGrantsResponse.nextMarker, onPage: onPage)
    }

    ///  Gets the names of the key policies that are attached to a customer master key (CMK). This operation is designed to get policy names that you can use in a GetKeyPolicy operation. However, the only valid policy name is default. You cannot perform this operation on a CMK in a different AWS account.
    public func listKeyPoliciesPaginator(_ input: ListKeyPoliciesRequest, onPage: @escaping (ListKeyPoliciesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listKeyPolicies, tokenKey: \ListKeyPoliciesResponse.nextMarker, onPage: onPage)
    }

    ///  Gets a list of all customer master keys (CMKs) in the caller's AWS account and Region.
    public func listKeysPaginator(_ input: ListKeysRequest, onPage: @escaping (ListKeysResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listKeys, tokenKey: \ListKeysResponse.nextMarker, onPage: onPage)
    }

}

extension KMS.ListAliasesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> KMS.ListAliasesRequest {
        return .init(
            keyId: self.keyId, 
            limit: self.limit, 
            marker: token
        )

    }
}

extension KMS.ListGrantsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> KMS.ListGrantsRequest {
        return .init(
            keyId: self.keyId, 
            limit: self.limit, 
            marker: token
        )

    }
}

extension KMS.ListKeyPoliciesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> KMS.ListKeyPoliciesRequest {
        return .init(
            keyId: self.keyId, 
            limit: self.limit, 
            marker: token
        )

    }
}

extension KMS.ListKeysRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> KMS.ListKeysRequest {
        return .init(
            limit: self.limit, 
            marker: token
        )

    }
}


