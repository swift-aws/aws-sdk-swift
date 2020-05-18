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
Client object for interacting with AWS Transfer service.

AWS Transfer Family is a fully managed service that enables the transfer of files over the the File Transfer Protocol (FTP), File Transfer Protocol over SSL (FTPS), or Secure Shell (SSH) File Transfer Protocol (SFTP) directly into and out of Amazon Simple Storage Service (Amazon S3). AWS helps you seamlessly migrate your file transfer workflows to AWS Transfer Family by integrating with existing authentication systems, and providing DNS routing with Amazon Route 53 so nothing changes for your customers and partners, or their applications. With your data in Amazon S3, you can use it with AWS services for processing, analytics, machine learning, and archiving. Getting started with AWS Transfer Family is easy since there is no infrastructure to buy and set up.
*/
public struct Transfer {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the Transfer client
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
            amzTarget: "TransferService",
            service: "transfer",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2018-11-05",
            endpoint: endpoint,
            retryController: retryController,
            middlewares: middlewares,
            possibleErrorTypes: [TransferErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Instantiates an autoscaling virtual server based on the selected file transfer protocol in AWS. When you make updates to your file transfer protocol-enabled server or when you work with users, use the service-generated ServerId property that is assigned to the newly created server.
    public func createServer(_ input: CreateServerRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateServerResponse> {
        return client.send(operation: "CreateServer", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a user and associates them with an existing file transfer protocol-enabled server. You can only create and associate users with servers that have the IdentityProviderType set to SERVICE_MANAGED. Using parameters for CreateUser, you can specify the user name, set the home directory, store the user's public key, and assign the user's AWS Identity and Access Management (IAM) role. You can also optionally add a scope-down policy, and assign metadata with tags that can be used to group and search for users.
    public func createUser(_ input: CreateUserRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateUserResponse> {
        return client.send(operation: "CreateUser", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the file transfer protocol-enabled server that you specify. No response returns from this operation.
    @discardableResult public func deleteServer(_ input: DeleteServerRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteServer", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a user's Secure Shell (SSH) public key. No response is returned from this operation.
    @discardableResult public func deleteSshPublicKey(_ input: DeleteSshPublicKeyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteSshPublicKey", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the user belonging to a file transfer protocol-enabled server you specify. No response returns from this operation.  When you delete a user from a server, the user's information is lost. 
    @discardableResult public func deleteUser(_ input: DeleteUserRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteUser", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes a file transfer protocol-enabled server that you specify by passing the ServerId parameter. The response contains a description of a server's properties. When you set EndpointType to VPC, the response will contain the EndpointDetails.
    public func describeServer(_ input: DescribeServerRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServerResponse> {
        return client.send(operation: "DescribeServer", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the user assigned to the specific file transfer protocol-enabled server, as identified by its ServerId property. The response from this call returns the properties of the user associated with the ServerId value that was specified.
    public func describeUser(_ input: DescribeUserRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserResponse> {
        return client.send(operation: "DescribeUser", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Adds a Secure Shell (SSH) public key to a user account identified by a UserName value assigned to the specific file transfer protocol-enabled server, identified by ServerId. The response returns the UserName value, the ServerId value, and the name of the SshPublicKeyId.
    public func importSshPublicKey(_ input: ImportSshPublicKeyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImportSshPublicKeyResponse> {
        return client.send(operation: "ImportSshPublicKey", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the file transfer protocol-enabled servers that are associated with your AWS account.
    public func listServers(_ input: ListServersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListServersResponse> {
        return client.send(operation: "ListServers", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists all of the tags associated with the Amazon Resource Number (ARN) you specify. The resource can be a user, server, or role.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the users for a file transfer protocol-enabled server that you specify by passing the ServerId parameter.
    public func listUsers(_ input: ListUsersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListUsersResponse> {
        return client.send(operation: "ListUsers", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Changes the state of a file transfer protocol-enabled server from OFFLINE to ONLINE. It has no impact on a server that is already ONLINE. An ONLINE server can accept and process file transfer jobs. The state of STARTING indicates that the server is in an intermediate state, either not fully able to respond, or not fully online. The values of START_FAILED can indicate an error condition. No response is returned from this call.
    @discardableResult public func startServer(_ input: StartServerRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "StartServer", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Changes the state of a file transfer protocol-enabled server from ONLINE to OFFLINE. An OFFLINE server cannot accept and process file transfer jobs. Information tied to your server, such as server and user properties, are not affected by stopping your server. Stopping the server will not reduce or impact your file transfer protocol endpoint billing. The state of STOPPING indicates that the server is in an intermediate state, either not fully able to respond, or not fully offline. The values of STOP_FAILED can indicate an error condition. No response is returned from this call.
    @discardableResult public func stopServer(_ input: StopServerRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "StopServer", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Attaches a key-value pair to a resource, as identified by its Amazon Resource Name (ARN). Resources are users, servers, roles, and other entities. There is no response returned from this call.
    @discardableResult public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  If the IdentityProviderType of a file transfer protocol-enabled server is API_Gateway, tests whether your API Gateway is set up successfully. We highly recommend that you call this operation to test your authentication method as soon as you create your server. By doing so, you can troubleshoot issues with the API Gateway integration to ensure that your users can successfully use the service.
    public func testIdentityProvider(_ input: TestIdentityProviderRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TestIdentityProviderResponse> {
        return client.send(operation: "TestIdentityProvider", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Detaches a key-value pair from a resource, as identified by its Amazon Resource Name (ARN). Resources are users, servers, roles, and other entities. No response is returned from this call.
    @discardableResult public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the file transfer protocol-enabled server's properties after that server has been created. The UpdateServer call returns the ServerId of the server you updated.
    public func updateServer(_ input: UpdateServerRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateServerResponse> {
        return client.send(operation: "UpdateServer", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Assigns new properties to a user. Parameters you pass modify any or all of the following: the home directory, role, and policy for the UserName and ServerId you specify. The response returns the ServerId and the UserName for the updated user.
    public func updateUser(_ input: UpdateUserRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateUserResponse> {
        return client.send(operation: "UpdateUser", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }
}
