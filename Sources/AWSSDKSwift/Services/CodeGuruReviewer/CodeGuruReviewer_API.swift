// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS CodeGuruReviewer service.

This section provides documentation for the Amazon CodeGuru Reviewer API operations.
*/
public struct CodeGuruReviewer {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the CodeGuruReviewer client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - eventLoopGroupProvider: EventLoopGroup to use. Use `useAWSClientShared` if the client shall manage its own EventLoopGroup.
    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider = .useAWSClientShared) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "codeguru-reviewer",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2019-09-19",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [CodeGuruReviewerErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }
    
    //MARK: API Calls

    ///  Associates an AWS CodeCommit repository with Amazon CodeGuru Reviewer. When you associate an AWS CodeCommit repository with Amazon CodeGuru Reviewer, Amazon CodeGuru Reviewer will provide recommendations for each pull request raised within the repository. You can view recommendations in the AWS CodeCommit repository. You can associate a GitHub repository using the Amazon CodeGuru Reviewer console.
    public func associateRepository(_ input: AssociateRepositoryRequest) -> EventLoopFuture<AssociateRepositoryResponse> {
        return client.send(operation: "AssociateRepository", path: "/associations", httpMethod: "POST", input: input)
    }

    ///   Returns the metadaata associated with the code review along with its status.
    public func describeCodeReview(_ input: DescribeCodeReviewRequest) -> EventLoopFuture<DescribeCodeReviewResponse> {
        return client.send(operation: "DescribeCodeReview", path: "/codereviews/{CodeReviewArn}", httpMethod: "GET", input: input)
    }

    ///   Describes the customer feedback for a CodeGuru Reviewer recommendation. 
    public func describeRecommendationFeedback(_ input: DescribeRecommendationFeedbackRequest) -> EventLoopFuture<DescribeRecommendationFeedbackResponse> {
        return client.send(operation: "DescribeRecommendationFeedback", path: "/feedback/{CodeReviewArn}", httpMethod: "GET", input: input)
    }

    ///  Describes a repository association.
    public func describeRepositoryAssociation(_ input: DescribeRepositoryAssociationRequest) -> EventLoopFuture<DescribeRepositoryAssociationResponse> {
        return client.send(operation: "DescribeRepositoryAssociation", path: "/associations/{AssociationArn}", httpMethod: "GET", input: input)
    }

    ///  Removes the association between Amazon CodeGuru Reviewer and a repository.
    public func disassociateRepository(_ input: DisassociateRepositoryRequest) -> EventLoopFuture<DisassociateRepositoryResponse> {
        return client.send(operation: "DisassociateRepository", path: "/associations/{AssociationArn}", httpMethod: "DELETE", input: input)
    }

    ///   Lists all the code reviews that the customer has created in the past 90 days. 
    public func listCodeReviews(_ input: ListCodeReviewsRequest) -> EventLoopFuture<ListCodeReviewsResponse> {
        return client.send(operation: "ListCodeReviews", path: "/codereviews", httpMethod: "GET", input: input)
    }

    ///   Lists the customer feedback for a CodeGuru Reviewer recommendation for all users. This API will be used from the console to extract the previously given feedback by the user to pre-populate the feedback emojis for all recommendations. 
    public func listRecommendationFeedback(_ input: ListRecommendationFeedbackRequest) -> EventLoopFuture<ListRecommendationFeedbackResponse> {
        return client.send(operation: "ListRecommendationFeedback", path: "/feedback/{CodeReviewArn}/RecommendationFeedback", httpMethod: "GET", input: input)
    }

    ///   Returns the list of all recommendations for a completed code review. 
    public func listRecommendations(_ input: ListRecommendationsRequest) -> EventLoopFuture<ListRecommendationsResponse> {
        return client.send(operation: "ListRecommendations", path: "/codereviews/{CodeReviewArn}/Recommendations", httpMethod: "GET", input: input)
    }

    ///  Lists repository associations. You can optionally filter on one or more of the following recommendation properties: provider types, states, names, and owners.
    public func listRepositoryAssociations(_ input: ListRepositoryAssociationsRequest) -> EventLoopFuture<ListRepositoryAssociationsResponse> {
        return client.send(operation: "ListRepositoryAssociations", path: "/associations", httpMethod: "GET", input: input)
    }

    ///   Stores customer feedback for a CodeGuru-Reviewer recommendation. When this API is called again with different reactions the previous feedback is overwritten. 
    public func putRecommendationFeedback(_ input: PutRecommendationFeedbackRequest) -> EventLoopFuture<PutRecommendationFeedbackResponse> {
        return client.send(operation: "PutRecommendationFeedback", path: "/feedback", httpMethod: "PUT", input: input)
    }
}
