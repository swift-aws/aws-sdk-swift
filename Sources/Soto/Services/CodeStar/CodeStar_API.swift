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

@_exported import SotoCore

/// Service object for interacting with AWS CodeStar service.
///
/// AWS CodeStar This is the API reference for AWS CodeStar. This reference provides descriptions of the operations and data types for the AWS CodeStar API along with usage examples. You can use the AWS CodeStar API to work with: Projects and their resources, by calling the following:    DeleteProject, which deletes a project.    DescribeProject, which lists the attributes of a project.    ListProjects, which lists all projects associated with your AWS account.    ListResources, which lists the resources associated with a project.    ListTagsForProject, which lists the tags associated with a project.    TagProject, which adds tags to a project.    UntagProject, which removes tags from a project.    UpdateProject, which updates the attributes of a project.   Teams and team members, by calling the following:    AssociateTeamMember, which adds an IAM user to the team for a project.    DisassociateTeamMember, which removes an IAM user from the team for a project.    ListTeamMembers, which lists all the IAM users in the team for a project, including their roles and attributes.    UpdateTeamMember, which updates a team member's attributes in a project.   Users, by calling the following:    CreateUserProfile, which creates a user profile that contains data associated with the user across all projects.    DeleteUserProfile, which deletes all user profile information across all projects.    DescribeUserProfile, which describes the profile of a user.    ListUserProfiles, which lists all user profiles.    UpdateUserProfile, which updates the profile for a user.
public struct CodeStar: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the CodeStar client
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
            amzTarget: "CodeStar_20170419",
            service: "codestar",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2017-04-19",
            endpoint: endpoint,
            errorType: CodeStarErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Adds an IAM user to the team for an AWS CodeStar project.
    public func associateTeamMember(_ input: AssociateTeamMemberRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateTeamMemberResult> {
        return self.client.execute(operation: "AssociateTeamMember", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Creates a project, including project resources. This action creates a project based on a submitted project request. A set of source code files and a toolchain template file can be included with the project request. If these are not provided, an empty project is created.
    public func createProject(_ input: CreateProjectRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateProjectResult> {
        return self.client.execute(operation: "CreateProject", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Creates a profile for a user that includes user preferences, such as the display name and email address assocciated with the user, in AWS CodeStar. The user profile is not project-specific. Information in the user profile is displayed wherever the user's information appears to other users in AWS CodeStar.
    public func createUserProfile(_ input: CreateUserProfileRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateUserProfileResult> {
        return self.client.execute(operation: "CreateUserProfile", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Deletes a project, including project resources. Does not delete users associated with the project, but does delete the IAM roles that allowed access to the project.
    public func deleteProject(_ input: DeleteProjectRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteProjectResult> {
        return self.client.execute(operation: "DeleteProject", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Deletes a user profile in AWS CodeStar, including all personal preference data associated with that profile, such as display name and email address. It does not delete the history of that user, for example the history of commits made by that user.
    public func deleteUserProfile(_ input: DeleteUserProfileRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteUserProfileResult> {
        return self.client.execute(operation: "DeleteUserProfile", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Describes a project and its resources.
    public func describeProject(_ input: DescribeProjectRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProjectResult> {
        return self.client.execute(operation: "DescribeProject", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Describes a user in AWS CodeStar and the user attributes across all projects.
    public func describeUserProfile(_ input: DescribeUserProfileRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserProfileResult> {
        return self.client.execute(operation: "DescribeUserProfile", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Removes a user from a project. Removing a user from a project also removes the IAM policies from that user that allowed access to the project and its resources. Disassociating a team member does not remove that user's profile from AWS CodeStar. It does not remove the user from IAM.
    public func disassociateTeamMember(_ input: DisassociateTeamMemberRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateTeamMemberResult> {
        return self.client.execute(operation: "DisassociateTeamMember", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Lists all projects in AWS CodeStar associated with your AWS account.
    public func listProjects(_ input: ListProjectsRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListProjectsResult> {
        return self.client.execute(operation: "ListProjects", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Lists resources associated with a project in AWS CodeStar.
    public func listResources(_ input: ListResourcesRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListResourcesResult> {
        return self.client.execute(operation: "ListResources", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Gets the tags for a project.
    public func listTagsForProject(_ input: ListTagsForProjectRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForProjectResult> {
        return self.client.execute(operation: "ListTagsForProject", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Lists all team members associated with a project.
    public func listTeamMembers(_ input: ListTeamMembersRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTeamMembersResult> {
        return self.client.execute(operation: "ListTeamMembers", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Lists all the user profiles configured for your AWS account in AWS CodeStar.
    public func listUserProfiles(_ input: ListUserProfilesRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListUserProfilesResult> {
        return self.client.execute(operation: "ListUserProfiles", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Adds tags to a project.
    public func tagProject(_ input: TagProjectRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagProjectResult> {
        return self.client.execute(operation: "TagProject", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Removes tags from a project.
    public func untagProject(_ input: UntagProjectRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagProjectResult> {
        return self.client.execute(operation: "UntagProject", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Updates a project in AWS CodeStar.
    public func updateProject(_ input: UpdateProjectRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateProjectResult> {
        return self.client.execute(operation: "UpdateProject", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Updates a team member's attributes in an AWS CodeStar project. For example, you can change a team member's role in the project, or change whether they have remote access to project resources.
    public func updateTeamMember(_ input: UpdateTeamMemberRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateTeamMemberResult> {
        return self.client.execute(operation: "UpdateTeamMember", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }

    /// Updates a user's profile in AWS CodeStar. The user profile is not project-specific. Information in the user profile is displayed wherever the user's information appears to other users in AWS CodeStar.
    public func updateUserProfile(_ input: UpdateUserProfileRequest, context: LoggingContext, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateUserProfileResult> {
        return self.client.execute(operation: "UpdateUserProfile", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, context: context, on: eventLoop)
    }
}

extension CodeStar {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: CodeStar, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
