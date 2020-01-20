// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.


extension WorkDocs {

    ///  Retrieves the document versions for the specified document. By default, only active versions are returned.
    public func describeDocumentVersionsPaginator(_ input: DescribeDocumentVersionsRequest) -> Future<[DocumentVersionMetadata]> {
        return client.paginate(input: input, command: describeDocumentVersions, resultKey: "documentVersions", tokenKey: "marker")
    }
    
    ///  Describes the contents of the specified folder, including its documents and subfolders. By default, Amazon WorkDocs returns the first 100 active document and folder metadata items. If there are more results, the response includes a marker that you can use to request the next set of results. You can also request initialized documents.
    public func describeFolderContentsPaginator(_ input: DescribeFolderContentsRequest) -> Future<[FolderMetadata]> {
        return client.paginate(input: input, command: describeFolderContents, resultKey: "folders", tokenKey: "marker")
    }
    
    ///  Describes the specified users. You can describe all users or filter the results (for example, by status or organization). By default, Amazon WorkDocs returns the first 24 active or pending users. If there are more results, the response includes a marker that you can use to request the next set of results.
    public func describeUsersPaginator(_ input: DescribeUsersRequest) -> Future<[User]> {
        return client.paginate(input: input, command: describeUsers, resultKey: "users", tokenKey: "marker")
    }
    
}

extension WorkDocs.DescribeDocumentVersionsRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            authenticationToken: original.authenticationToken, 
            documentId: original.documentId, 
            fields: original.fields, 
            include: original.include, 
            limit: original.limit, 
            marker: token
        )
    }
}

extension WorkDocs.DescribeFolderContentsRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            authenticationToken: original.authenticationToken, 
            folderId: original.folderId, 
            include: original.include, 
            limit: original.limit, 
            marker: token, 
            order: original.order, 
            sort: original.sort, 
            type: original.type
        )
    }
}

extension WorkDocs.DescribeUsersRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            authenticationToken: original.authenticationToken, 
            fields: original.fields, 
            include: original.include, 
            limit: original.limit, 
            marker: token, 
            order: original.order, 
            organizationId: original.organizationId, 
            query: original.query, 
            sort: original.sort, 
            userIds: original.userIds
        )
    }
}

