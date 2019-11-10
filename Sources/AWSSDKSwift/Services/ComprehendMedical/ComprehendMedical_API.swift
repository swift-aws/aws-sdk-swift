// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
 Amazon Comprehend Medical extracts structured information from unstructured clinical text. Use these actions to gain insight in your documents. 
*/
public struct ComprehendMedical {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "ComprehendMedical_20181030",
            service: "comprehendmedical",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-10-30",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [ComprehendMedicalErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }

    ///  Gets the properties associated with a medical entities detection job. Use this operation to get the status of a detection job.
    public func describeEntitiesDetectionV2Job(_ input: DescribeEntitiesDetectionV2JobRequest) -> Future<DescribeEntitiesDetectionV2JobResponse> {
        return client.send(operation: "DescribeEntitiesDetectionV2Job", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the properties associated with a protected health information (PHI) detection job. Use this operation to get the status of a detection job.
    public func describePHIDetectionJob(_ input: DescribePHIDetectionJobRequest) -> Future<DescribePHIDetectionJobResponse> {
        return client.send(operation: "DescribePHIDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  The DetectEntities operation is deprecated. You should use the DetectEntitiesV2 operation instead.  Inspects the clinical text for a variety of medical entities and returns specific information about them such as entity category, location, and confidence score on that information .
    @available(*, deprecated, message:"This operation is deprecated, use DetectEntitiesV2 instead.")
    public func detectEntities(_ input: DetectEntitiesRequest) -> Future<DetectEntitiesResponse> {
        return client.send(operation: "DetectEntities", path: "/", httpMethod: "POST", input: input)
    }

    ///  Inspects the clinical text for a variety of medical entities and returns specific information about them such as entity category, location, and confidence score on that information. The DetectEntitiesV2 operation replaces the DetectEntities operation. This new action uses a different model for determining the entities in your medical text and changes the way that some entities are returned in the output. You should use the DetectEntitiesV2 operation in all new applications. The DetectEntitiesV2 operation returns the Acuity and Direction entities as attributes instead of types. It does not return the Quality or Quantity entities.
    public func detectEntitiesV2(_ input: DetectEntitiesV2Request) -> Future<DetectEntitiesV2Response> {
        return client.send(operation: "DetectEntitiesV2", path: "/", httpMethod: "POST", input: input)
    }

    ///   Inspects the clinical text for protected health information (PHI) entities and entity category, location, and confidence score on that information.
    public func detectPHI(_ input: DetectPHIRequest) -> Future<DetectPHIResponse> {
        return client.send(operation: "DetectPHI", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a list of medical entity detection jobs that you have submitted.
    public func listEntitiesDetectionV2Jobs(_ input: ListEntitiesDetectionV2JobsRequest) -> Future<ListEntitiesDetectionV2JobsResponse> {
        return client.send(operation: "ListEntitiesDetectionV2Jobs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a list of protected health information (PHI) detection jobs that you have submitted.
    public func listPHIDetectionJobs(_ input: ListPHIDetectionJobsRequest) -> Future<ListPHIDetectionJobsResponse> {
        return client.send(operation: "ListPHIDetectionJobs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts an asynchronous medical entity detection job for a collection of documents. Use the DescribeEntitiesDetectionV2Job operation to track the status of a job.
    public func startEntitiesDetectionV2Job(_ input: StartEntitiesDetectionV2JobRequest) -> Future<StartEntitiesDetectionV2JobResponse> {
        return client.send(operation: "StartEntitiesDetectionV2Job", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts an asynchronous job to detect protected health information (PHI). Use the DescribePHIDetectionJob operation to track the status of a job.
    public func startPHIDetectionJob(_ input: StartPHIDetectionJobRequest) -> Future<StartPHIDetectionJobResponse> {
        return client.send(operation: "StartPHIDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stops a medical entities detection job in progress.
    public func stopEntitiesDetectionV2Job(_ input: StopEntitiesDetectionV2JobRequest) -> Future<StopEntitiesDetectionV2JobResponse> {
        return client.send(operation: "StopEntitiesDetectionV2Job", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stops a protected health information (PHI) detection job in progress.
    public func stopPHIDetectionJob(_ input: StopPHIDetectionJobRequest) -> Future<StopPHIDetectionJobResponse> {
        return client.send(operation: "StopPHIDetectionJob", path: "/", httpMethod: "POST", input: input)
    }
}
