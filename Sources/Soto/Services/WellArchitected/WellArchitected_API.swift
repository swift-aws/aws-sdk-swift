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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

@_exported import SotoCore

/// Service object for interacting with AWS WellArchitected service.
///
/// AWS Well-Architected Tool This is the AWS Well-Architected Tool API Reference. The AWS Well-Architected Tool API provides programmatic access to the AWS Well-Architected Tool in the AWS Management Console.  Managing workloads:     CreateWorkload: Define a new workload.    ListWorkloads: List workloads.    GetWorkload: Get the properties of a workload.    UpdateWorkload: Update the properties of a workload.    DeleteWorkload: Delete a workload.    Managing milestones:     CreateMilestone: Create a milestone.    ListMilestones: List milestones.    GetMilestone: Get the properties of a milestone.    Managing lenses:     ListLenses: List the available lenses.    AssociateLenses: Add one or more lenses to a workload.    DisassociateLenses: Remove one or more lenses from a workload.    ListNotifications: List lens notifications for a workload.    GetLensVersionDifference: Get the differences between the version of a lens used in a workload and the latest version.    UpgradeLensReview: Upgrade a workload to use the latest version of a lens.    Managing reviews:     ListLensReviews: List reviews associated with a workload.    GetLensReview: Get pillar and risk data associated with a workload review.    GetLensReviewReport: Get the report associated with a workload review.    UpdateLensReview: Update the notes associated with a workload review.    ListAnswers: List the questions and answers in a workload review.    UpdateAnswer: Update the answer to a specific question in a workload review.    ListLensReviewImprovements: List the improvement plan associated with a workload review.    Managing workload shares:     ListWorkloadShares: List the workload shares associated with a workload.    CreateWorkloadShare: Create a workload share.    UpdateWorkloadShare: Update a workload share.    DeleteWorkloadShare: Delete a workload share.    Managing workload share invitations:     ListShareInvitations: List workload share invitations.    UpdateShareInvitation: Update a workload share invitation.   For information about the AWS Well-Architected Tool, see the AWS Well-Architected Tool User Guide.
public struct WellArchitected: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the WellArchitected client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "wellarchitected",
            serviceProtocol: .restjson,
            apiVersion: "2020-03-31",
            endpoint: endpoint,
            errorType: WellArchitectedErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Associate a lens to a workload.
    @discardableResult public func associateLenses(_ input: AssociateLensesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "AssociateLenses", path: "/workloads/{WorkloadId}/associateLenses", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create a milestone for an existing workload.
    public func createMilestone(_ input: CreateMilestoneInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMilestoneOutput> {
        return self.client.execute(operation: "CreateMilestone", path: "/workloads/{WorkloadId}/milestones", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create a new workload. The owner of a workload can share the workload with other AWS accounts and IAM users in the same AWS Region. Only the owner of a workload can delete it. For more information, see Defining a Workload in the AWS Well-Architected Tool User Guide.
    public func createWorkload(_ input: CreateWorkloadInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateWorkloadOutput> {
        return self.client.execute(operation: "CreateWorkload", path: "/workloads", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create a workload share. The owner of a workload can share it with other AWS accounts and IAM users in the same AWS Region. Shared access to a workload is not removed until the workload invitation is deleted. For more information, see Sharing a Workload in the AWS Well-Architected Tool User Guide.
    public func createWorkloadShare(_ input: CreateWorkloadShareInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateWorkloadShareOutput> {
        return self.client.execute(operation: "CreateWorkloadShare", path: "/workloads/{WorkloadId}/shares", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete an existing workload.
    @discardableResult public func deleteWorkload(_ input: DeleteWorkloadInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteWorkload", path: "/workloads/{WorkloadId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete a workload share.
    @discardableResult public func deleteWorkloadShare(_ input: DeleteWorkloadShareInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteWorkloadShare", path: "/workloads/{WorkloadId}/shares/{ShareId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociate a lens from a workload.  The AWS Well-Architected Framework lens (wellarchitected) cannot be removed from a workload.
    @discardableResult public func disassociateLenses(_ input: DisassociateLensesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DisassociateLenses", path: "/workloads/{WorkloadId}/disassociateLenses", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get lens review.
    public func getAnswer(_ input: GetAnswerInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAnswerOutput> {
        return self.client.execute(operation: "GetAnswer", path: "/workloads/{WorkloadId}/lensReviews/{LensAlias}/answers/{QuestionId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get lens review.
    public func getLensReview(_ input: GetLensReviewInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetLensReviewOutput> {
        return self.client.execute(operation: "GetLensReview", path: "/workloads/{WorkloadId}/lensReviews/{LensAlias}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get lens review report.
    public func getLensReviewReport(_ input: GetLensReviewReportInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetLensReviewReportOutput> {
        return self.client.execute(operation: "GetLensReviewReport", path: "/workloads/{WorkloadId}/lensReviews/{LensAlias}/report", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get lens version differences.
    public func getLensVersionDifference(_ input: GetLensVersionDifferenceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetLensVersionDifferenceOutput> {
        return self.client.execute(operation: "GetLensVersionDifference", path: "/lenses/{LensAlias}/versionDifference", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get a milestone for an existing workload.
    public func getMilestone(_ input: GetMilestoneInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetMilestoneOutput> {
        return self.client.execute(operation: "GetMilestone", path: "/workloads/{WorkloadId}/milestones/{MilestoneNumber}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get an existing workload.
    public func getWorkload(_ input: GetWorkloadInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetWorkloadOutput> {
        return self.client.execute(operation: "GetWorkload", path: "/workloads/{WorkloadId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List of answers.
    public func listAnswers(_ input: ListAnswersInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAnswersOutput> {
        return self.client.execute(operation: "ListAnswers", path: "/workloads/{WorkloadId}/lensReviews/{LensAlias}/answers", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List lens review improvements.
    public func listLensReviewImprovements(_ input: ListLensReviewImprovementsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListLensReviewImprovementsOutput> {
        return self.client.execute(operation: "ListLensReviewImprovements", path: "/workloads/{WorkloadId}/lensReviews/{LensAlias}/improvements", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List lens reviews.
    public func listLensReviews(_ input: ListLensReviewsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListLensReviewsOutput> {
        return self.client.execute(operation: "ListLensReviews", path: "/workloads/{WorkloadId}/lensReviews", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List the available lenses.
    public func listLenses(_ input: ListLensesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListLensesOutput> {
        return self.client.execute(operation: "ListLenses", path: "/lenses", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List all milestones for an existing workload.
    public func listMilestones(_ input: ListMilestonesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListMilestonesOutput> {
        return self.client.execute(operation: "ListMilestones", path: "/workloads/{WorkloadId}/milestonesSummaries", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List lens notifications.
    public func listNotifications(_ input: ListNotificationsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListNotificationsOutput> {
        return self.client.execute(operation: "ListNotifications", path: "/notifications", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List the workload invitations.
    public func listShareInvitations(_ input: ListShareInvitationsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListShareInvitationsOutput> {
        return self.client.execute(operation: "ListShareInvitations", path: "/shareInvitations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List the workload shares associated with the workload.
    public func listWorkloadShares(_ input: ListWorkloadSharesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListWorkloadSharesOutput> {
        return self.client.execute(operation: "ListWorkloadShares", path: "/workloads/{WorkloadId}/shares", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List workloads. Paginated.
    public func listWorkloads(_ input: ListWorkloadsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListWorkloadsOutput> {
        return self.client.execute(operation: "ListWorkloads", path: "/workloadsSummaries", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update the answer.
    public func updateAnswer(_ input: UpdateAnswerInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateAnswerOutput> {
        return self.client.execute(operation: "UpdateAnswer", path: "/workloads/{WorkloadId}/lensReviews/{LensAlias}/answers/{QuestionId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update lens review.
    public func updateLensReview(_ input: UpdateLensReviewInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateLensReviewOutput> {
        return self.client.execute(operation: "UpdateLensReview", path: "/workloads/{WorkloadId}/lensReviews/{LensAlias}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update a workload invitation.
    public func updateShareInvitation(_ input: UpdateShareInvitationInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateShareInvitationOutput> {
        return self.client.execute(operation: "UpdateShareInvitation", path: "/shareInvitations/{ShareInvitationId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update an existing workload.
    public func updateWorkload(_ input: UpdateWorkloadInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateWorkloadOutput> {
        return self.client.execute(operation: "UpdateWorkload", path: "/workloads/{WorkloadId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update a workload share.
    public func updateWorkloadShare(_ input: UpdateWorkloadShareInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateWorkloadShareOutput> {
        return self.client.execute(operation: "UpdateWorkloadShare", path: "/workloads/{WorkloadId}/shares/{ShareId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Upgrade lens review.
    @discardableResult public func upgradeLensReview(_ input: UpgradeLensReviewInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "UpgradeLensReview", path: "/workloads/{WorkloadId}/lensReviews/{LensAlias}/upgrade", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension WellArchitected {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: WellArchitected, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
