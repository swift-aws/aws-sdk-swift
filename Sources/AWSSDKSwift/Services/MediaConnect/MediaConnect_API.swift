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

/**
Client object for interacting with AWS MediaConnect service.

API for AWS Elemental MediaConnect
*/
public struct MediaConnect {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the MediaConnect client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil
    ) {
        self.client = client
        self.serviceConfig = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "mediaconnect",
            serviceProtocol: .restjson,
            apiVersion: "2018-11-14",
            endpoint: endpoint,
            possibleErrorTypes: [MediaConnectErrorType.self],
            timeout: timeout
        )
    }
    
    //MARK: API Calls

    ///  Adds outputs to an existing flow. You can create up to 50 outputs per flow.
    public func addFlowOutputs(_ input: AddFlowOutputsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddFlowOutputsResponse> {
        return client.execute(operation: "AddFlowOutputs", path: "/v1/flows/{flowArn}/outputs", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Adds Sources to flow
    public func addFlowSources(_ input: AddFlowSourcesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddFlowSourcesResponse> {
        return client.execute(operation: "AddFlowSources", path: "/v1/flows/{flowArn}/source", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Adds VPC interfaces to flow
    public func addFlowVpcInterfaces(_ input: AddFlowVpcInterfacesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddFlowVpcInterfacesResponse> {
        return client.execute(operation: "AddFlowVpcInterfaces", path: "/v1/flows/{flowArn}/vpcInterfaces", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates a new flow. The request must include one source. The request optionally can include outputs (up to 50) and entitlements (up to 50).
    public func createFlow(_ input: CreateFlowRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFlowResponse> {
        return client.execute(operation: "CreateFlow", path: "/v1/flows", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes a flow. Before you can delete a flow, you must stop the flow.
    public func deleteFlow(_ input: DeleteFlowRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteFlowResponse> {
        return client.execute(operation: "DeleteFlow", path: "/v1/flows/{flowArn}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Displays the details of a flow. The response includes the flow ARN, name, and Availability Zone, as well as details about the source, outputs, and entitlements.
    public func describeFlow(_ input: DescribeFlowRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFlowResponse> {
        return client.execute(operation: "DescribeFlow", path: "/v1/flows/{flowArn}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Grants entitlements to an existing flow.
    public func grantFlowEntitlements(_ input: GrantFlowEntitlementsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GrantFlowEntitlementsResponse> {
        return client.execute(operation: "GrantFlowEntitlements", path: "/v1/flows/{flowArn}/entitlements", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Displays a list of all entitlements that have been granted to this account. This request returns 20 results per page.
    public func listEntitlements(_ input: ListEntitlementsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListEntitlementsResponse> {
        return client.execute(operation: "ListEntitlements", path: "/v1/entitlements", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Displays a list of flows that are associated with this account. This request returns a paginated result.
    public func listFlows(_ input: ListFlowsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListFlowsResponse> {
        return client.execute(operation: "ListFlows", path: "/v1/flows", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  List all tags on an AWS Elemental MediaConnect resource
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Removes an output from an existing flow. This request can be made only on an output that does not have an entitlement associated with it. If the output has an entitlement, you must revoke the entitlement instead. When an entitlement is revoked from a flow, the service automatically removes the associated output.
    public func removeFlowOutput(_ input: RemoveFlowOutputRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveFlowOutputResponse> {
        return client.execute(operation: "RemoveFlowOutput", path: "/v1/flows/{flowArn}/outputs/{outputArn}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Removes a source from an existing flow. This request can be made only if there is more than one source on the flow.
    public func removeFlowSource(_ input: RemoveFlowSourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveFlowSourceResponse> {
        return client.execute(operation: "RemoveFlowSource", path: "/v1/flows/{flowArn}/source/{sourceArn}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Removes a VPC Interface from an existing flow. This request can be made only on a VPC interface that does not have a Source or Output associated with it. If the VPC interface is referenced by a Source or Output, you must first delete or update the Source or Output to no longer reference the VPC interface.
    public func removeFlowVpcInterface(_ input: RemoveFlowVpcInterfaceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveFlowVpcInterfaceResponse> {
        return client.execute(operation: "RemoveFlowVpcInterface", path: "/v1/flows/{flowArn}/vpcInterfaces/{vpcInterfaceName}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Revokes an entitlement from a flow. Once an entitlement is revoked, the content becomes unavailable to the subscriber and the associated output is removed.
    public func revokeFlowEntitlement(_ input: RevokeFlowEntitlementRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RevokeFlowEntitlementResponse> {
        return client.execute(operation: "RevokeFlowEntitlement", path: "/v1/flows/{flowArn}/entitlements/{entitlementArn}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Starts a flow.
    public func startFlow(_ input: StartFlowRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartFlowResponse> {
        return client.execute(operation: "StartFlow", path: "/v1/flows/start/{flowArn}", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Stops a flow.
    public func stopFlow(_ input: StopFlowRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopFlowResponse> {
        return client.execute(operation: "StopFlow", path: "/v1/flows/stop/{flowArn}", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Associates the specified tags to a resource with the specified resourceArn. If existing tags on a resource are not specified in the request parameters, they are not changed. When a resource is deleted, the tags associated with that resource are deleted as well.
    @discardableResult public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes specified tags from a resource.
    @discardableResult public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates flow
    public func updateFlow(_ input: UpdateFlowRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFlowResponse> {
        return client.execute(operation: "UpdateFlow", path: "/v1/flows/{flowArn}", httpMethod: .PUT, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  You can change an entitlement's description, subscribers, and encryption. If you change the subscribers, the service will remove the outputs that are are used by the subscribers that are removed.
    public func updateFlowEntitlement(_ input: UpdateFlowEntitlementRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFlowEntitlementResponse> {
        return client.execute(operation: "UpdateFlowEntitlement", path: "/v1/flows/{flowArn}/entitlements/{entitlementArn}", httpMethod: .PUT, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates an existing flow output.
    public func updateFlowOutput(_ input: UpdateFlowOutputRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFlowOutputResponse> {
        return client.execute(operation: "UpdateFlowOutput", path: "/v1/flows/{flowArn}/outputs/{outputArn}", httpMethod: .PUT, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates the source of a flow.
    public func updateFlowSource(_ input: UpdateFlowSourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFlowSourceResponse> {
        return client.execute(operation: "UpdateFlowSource", path: "/v1/flows/{flowArn}/source/{sourceArn}", httpMethod: .PUT, serviceConfig: serviceConfig, input: input, on: eventLoop)
    }
}
