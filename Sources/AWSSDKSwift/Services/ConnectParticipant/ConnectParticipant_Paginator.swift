// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension ConnectParticipant {

    ///  Retrieves a transcript of the session. Note that ConnectionToken is used for invoking this API instead of ParticipantToken.
    public func getTranscriptPaginator(_ input: GetTranscriptRequest, onPage: @escaping (GetTranscriptResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getTranscript, tokenKey: \GetTranscriptResponse.nextToken, onPage: onPage)
    }

}

extension ConnectParticipant.GetTranscriptRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ConnectParticipant.GetTranscriptRequest {
        return .init(
            connectionToken: self.connectionToken, 
            contactId: self.contactId, 
            maxResults: self.maxResults, 
            nextToken: token, 
            scanDirection: self.scanDirection, 
            sortOrder: self.sortOrder, 
            startPosition: self.startPosition
        )

    }
}


