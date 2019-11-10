// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
AWS AppSync provides API actions for creating and interacting with data sources using GraphQL from your application.
*/
public struct AppSync {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "appsync",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-07-25",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [AppSyncErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }

    ///  Creates a unique key that you can distribute to clients who are executing your API.
    public func createApiKey(_ input: CreateApiKeyRequest) -> Future<CreateApiKeyResponse> {
        return client.send(operation: "CreateApiKey", path: "/v1/apis/{apiId}/apikeys", httpMethod: "POST", input: input)
    }

    ///  Creates a DataSource object.
    public func createDataSource(_ input: CreateDataSourceRequest) -> Future<CreateDataSourceResponse> {
        return client.send(operation: "CreateDataSource", path: "/v1/apis/{apiId}/datasources", httpMethod: "POST", input: input)
    }

    ///  Creates a Function object. A function is a reusable entity. Multiple functions can be used to compose the resolver logic.
    public func createFunction(_ input: CreateFunctionRequest) -> Future<CreateFunctionResponse> {
        return client.send(operation: "CreateFunction", path: "/v1/apis/{apiId}/functions", httpMethod: "POST", input: input)
    }

    ///  Creates a GraphqlApi object.
    public func createGraphqlApi(_ input: CreateGraphqlApiRequest) -> Future<CreateGraphqlApiResponse> {
        return client.send(operation: "CreateGraphqlApi", path: "/v1/apis", httpMethod: "POST", input: input)
    }

    ///  Creates a Resolver object. A resolver converts incoming requests into a format that a data source can understand and converts the data source's responses into GraphQL.
    public func createResolver(_ input: CreateResolverRequest) -> Future<CreateResolverResponse> {
        return client.send(operation: "CreateResolver", path: "/v1/apis/{apiId}/types/{typeName}/resolvers", httpMethod: "POST", input: input)
    }

    ///  Creates a Type object.
    public func createType(_ input: CreateTypeRequest) -> Future<CreateTypeResponse> {
        return client.send(operation: "CreateType", path: "/v1/apis/{apiId}/types", httpMethod: "POST", input: input)
    }

    ///  Deletes an API key.
    public func deleteApiKey(_ input: DeleteApiKeyRequest) -> Future<DeleteApiKeyResponse> {
        return client.send(operation: "DeleteApiKey", path: "/v1/apis/{apiId}/apikeys/{id}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes a DataSource object.
    public func deleteDataSource(_ input: DeleteDataSourceRequest) -> Future<DeleteDataSourceResponse> {
        return client.send(operation: "DeleteDataSource", path: "/v1/apis/{apiId}/datasources/{name}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes a Function.
    public func deleteFunction(_ input: DeleteFunctionRequest) -> Future<DeleteFunctionResponse> {
        return client.send(operation: "DeleteFunction", path: "/v1/apis/{apiId}/functions/{functionId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes a GraphqlApi object.
    public func deleteGraphqlApi(_ input: DeleteGraphqlApiRequest) -> Future<DeleteGraphqlApiResponse> {
        return client.send(operation: "DeleteGraphqlApi", path: "/v1/apis/{apiId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes a Resolver object.
    public func deleteResolver(_ input: DeleteResolverRequest) -> Future<DeleteResolverResponse> {
        return client.send(operation: "DeleteResolver", path: "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes a Type object.
    public func deleteType(_ input: DeleteTypeRequest) -> Future<DeleteTypeResponse> {
        return client.send(operation: "DeleteType", path: "/v1/apis/{apiId}/types/{typeName}", httpMethod: "DELETE", input: input)
    }

    ///  Retrieves a DataSource object.
    public func getDataSource(_ input: GetDataSourceRequest) -> Future<GetDataSourceResponse> {
        return client.send(operation: "GetDataSource", path: "/v1/apis/{apiId}/datasources/{name}", httpMethod: "GET", input: input)
    }

    ///  Get a Function.
    public func getFunction(_ input: GetFunctionRequest) -> Future<GetFunctionResponse> {
        return client.send(operation: "GetFunction", path: "/v1/apis/{apiId}/functions/{functionId}", httpMethod: "GET", input: input)
    }

    ///  Retrieves a GraphqlApi object.
    public func getGraphqlApi(_ input: GetGraphqlApiRequest) -> Future<GetGraphqlApiResponse> {
        return client.send(operation: "GetGraphqlApi", path: "/v1/apis/{apiId}", httpMethod: "GET", input: input)
    }

    ///  Retrieves the introspection schema for a GraphQL API.
    public func getIntrospectionSchema(_ input: GetIntrospectionSchemaRequest) -> Future<GetIntrospectionSchemaResponse> {
        return client.send(operation: "GetIntrospectionSchema", path: "/v1/apis/{apiId}/schema", httpMethod: "GET", input: input)
    }

    ///  Retrieves a Resolver object.
    public func getResolver(_ input: GetResolverRequest) -> Future<GetResolverResponse> {
        return client.send(operation: "GetResolver", path: "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", httpMethod: "GET", input: input)
    }

    ///  Retrieves the current status of a schema creation operation.
    public func getSchemaCreationStatus(_ input: GetSchemaCreationStatusRequest) -> Future<GetSchemaCreationStatusResponse> {
        return client.send(operation: "GetSchemaCreationStatus", path: "/v1/apis/{apiId}/schemacreation", httpMethod: "GET", input: input)
    }

    ///  Retrieves a Type object.
    public func getType(_ input: GetTypeRequest) -> Future<GetTypeResponse> {
        return client.send(operation: "GetType", path: "/v1/apis/{apiId}/types/{typeName}", httpMethod: "GET", input: input)
    }

    ///  Lists the API keys for a given API.  API keys are deleted automatically sometime after they expire. However, they may still be included in the response until they have actually been deleted. You can safely call DeleteApiKey to manually delete a key before it's automatically deleted. 
    public func listApiKeys(_ input: ListApiKeysRequest) -> Future<ListApiKeysResponse> {
        return client.send(operation: "ListApiKeys", path: "/v1/apis/{apiId}/apikeys", httpMethod: "GET", input: input)
    }

    ///  Lists the data sources for a given API.
    public func listDataSources(_ input: ListDataSourcesRequest) -> Future<ListDataSourcesResponse> {
        return client.send(operation: "ListDataSources", path: "/v1/apis/{apiId}/datasources", httpMethod: "GET", input: input)
    }

    ///  List multiple functions.
    public func listFunctions(_ input: ListFunctionsRequest) -> Future<ListFunctionsResponse> {
        return client.send(operation: "ListFunctions", path: "/v1/apis/{apiId}/functions", httpMethod: "GET", input: input)
    }

    ///  Lists your GraphQL APIs.
    public func listGraphqlApis(_ input: ListGraphqlApisRequest) -> Future<ListGraphqlApisResponse> {
        return client.send(operation: "ListGraphqlApis", path: "/v1/apis", httpMethod: "GET", input: input)
    }

    ///  Lists the resolvers for a given API and type.
    public func listResolvers(_ input: ListResolversRequest) -> Future<ListResolversResponse> {
        return client.send(operation: "ListResolvers", path: "/v1/apis/{apiId}/types/{typeName}/resolvers", httpMethod: "GET", input: input)
    }

    ///  List the resolvers that are associated with a specific function.
    public func listResolversByFunction(_ input: ListResolversByFunctionRequest) -> Future<ListResolversByFunctionResponse> {
        return client.send(operation: "ListResolversByFunction", path: "/v1/apis/{apiId}/functions/{functionId}/resolvers", httpMethod: "GET", input: input)
    }

    ///  Lists the tags for a resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> Future<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/v1/tags/{resourceArn}", httpMethod: "GET", input: input)
    }

    ///  Lists the types for a given API.
    public func listTypes(_ input: ListTypesRequest) -> Future<ListTypesResponse> {
        return client.send(operation: "ListTypes", path: "/v1/apis/{apiId}/types", httpMethod: "GET", input: input)
    }

    ///  Adds a new schema to your GraphQL API. This operation is asynchronous. Use to determine when it has completed.
    public func startSchemaCreation(_ input: StartSchemaCreationRequest) -> Future<StartSchemaCreationResponse> {
        return client.send(operation: "StartSchemaCreation", path: "/v1/apis/{apiId}/schemacreation", httpMethod: "POST", input: input)
    }

    ///  Tags a resource with user-supplied tags.
    public func tagResource(_ input: TagResourceRequest) -> Future<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/v1/tags/{resourceArn}", httpMethod: "POST", input: input)
    }

    ///  Untags a resource.
    public func untagResource(_ input: UntagResourceRequest) -> Future<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/v1/tags/{resourceArn}", httpMethod: "DELETE", input: input)
    }

    ///  Updates an API key.
    public func updateApiKey(_ input: UpdateApiKeyRequest) -> Future<UpdateApiKeyResponse> {
        return client.send(operation: "UpdateApiKey", path: "/v1/apis/{apiId}/apikeys/{id}", httpMethod: "POST", input: input)
    }

    ///  Updates a DataSource object.
    public func updateDataSource(_ input: UpdateDataSourceRequest) -> Future<UpdateDataSourceResponse> {
        return client.send(operation: "UpdateDataSource", path: "/v1/apis/{apiId}/datasources/{name}", httpMethod: "POST", input: input)
    }

    ///  Updates a Function object.
    public func updateFunction(_ input: UpdateFunctionRequest) -> Future<UpdateFunctionResponse> {
        return client.send(operation: "UpdateFunction", path: "/v1/apis/{apiId}/functions/{functionId}", httpMethod: "POST", input: input)
    }

    ///  Updates a GraphqlApi object.
    public func updateGraphqlApi(_ input: UpdateGraphqlApiRequest) -> Future<UpdateGraphqlApiResponse> {
        return client.send(operation: "UpdateGraphqlApi", path: "/v1/apis/{apiId}", httpMethod: "POST", input: input)
    }

    ///  Updates a Resolver object.
    public func updateResolver(_ input: UpdateResolverRequest) -> Future<UpdateResolverResponse> {
        return client.send(operation: "UpdateResolver", path: "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", httpMethod: "POST", input: input)
    }

    ///  Updates a Type object.
    public func updateType(_ input: UpdateTypeRequest) -> Future<UpdateTypeResponse> {
        return client.send(operation: "UpdateType", path: "/v1/apis/{apiId}/types/{typeName}", httpMethod: "POST", input: input)
    }
}
