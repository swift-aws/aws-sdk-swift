// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
AWS Cloud9 AWS Cloud9 is a collection of tools that you can use to code, build, run, test, debug, and release software in the cloud. For more information about AWS Cloud9, see the AWS Cloud9 User Guide. AWS Cloud9 supports these operations:    CreateEnvironmentEC2: Creates an AWS Cloud9 development environment, launches an Amazon EC2 instance, and then connects from the instance to the environment.    CreateEnvironmentMembership: Adds an environment member to an environment.    DeleteEnvironment: Deletes an environment. If an Amazon EC2 instance is connected to the environment, also terminates the instance.    DeleteEnvironmentMembership: Deletes an environment member from an environment.    DescribeEnvironmentMemberships: Gets information about environment members for an environment.    DescribeEnvironments: Gets information about environments.    DescribeEnvironmentStatus: Gets status information for an environment.    ListEnvironments: Gets a list of environment identifiers.    UpdateEnvironment: Changes the settings of an existing environment.    UpdateEnvironmentMembership: Changes the settings of an existing environment member for an environment.  
*/
public struct Cloud9 {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "AWSCloud9WorkspaceManagementService",
            service: "cloud9",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-09-23",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [Cloud9ErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }

    ///  Creates an AWS Cloud9 development environment, launches an Amazon Elastic Compute Cloud (Amazon EC2) instance, and then connects from the instance to the environment.
    public func createEnvironmentEC2(_ input: CreateEnvironmentEC2Request) -> Future<CreateEnvironmentEC2Result> {
        return client.send(operation: "CreateEnvironmentEC2", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds an environment member to an AWS Cloud9 development environment.
    public func createEnvironmentMembership(_ input: CreateEnvironmentMembershipRequest) -> Future<CreateEnvironmentMembershipResult> {
        return client.send(operation: "CreateEnvironmentMembership", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an AWS Cloud9 development environment. If an Amazon EC2 instance is connected to the environment, also terminates the instance.
    public func deleteEnvironment(_ input: DeleteEnvironmentRequest) -> Future<DeleteEnvironmentResult> {
        return client.send(operation: "DeleteEnvironment", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an environment member from an AWS Cloud9 development environment.
    public func deleteEnvironmentMembership(_ input: DeleteEnvironmentMembershipRequest) -> Future<DeleteEnvironmentMembershipResult> {
        return client.send(operation: "DeleteEnvironmentMembership", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about environment members for an AWS Cloud9 development environment.
    public func describeEnvironmentMemberships(_ input: DescribeEnvironmentMembershipsRequest) -> Future<DescribeEnvironmentMembershipsResult> {
        return client.send(operation: "DescribeEnvironmentMemberships", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets status information for an AWS Cloud9 development environment.
    public func describeEnvironmentStatus(_ input: DescribeEnvironmentStatusRequest) -> Future<DescribeEnvironmentStatusResult> {
        return client.send(operation: "DescribeEnvironmentStatus", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about AWS Cloud9 development environments.
    public func describeEnvironments(_ input: DescribeEnvironmentsRequest) -> Future<DescribeEnvironmentsResult> {
        return client.send(operation: "DescribeEnvironments", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a list of AWS Cloud9 development environment identifiers.
    public func listEnvironments(_ input: ListEnvironmentsRequest) -> Future<ListEnvironmentsResult> {
        return client.send(operation: "ListEnvironments", path: "/", httpMethod: "POST", input: input)
    }

    ///  Changes the settings of an existing AWS Cloud9 development environment.
    public func updateEnvironment(_ input: UpdateEnvironmentRequest) -> Future<UpdateEnvironmentResult> {
        return client.send(operation: "UpdateEnvironment", path: "/", httpMethod: "POST", input: input)
    }

    ///  Changes the settings of an existing environment member for an AWS Cloud9 development environment.
    public func updateEnvironmentMembership(_ input: UpdateEnvironmentMembershipRequest) -> Future<UpdateEnvironmentMembershipResult> {
        return client.send(operation: "UpdateEnvironmentMembership", path: "/", httpMethod: "POST", input: input)
    }
}
