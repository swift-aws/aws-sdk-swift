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
Client object for interacting with AWS EC2InstanceConnect service.

AWS EC2 Connect Service is a service that enables system administrators to publish temporary SSH keys to their EC2 instances in order to establish connections to their instances without leaving a permanent authentication option.
*/
public struct EC2InstanceConnect {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: ServiceConfig

    //MARK: Initialization

    /// Initialize the EC2InstanceConnect client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - retryPolicy: Object returning whether retries should be attempted. Possible options are NoRetry(), ExponentialRetry() or JitterRetry()
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        credentialProvider: CredentialProvider? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSSDKSwiftCore.Partition = .aws,
        endpoint: String? = nil,
        retryPolicy: RetryPolicy = JitterRetry(),
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.serviceConfig = ServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            amzTarget: "AWSEC2InstanceConnectService",
            service: "ec2-instance-connect",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2018-04-02",
            endpoint: endpoint,
            possibleErrorTypes: [EC2InstanceConnectErrorType.self]
        )
        self.client = AWSClient(
            credentialProvider: credentialProvider,
            serviceConfig: serviceConfig,
            retryPolicy: retryPolicy,
            middlewares: middlewares,
            httpClientProvider: httpClientProvider
        )
    }
    
    func syncShutdown() throws {
        try client.syncShutdown()
    }
    
    //MARK: API Calls

    ///  Pushes an SSH public key to a particular OS user on a given EC2 instance for 60 seconds.
    public func sendSSHPublicKey(_ input: SendSSHPublicKeyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SendSSHPublicKeyResponse> {
        return client.send(operation: "SendSSHPublicKey", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }
}
