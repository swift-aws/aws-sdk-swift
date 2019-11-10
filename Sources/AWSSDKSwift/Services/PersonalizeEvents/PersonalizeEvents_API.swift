// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

public struct PersonalizeEvents {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "personalize-events",
            signingName: "personalize",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-03-22",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [PersonalizeEventsErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }

    ///  Records user interaction event data.
    @discardableResult public func putEvents(_ input: PutEventsRequest) -> Future<Void> {
        return client.send(operation: "PutEvents", path: "/events", httpMethod: "POST", input: input)
    }
}
