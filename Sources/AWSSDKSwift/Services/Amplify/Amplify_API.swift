// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
 Amplify is a fully managed continuous deployment and hosting service for modern web apps. 
*/
public struct Amplify {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "amplify",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-07-25",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [AmplifyErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }

    ///   Creates a new Amplify App. 
    public func createApp(_ input: CreateAppRequest) -> Future<CreateAppResult> {
        return client.send(operation: "CreateApp", path: "/apps", httpMethod: "POST", input: input)
    }

    ///   Creates a new Branch for an Amplify App. 
    public func createBranch(_ input: CreateBranchRequest) -> Future<CreateBranchResult> {
        return client.send(operation: "CreateBranch", path: "/apps/{appId}/branches", httpMethod: "POST", input: input)
    }

    ///   Create a deployment for manual deploy apps. (Apps are not connected to repository) 
    public func createDeployment(_ input: CreateDeploymentRequest) -> Future<CreateDeploymentResult> {
        return client.send(operation: "CreateDeployment", path: "/apps/{appId}/branches/{branchName}/deployments", httpMethod: "POST", input: input)
    }

    ///   Create a new DomainAssociation on an App 
    public func createDomainAssociation(_ input: CreateDomainAssociationRequest) -> Future<CreateDomainAssociationResult> {
        return client.send(operation: "CreateDomainAssociation", path: "/apps/{appId}/domains", httpMethod: "POST", input: input)
    }

    ///   Create a new webhook on an App. 
    public func createWebhook(_ input: CreateWebhookRequest) -> Future<CreateWebhookResult> {
        return client.send(operation: "CreateWebhook", path: "/apps/{appId}/webhooks", httpMethod: "POST", input: input)
    }

    ///   Delete an existing Amplify App by appId. 
    public func deleteApp(_ input: DeleteAppRequest) -> Future<DeleteAppResult> {
        return client.send(operation: "DeleteApp", path: "/apps/{appId}", httpMethod: "DELETE", input: input)
    }

    ///   Deletes a branch for an Amplify App. 
    public func deleteBranch(_ input: DeleteBranchRequest) -> Future<DeleteBranchResult> {
        return client.send(operation: "DeleteBranch", path: "/apps/{appId}/branches/{branchName}", httpMethod: "DELETE", input: input)
    }

    ///   Deletes a DomainAssociation. 
    public func deleteDomainAssociation(_ input: DeleteDomainAssociationRequest) -> Future<DeleteDomainAssociationResult> {
        return client.send(operation: "DeleteDomainAssociation", path: "/apps/{appId}/domains/{domainName}", httpMethod: "DELETE", input: input)
    }

    ///   Delete a job, for an Amplify branch, part of Amplify App. 
    public func deleteJob(_ input: DeleteJobRequest) -> Future<DeleteJobResult> {
        return client.send(operation: "DeleteJob", path: "/apps/{appId}/branches/{branchName}/jobs/{jobId}", httpMethod: "DELETE", input: input)
    }

    ///   Deletes a webhook. 
    public func deleteWebhook(_ input: DeleteWebhookRequest) -> Future<DeleteWebhookResult> {
        return client.send(operation: "DeleteWebhook", path: "/webhooks/{webhookId}", httpMethod: "DELETE", input: input)
    }

    ///   Retrieve website access logs for a specific time range via a pre-signed URL. Optionally, deliver the logs to a given S3 bucket. 
    public func generateAccessLogs(_ input: GenerateAccessLogsRequest) -> Future<GenerateAccessLogsResult> {
        return client.send(operation: "GenerateAccessLogs", path: "/apps/{appId}/accesslogs", httpMethod: "POST", input: input)
    }

    ///   Retrieves an existing Amplify App by appId. 
    public func getApp(_ input: GetAppRequest) -> Future<GetAppResult> {
        return client.send(operation: "GetApp", path: "/apps/{appId}", httpMethod: "GET", input: input)
    }

    ///   Retrieves artifact info that corresponds to a artifactId. 
    public func getArtifactUrl(_ input: GetArtifactUrlRequest) -> Future<GetArtifactUrlResult> {
        return client.send(operation: "GetArtifactUrl", path: "/artifacts/{artifactId}", httpMethod: "GET", input: input)
    }

    ///   Retrieves a branch for an Amplify App. 
    public func getBranch(_ input: GetBranchRequest) -> Future<GetBranchResult> {
        return client.send(operation: "GetBranch", path: "/apps/{appId}/branches/{branchName}", httpMethod: "GET", input: input)
    }

    ///   Retrieves domain info that corresponds to an appId and domainName. 
    public func getDomainAssociation(_ input: GetDomainAssociationRequest) -> Future<GetDomainAssociationResult> {
        return client.send(operation: "GetDomainAssociation", path: "/apps/{appId}/domains/{domainName}", httpMethod: "GET", input: input)
    }

    ///   Get a job for a branch, part of an Amplify App. 
    public func getJob(_ input: GetJobRequest) -> Future<GetJobResult> {
        return client.send(operation: "GetJob", path: "/apps/{appId}/branches/{branchName}/jobs/{jobId}", httpMethod: "GET", input: input)
    }

    ///   Retrieves webhook info that corresponds to a webhookId. 
    public func getWebhook(_ input: GetWebhookRequest) -> Future<GetWebhookResult> {
        return client.send(operation: "GetWebhook", path: "/webhooks/{webhookId}", httpMethod: "GET", input: input)
    }

    ///   Lists existing Amplify Apps. 
    public func listApps(_ input: ListAppsRequest) -> Future<ListAppsResult> {
        return client.send(operation: "ListApps", path: "/apps", httpMethod: "GET", input: input)
    }

    ///   List artifacts with an app, a branch, a job and an artifact type. 
    public func listArtifacts(_ input: ListArtifactsRequest) -> Future<ListArtifactsResult> {
        return client.send(operation: "ListArtifacts", path: "/apps/{appId}/branches/{branchName}/jobs/{jobId}/artifacts", httpMethod: "GET", input: input)
    }

    ///   Lists branches for an Amplify App. 
    public func listBranches(_ input: ListBranchesRequest) -> Future<ListBranchesResult> {
        return client.send(operation: "ListBranches", path: "/apps/{appId}/branches", httpMethod: "GET", input: input)
    }

    ///   List domains with an app 
    public func listDomainAssociations(_ input: ListDomainAssociationsRequest) -> Future<ListDomainAssociationsResult> {
        return client.send(operation: "ListDomainAssociations", path: "/apps/{appId}/domains", httpMethod: "GET", input: input)
    }

    ///   List Jobs for a branch, part of an Amplify App. 
    public func listJobs(_ input: ListJobsRequest) -> Future<ListJobsResult> {
        return client.send(operation: "ListJobs", path: "/apps/{appId}/branches/{branchName}/jobs", httpMethod: "GET", input: input)
    }

    ///   List tags for resource. 
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> Future<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: "GET", input: input)
    }

    ///   List webhooks with an app. 
    public func listWebhooks(_ input: ListWebhooksRequest) -> Future<ListWebhooksResult> {
        return client.send(operation: "ListWebhooks", path: "/apps/{appId}/webhooks", httpMethod: "GET", input: input)
    }

    ///   Start a deployment for manual deploy apps. (Apps are not connected to repository) 
    public func startDeployment(_ input: StartDeploymentRequest) -> Future<StartDeploymentResult> {
        return client.send(operation: "StartDeployment", path: "/apps/{appId}/branches/{branchName}/deployments/start", httpMethod: "POST", input: input)
    }

    ///   Starts a new job for a branch, part of an Amplify App. 
    public func startJob(_ input: StartJobRequest) -> Future<StartJobResult> {
        return client.send(operation: "StartJob", path: "/apps/{appId}/branches/{branchName}/jobs", httpMethod: "POST", input: input)
    }

    ///   Stop a job that is in progress, for an Amplify branch, part of Amplify App. 
    public func stopJob(_ input: StopJobRequest) -> Future<StopJobResult> {
        return client.send(operation: "StopJob", path: "/apps/{appId}/branches/{branchName}/jobs/{jobId}/stop", httpMethod: "DELETE", input: input)
    }

    ///   Tag resource with tag key and value. 
    public func tagResource(_ input: TagResourceRequest) -> Future<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: "POST", input: input)
    }

    ///   Untag resource with resourceArn. 
    public func untagResource(_ input: UntagResourceRequest) -> Future<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: "DELETE", input: input)
    }

    ///   Updates an existing Amplify App. 
    public func updateApp(_ input: UpdateAppRequest) -> Future<UpdateAppResult> {
        return client.send(operation: "UpdateApp", path: "/apps/{appId}", httpMethod: "POST", input: input)
    }

    ///   Updates a branch for an Amplify App. 
    public func updateBranch(_ input: UpdateBranchRequest) -> Future<UpdateBranchResult> {
        return client.send(operation: "UpdateBranch", path: "/apps/{appId}/branches/{branchName}", httpMethod: "POST", input: input)
    }

    ///   Create a new DomainAssociation on an App 
    public func updateDomainAssociation(_ input: UpdateDomainAssociationRequest) -> Future<UpdateDomainAssociationResult> {
        return client.send(operation: "UpdateDomainAssociation", path: "/apps/{appId}/domains/{domainName}", httpMethod: "POST", input: input)
    }

    ///   Update a webhook. 
    public func updateWebhook(_ input: UpdateWebhookRequest) -> Future<UpdateWebhookResult> {
        return client.send(operation: "UpdateWebhook", path: "/webhooks/{webhookId}", httpMethod: "POST", input: input)
    }
}
