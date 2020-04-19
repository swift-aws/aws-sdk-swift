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
import Foundation
import NIO

/**
Client object for interacting with AWS SageMakerRuntime service.

 The Amazon SageMaker runtime API. 
*/
public struct SageMakerRuntime {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the SageMakerRuntime client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        accessKeyId: String? = nil,
        secretAccessKey: String? = nil,
        sessionToken: String? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        endpoint: String? = nil,
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "runtime.sagemaker",
            signingName: "sagemaker",
            serviceProtocol: .restjson,
            apiVersion: "2017-05-13",
            endpoint: endpoint,
            serviceEndpoints: ["us-east-1-fips": "runtime-fips.sagemaker.us-east-1.amazonaws.com", "us-east-2-fips": "runtime-fips.sagemaker.us-east-2.amazonaws.com", "us-west-1-fips": "runtime-fips.sagemaker.us-west-1.amazonaws.com", "us-west-2-fips": "runtime-fips.sagemaker.us-west-2.amazonaws.com"],
            middlewares: middlewares,
            possibleErrorTypes: [SageMakerRuntimeErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  After you deploy a model into production using Amazon SageMaker hosting services, your client applications use this API to get inferences from the model hosted at the specified endpoint.  For an overview of Amazon SageMaker, see How It Works.  Amazon SageMaker strips all POST headers except those supported by the API. Amazon SageMaker might add additional headers. You should not rely on the behavior of headers outside those enumerated in the request syntax.  Calls to InvokeEndpoint are authenticated by using AWS Signature Version 4. For information, see Authenticating Requests (AWS Signature Version 4) in the Amazon S3 API Reference. A customer's model containers must respond to requests within 60 seconds. The model itself can have a maximum processing time of 60 seconds before responding to the /invocations. If your model is going to take 50-60 seconds of processing time, the SDK socket timeout should be set to be 70 seconds.  Endpoints are scoped to an individual account, and are not public. The URL does not contain the account ID, but Amazon SageMaker determines the account ID from the authentication token that is supplied by the caller. 
    public func invokeEndpoint(_ input: InvokeEndpointInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InvokeEndpointOutput> {
        return client.send(operation: "InvokeEndpoint", path: "/endpoints/{EndpointName}/invocations", httpMethod: "POST", input: input, on: eventLoop)
    }
}
