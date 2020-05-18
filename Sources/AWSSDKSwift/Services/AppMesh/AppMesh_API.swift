//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import NIO

/**
Client object for interacting with AWS AppMesh service.

AWS App Mesh is a service mesh based on the Envoy proxy that makes it easy to monitor and
         control microservices. App Mesh standardizes how your microservices communicate, giving you
         end-to-end visibility and helping to ensure high availability for your applications.
         App Mesh gives you consistent visibility and network traffic controls for every
         microservice in an application. You can use App Mesh with AWS Fargate, Amazon ECS, Amazon EKS,
         Kubernetes on AWS, and Amazon EC2.
         
            App Mesh supports microservice applications that use service discovery naming for their
            components. For more information about service discovery on Amazon ECS, see Service Discovery in the
               Amazon Elastic Container Service Developer Guide. Kubernetes kube-dns and
               coredns are supported. For more information, see DNS
               for Services and Pods in the Kubernetes documentation.
         
*/
public struct AppMesh {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the AppMesh client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - retryController: Object returning whether retries should be attempted. Possible options are NoRetry(), ExponentialRetry() or JitterRetry()
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        accessKeyId: String? = nil,
        secretAccessKey: String? = nil,
        sessionToken: String? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSSDKSwiftCore.Partition = .aws,
        endpoint: String? = nil,
        retryController: RetryController = JitterRetry(),
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            partition: region?.partition ?? partition,
            service: "appmesh",
            serviceProtocol: .restjson,
            apiVersion: "2019-01-25",
            endpoint: endpoint,
            retryController: retryController,
            middlewares: middlewares,
            possibleErrorTypes: [AppMeshErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Creates a service mesh. A service mesh is a logical boundary for network traffic between
    ///           the services that reside within it.
    ///           After you create your service mesh, you can create virtual services, virtual nodes,
    ///           virtual routers, and routes to distribute traffic between the applications in your
    ///           mesh.
    public func createMesh(_ input: CreateMeshInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMeshOutput> {
        return client.send(operation: "CreateMesh", path: "/v20190125/meshes", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Creates a route that is associated with a virtual router.
    ///           You can use the prefix parameter in your route specification for path-based
    ///           routing of requests. For example, if your virtual service name is
    ///              my-service.local and you want the route to match requests to
    ///              my-service.local/metrics, your prefix should be
    ///           /metrics.
    ///           If your route matches a request, you can distribute traffic to one or more target
    ///           virtual nodes with relative weighting.
    ///           For more information about routes, see Routes.
    public func createRoute(_ input: CreateRouteInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRouteOutput> {
        return client.send(operation: "CreateRoute", path: "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Creates a virtual node within a service mesh.
    ///           A virtual node acts as a logical pointer to a particular task group, such as an Amazon ECS
    ///           service or a Kubernetes deployment. When you create a virtual node, you can specify the
    ///           service discovery information for your task group.
    ///           Any inbound traffic that your virtual node expects should be specified as a
    ///              listener. Any outbound traffic that your virtual node expects to reach
    ///           should be specified as a backend.
    ///           The response metadata for your new virtual node contains the arn that is
    ///           associated with the virtual node. Set this value (either the full ARN or the truncated
    ///           resource name: for example, mesh/default/virtualNode/simpleapp) as the
    ///              APPMESH_VIRTUAL_NODE_NAME environment variable for your task group's Envoy
    ///           proxy container in your task definition or pod spec. This is then mapped to the
    ///              node.id and node.cluster Envoy parameters.
    ///           
    ///              If you require your Envoy stats or tracing to use a different name, you can override
    ///              the node.cluster value that is set by
    ///                 APPMESH_VIRTUAL_NODE_NAME with the
    ///                 APPMESH_VIRTUAL_NODE_CLUSTER environment variable.
    ///           
    ///           For more information about virtual nodes, see Virtual Nodes.
    public func createVirtualNode(_ input: CreateVirtualNodeInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVirtualNodeOutput> {
        return client.send(operation: "CreateVirtualNode", path: "/v20190125/meshes/{meshName}/virtualNodes", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Creates a virtual router within a service mesh.
    ///           Any inbound traffic that your virtual router expects should be specified as a
    ///              listener. 
    ///           Virtual routers handle traffic for one or more virtual services within your mesh. After
    ///           you create your virtual router, create and associate routes for your virtual router that
    ///           direct incoming requests to different virtual nodes.
    ///           For more information about virtual routers, see Virtual Routers.
    public func createVirtualRouter(_ input: CreateVirtualRouterInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVirtualRouterOutput> {
        return client.send(operation: "CreateVirtualRouter", path: "/v20190125/meshes/{meshName}/virtualRouters", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Creates a virtual service within a service mesh.
    ///           A virtual service is an abstraction of a real service that is provided by a virtual node
    ///           directly or indirectly by means of a virtual router. Dependent services call your virtual
    ///           service by its virtualServiceName, and those requests are routed to the
    ///           virtual node or virtual router that is specified as the provider for the virtual
    ///           service.
    ///           For more information about virtual services, see Virtual Services.
    public func createVirtualService(_ input: CreateVirtualServiceInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVirtualServiceOutput> {
        return client.send(operation: "CreateVirtualService", path: "/v20190125/meshes/{meshName}/virtualServices", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Deletes an existing service mesh.
    ///           You must delete all resources (virtual services, routes, virtual routers, and virtual
    ///           nodes) in the service mesh before you can delete the mesh itself.
    public func deleteMesh(_ input: DeleteMeshInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMeshOutput> {
        return client.send(operation: "DeleteMesh", path: "/v20190125/meshes/{meshName}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes an existing route.
    public func deleteRoute(_ input: DeleteRouteInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRouteOutput> {
        return client.send(operation: "DeleteRoute", path: "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes an existing virtual node.
    ///           You must delete any virtual services that list a virtual node as a service provider
    ///           before you can delete the virtual node itself.
    public func deleteVirtualNode(_ input: DeleteVirtualNodeInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteVirtualNodeOutput> {
        return client.send(operation: "DeleteVirtualNode", path: "/v20190125/meshes/{meshName}/virtualNodes/{virtualNodeName}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes an existing virtual router.
    ///           You must delete any routes associated with the virtual router before you can delete the
    ///           router itself.
    public func deleteVirtualRouter(_ input: DeleteVirtualRouterInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteVirtualRouterOutput> {
        return client.send(operation: "DeleteVirtualRouter", path: "/v20190125/meshes/{meshName}/virtualRouters/{virtualRouterName}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes an existing virtual service.
    public func deleteVirtualService(_ input: DeleteVirtualServiceInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteVirtualServiceOutput> {
        return client.send(operation: "DeleteVirtualService", path: "/v20190125/meshes/{meshName}/virtualServices/{virtualServiceName}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Describes an existing service mesh.
    public func describeMesh(_ input: DescribeMeshInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMeshOutput> {
        return client.send(operation: "DescribeMesh", path: "/v20190125/meshes/{meshName}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Describes an existing route.
    public func describeRoute(_ input: DescribeRouteInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRouteOutput> {
        return client.send(operation: "DescribeRoute", path: "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Describes an existing virtual node.
    public func describeVirtualNode(_ input: DescribeVirtualNodeInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVirtualNodeOutput> {
        return client.send(operation: "DescribeVirtualNode", path: "/v20190125/meshes/{meshName}/virtualNodes/{virtualNodeName}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Describes an existing virtual router.
    public func describeVirtualRouter(_ input: DescribeVirtualRouterInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVirtualRouterOutput> {
        return client.send(operation: "DescribeVirtualRouter", path: "/v20190125/meshes/{meshName}/virtualRouters/{virtualRouterName}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Describes an existing virtual service.
    public func describeVirtualService(_ input: DescribeVirtualServiceInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVirtualServiceOutput> {
        return client.send(operation: "DescribeVirtualService", path: "/v20190125/meshes/{meshName}/virtualServices/{virtualServiceName}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a list of existing service meshes.
    public func listMeshes(_ input: ListMeshesInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListMeshesOutput> {
        return client.send(operation: "ListMeshes", path: "/v20190125/meshes", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a list of existing routes in a service mesh.
    public func listRoutes(_ input: ListRoutesInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRoutesOutput> {
        return client.send(operation: "ListRoutes", path: "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  List the tags for an App Mesh resource.
    public func listTagsForResource(_ input: ListTagsForResourceInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceOutput> {
        return client.send(operation: "ListTagsForResource", path: "/v20190125/tags", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a list of existing virtual nodes.
    public func listVirtualNodes(_ input: ListVirtualNodesInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListVirtualNodesOutput> {
        return client.send(operation: "ListVirtualNodes", path: "/v20190125/meshes/{meshName}/virtualNodes", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a list of existing virtual routers in a service mesh.
    public func listVirtualRouters(_ input: ListVirtualRoutersInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListVirtualRoutersOutput> {
        return client.send(operation: "ListVirtualRouters", path: "/v20190125/meshes/{meshName}/virtualRouters", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a list of existing virtual services in a service mesh.
    public func listVirtualServices(_ input: ListVirtualServicesInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListVirtualServicesOutput> {
        return client.send(operation: "ListVirtualServices", path: "/v20190125/meshes/{meshName}/virtualServices", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Associates the specified tags to a resource with the specified resourceArn.
    ///           If existing tags on a resource aren't specified in the request parameters, they aren't
    ///           changed. When a resource is deleted, the tags associated with that resource are also
    ///           deleted.
    public func tagResource(_ input: TagResourceInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceOutput> {
        return client.send(operation: "TagResource", path: "/v20190125/tag", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Deletes specified tags from a resource.
    public func untagResource(_ input: UntagResourceInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceOutput> {
        return client.send(operation: "UntagResource", path: "/v20190125/untag", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Updates an existing service mesh.
    public func updateMesh(_ input: UpdateMeshInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateMeshOutput> {
        return client.send(operation: "UpdateMesh", path: "/v20190125/meshes/{meshName}", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Updates an existing route for a specified service mesh and virtual router.
    public func updateRoute(_ input: UpdateRouteInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRouteOutput> {
        return client.send(operation: "UpdateRoute", path: "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Updates an existing virtual node in a specified service mesh.
    public func updateVirtualNode(_ input: UpdateVirtualNodeInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateVirtualNodeOutput> {
        return client.send(operation: "UpdateVirtualNode", path: "/v20190125/meshes/{meshName}/virtualNodes/{virtualNodeName}", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Updates an existing virtual router in a specified service mesh.
    public func updateVirtualRouter(_ input: UpdateVirtualRouterInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateVirtualRouterOutput> {
        return client.send(operation: "UpdateVirtualRouter", path: "/v20190125/meshes/{meshName}/virtualRouters/{virtualRouterName}", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Updates an existing virtual service in a specified service mesh.
    public func updateVirtualService(_ input: UpdateVirtualServiceInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateVirtualServiceOutput> {
        return client.send(operation: "UpdateVirtualService", path: "/v20190125/meshes/{meshName}/virtualServices/{virtualServiceName}", httpMethod: "PUT", input: input, on: eventLoop)
    }
}
