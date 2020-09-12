// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS Imagebuilder service.

EC2 Image Builder is a fully managed AWS service that makes it easier to automate the creation, management, and deployment of customized, secure, and up-to-date “golden” server images that are pre-installed and pre-configured with software and settings to meet specific IT standards.
*/
public struct Imagebuilder {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the Imagebuilder client
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
            service: "imagebuilder",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2019-12-02",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [ImagebuilderErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }
    
    //MARK: API Calls

    ///  CancelImageCreation cancels the creation of Image. This operation can only be used on images in a non-terminal state.
    public func cancelImageCreation(_ input: CancelImageCreationRequest) -> EventLoopFuture<CancelImageCreationResponse> {
        return client.send(operation: "CancelImageCreation", path: "/CancelImageCreation", httpMethod: "PUT", input: input)
    }

    ///  Creates a new component that can be used to build, validate, test, and assess your image.
    public func createComponent(_ input: CreateComponentRequest) -> EventLoopFuture<CreateComponentResponse> {
        return client.send(operation: "CreateComponent", path: "/CreateComponent", httpMethod: "PUT", input: input)
    }

    ///  Creates a new distribution configuration. Distribution configurations define and configure the outputs of your pipeline. 
    public func createDistributionConfiguration(_ input: CreateDistributionConfigurationRequest) -> EventLoopFuture<CreateDistributionConfigurationResponse> {
        return client.send(operation: "CreateDistributionConfiguration", path: "/CreateDistributionConfiguration", httpMethod: "PUT", input: input)
    }

    ///   Creates a new image. This request will create a new image along with all of the configured output resources defined in the distribution configuration. 
    public func createImage(_ input: CreateImageRequest) -> EventLoopFuture<CreateImageResponse> {
        return client.send(operation: "CreateImage", path: "/CreateImage", httpMethod: "PUT", input: input)
    }

    ///   Creates a new image pipeline. Image pipelines enable you to automate the creation and distribution of images. 
    public func createImagePipeline(_ input: CreateImagePipelineRequest) -> EventLoopFuture<CreateImagePipelineResponse> {
        return client.send(operation: "CreateImagePipeline", path: "/CreateImagePipeline", httpMethod: "PUT", input: input)
    }

    ///   Creates a new image recipe. Image recipes define how images are configured, tested, and assessed. 
    public func createImageRecipe(_ input: CreateImageRecipeRequest) -> EventLoopFuture<CreateImageRecipeResponse> {
        return client.send(operation: "CreateImageRecipe", path: "/CreateImageRecipe", httpMethod: "PUT", input: input)
    }

    ///   Creates a new infrastructure configuration. An infrastructure configuration defines the environment in which your image will be built and tested. 
    public func createInfrastructureConfiguration(_ input: CreateInfrastructureConfigurationRequest) -> EventLoopFuture<CreateInfrastructureConfigurationResponse> {
        return client.send(operation: "CreateInfrastructureConfiguration", path: "/CreateInfrastructureConfiguration", httpMethod: "PUT", input: input)
    }

    ///   Deletes a component build version. 
    public func deleteComponent(_ input: DeleteComponentRequest) -> EventLoopFuture<DeleteComponentResponse> {
        return client.send(operation: "DeleteComponent", path: "/DeleteComponent", httpMethod: "DELETE", input: input)
    }

    ///   Deletes a distribution configuration. 
    public func deleteDistributionConfiguration(_ input: DeleteDistributionConfigurationRequest) -> EventLoopFuture<DeleteDistributionConfigurationResponse> {
        return client.send(operation: "DeleteDistributionConfiguration", path: "/DeleteDistributionConfiguration", httpMethod: "DELETE", input: input)
    }

    ///   Deletes an image. 
    public func deleteImage(_ input: DeleteImageRequest) -> EventLoopFuture<DeleteImageResponse> {
        return client.send(operation: "DeleteImage", path: "/DeleteImage", httpMethod: "DELETE", input: input)
    }

    ///   Deletes an image pipeline. 
    public func deleteImagePipeline(_ input: DeleteImagePipelineRequest) -> EventLoopFuture<DeleteImagePipelineResponse> {
        return client.send(operation: "DeleteImagePipeline", path: "/DeleteImagePipeline", httpMethod: "DELETE", input: input)
    }

    ///   Deletes an image recipe. 
    public func deleteImageRecipe(_ input: DeleteImageRecipeRequest) -> EventLoopFuture<DeleteImageRecipeResponse> {
        return client.send(operation: "DeleteImageRecipe", path: "/DeleteImageRecipe", httpMethod: "DELETE", input: input)
    }

    ///   Deletes an infrastructure configuration. 
    public func deleteInfrastructureConfiguration(_ input: DeleteInfrastructureConfigurationRequest) -> EventLoopFuture<DeleteInfrastructureConfigurationResponse> {
        return client.send(operation: "DeleteInfrastructureConfiguration", path: "/DeleteInfrastructureConfiguration", httpMethod: "DELETE", input: input)
    }

    ///   Gets a component object. 
    public func getComponent(_ input: GetComponentRequest) -> EventLoopFuture<GetComponentResponse> {
        return client.send(operation: "GetComponent", path: "/GetComponent", httpMethod: "GET", input: input)
    }

    ///   Gets a component policy. 
    public func getComponentPolicy(_ input: GetComponentPolicyRequest) -> EventLoopFuture<GetComponentPolicyResponse> {
        return client.send(operation: "GetComponentPolicy", path: "/GetComponentPolicy", httpMethod: "GET", input: input)
    }

    ///   Gets a distribution configuration. 
    public func getDistributionConfiguration(_ input: GetDistributionConfigurationRequest) -> EventLoopFuture<GetDistributionConfigurationResponse> {
        return client.send(operation: "GetDistributionConfiguration", path: "/GetDistributionConfiguration", httpMethod: "GET", input: input)
    }

    ///   Gets an image. 
    public func getImage(_ input: GetImageRequest) -> EventLoopFuture<GetImageResponse> {
        return client.send(operation: "GetImage", path: "/GetImage", httpMethod: "GET", input: input)
    }

    ///   Gets an image pipeline. 
    public func getImagePipeline(_ input: GetImagePipelineRequest) -> EventLoopFuture<GetImagePipelineResponse> {
        return client.send(operation: "GetImagePipeline", path: "/GetImagePipeline", httpMethod: "GET", input: input)
    }

    ///   Gets an image policy. 
    public func getImagePolicy(_ input: GetImagePolicyRequest) -> EventLoopFuture<GetImagePolicyResponse> {
        return client.send(operation: "GetImagePolicy", path: "/GetImagePolicy", httpMethod: "GET", input: input)
    }

    ///   Gets an image recipe. 
    public func getImageRecipe(_ input: GetImageRecipeRequest) -> EventLoopFuture<GetImageRecipeResponse> {
        return client.send(operation: "GetImageRecipe", path: "/GetImageRecipe", httpMethod: "GET", input: input)
    }

    ///   Gets an image recipe policy. 
    public func getImageRecipePolicy(_ input: GetImageRecipePolicyRequest) -> EventLoopFuture<GetImageRecipePolicyResponse> {
        return client.send(operation: "GetImageRecipePolicy", path: "/GetImageRecipePolicy", httpMethod: "GET", input: input)
    }

    ///   Gets an infrastructure configuration. 
    public func getInfrastructureConfiguration(_ input: GetInfrastructureConfigurationRequest) -> EventLoopFuture<GetInfrastructureConfigurationResponse> {
        return client.send(operation: "GetInfrastructureConfiguration", path: "/GetInfrastructureConfiguration", httpMethod: "GET", input: input)
    }

    ///  Imports a component and transforms its data into a component document. 
    public func importComponent(_ input: ImportComponentRequest) -> EventLoopFuture<ImportComponentResponse> {
        return client.send(operation: "ImportComponent", path: "/ImportComponent", httpMethod: "PUT", input: input)
    }

    ///   Returns the list of component build versions for the specified semantic version. 
    public func listComponentBuildVersions(_ input: ListComponentBuildVersionsRequest) -> EventLoopFuture<ListComponentBuildVersionsResponse> {
        return client.send(operation: "ListComponentBuildVersions", path: "/ListComponentBuildVersions", httpMethod: "POST", input: input)
    }

    ///  Returns the list of component build versions for the specified semantic version. 
    public func listComponents(_ input: ListComponentsRequest) -> EventLoopFuture<ListComponentsResponse> {
        return client.send(operation: "ListComponents", path: "/ListComponents", httpMethod: "POST", input: input)
    }

    ///   Returns a list of distribution configurations. 
    public func listDistributionConfigurations(_ input: ListDistributionConfigurationsRequest) -> EventLoopFuture<ListDistributionConfigurationsResponse> {
        return client.send(operation: "ListDistributionConfigurations", path: "/ListDistributionConfigurations", httpMethod: "POST", input: input)
    }

    ///   Returns a list of image build versions. 
    public func listImageBuildVersions(_ input: ListImageBuildVersionsRequest) -> EventLoopFuture<ListImageBuildVersionsResponse> {
        return client.send(operation: "ListImageBuildVersions", path: "/ListImageBuildVersions", httpMethod: "POST", input: input)
    }

    ///   Returns a list of images created by the specified pipeline. 
    public func listImagePipelineImages(_ input: ListImagePipelineImagesRequest) -> EventLoopFuture<ListImagePipelineImagesResponse> {
        return client.send(operation: "ListImagePipelineImages", path: "/ListImagePipelineImages", httpMethod: "POST", input: input)
    }

    ///  Returns a list of image pipelines. 
    public func listImagePipelines(_ input: ListImagePipelinesRequest) -> EventLoopFuture<ListImagePipelinesResponse> {
        return client.send(operation: "ListImagePipelines", path: "/ListImagePipelines", httpMethod: "POST", input: input)
    }

    ///   Returns a list of image recipes. 
    public func listImageRecipes(_ input: ListImageRecipesRequest) -> EventLoopFuture<ListImageRecipesResponse> {
        return client.send(operation: "ListImageRecipes", path: "/ListImageRecipes", httpMethod: "POST", input: input)
    }

    ///   Returns the list of images that you have access to. 
    public func listImages(_ input: ListImagesRequest) -> EventLoopFuture<ListImagesResponse> {
        return client.send(operation: "ListImages", path: "/ListImages", httpMethod: "POST", input: input)
    }

    ///   Returns a list of infrastructure configurations. 
    public func listInfrastructureConfigurations(_ input: ListInfrastructureConfigurationsRequest) -> EventLoopFuture<ListInfrastructureConfigurationsResponse> {
        return client.send(operation: "ListInfrastructureConfigurations", path: "/ListInfrastructureConfigurations", httpMethod: "POST", input: input)
    }

    ///   Returns the list of tags for the specified resource. 
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: "GET", input: input)
    }

    ///   Applies a policy to a component. We recommend that you call the RAM API CreateResourceShare to share resources. If you call the Image Builder API PutComponentPolicy, you must also call the RAM API PromoteResourceShareCreatedFromPolicy in order for the resource to be visible to all principals with whom the resource is shared. 
    public func putComponentPolicy(_ input: PutComponentPolicyRequest) -> EventLoopFuture<PutComponentPolicyResponse> {
        return client.send(operation: "PutComponentPolicy", path: "/PutComponentPolicy", httpMethod: "PUT", input: input)
    }

    ///  Applies a policy to an image. We recommend that you call the RAM API CreateResourceShare to share resources. If you call the Image Builder API PutImagePolicy, you must also call the RAM API PromoteResourceShareCreatedFromPolicy in order for the resource to be visible to all principals with whom the resource is shared. 
    public func putImagePolicy(_ input: PutImagePolicyRequest) -> EventLoopFuture<PutImagePolicyResponse> {
        return client.send(operation: "PutImagePolicy", path: "/PutImagePolicy", httpMethod: "PUT", input: input)
    }

    ///   Applies a policy to an image recipe. We recommend that you call the RAM API CreateResourceShare to share resources. If you call the Image Builder API PutImageRecipePolicy, you must also call the RAM API PromoteResourceShareCreatedFromPolicy in order for the resource to be visible to all principals with whom the resource is shared. 
    public func putImageRecipePolicy(_ input: PutImageRecipePolicyRequest) -> EventLoopFuture<PutImageRecipePolicyResponse> {
        return client.send(operation: "PutImageRecipePolicy", path: "/PutImageRecipePolicy", httpMethod: "PUT", input: input)
    }

    ///   Manually triggers a pipeline to create an image. 
    public func startImagePipelineExecution(_ input: StartImagePipelineExecutionRequest) -> EventLoopFuture<StartImagePipelineExecutionResponse> {
        return client.send(operation: "StartImagePipelineExecution", path: "/StartImagePipelineExecution", httpMethod: "PUT", input: input)
    }

    ///   Adds a tag to a resource. 
    public func tagResource(_ input: TagResourceRequest) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: "POST", input: input)
    }

    ///   Removes a tag from a resource. 
    public func untagResource(_ input: UntagResourceRequest) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: "DELETE", input: input)
    }

    ///   Updates a new distribution configuration. Distribution configurations define and configure the outputs of your pipeline. 
    public func updateDistributionConfiguration(_ input: UpdateDistributionConfigurationRequest) -> EventLoopFuture<UpdateDistributionConfigurationResponse> {
        return client.send(operation: "UpdateDistributionConfiguration", path: "/UpdateDistributionConfiguration", httpMethod: "PUT", input: input)
    }

    ///   Updates a new image pipeline. Image pipelines enable you to automate the creation and distribution of images. 
    public func updateImagePipeline(_ input: UpdateImagePipelineRequest) -> EventLoopFuture<UpdateImagePipelineResponse> {
        return client.send(operation: "UpdateImagePipeline", path: "/UpdateImagePipeline", httpMethod: "PUT", input: input)
    }

    ///   Updates a new infrastructure configuration. An infrastructure configuration defines the environment in which your image will be built and tested. 
    public func updateInfrastructureConfiguration(_ input: UpdateInfrastructureConfigurationRequest) -> EventLoopFuture<UpdateInfrastructureConfigurationResponse> {
        return client.send(operation: "UpdateInfrastructureConfiguration", path: "/UpdateInfrastructureConfiguration", httpMethod: "PUT", input: input)
    }
}
