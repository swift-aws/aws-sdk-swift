// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
 AWS S3 Control provides access to Amazon S3 control plane operations. 
*/
public struct S3Control {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "s3-control",
            signingName: "s3",
            serviceProtocol: ServiceProtocol(type: .restxml),
            apiVersion: "2018-08-20",
            endpoint: endpoint,
            serviceEndpoints: ["ap-northeast-1": "s3-control.ap-northeast-1.amazonaws.com", "ap-northeast-2": "s3-control.ap-northeast-2.amazonaws.com", "ap-south-1": "s3-control.ap-south-1.amazonaws.com", "ap-southeast-1": "s3-control.ap-southeast-1.amazonaws.com", "ap-southeast-2": "s3-control.ap-southeast-2.amazonaws.com", "ca-central-1": "s3-control.ca-central-1.amazonaws.com", "eu-central-1": "s3-control.eu-central-1.amazonaws.com", "eu-north-1": "s3-control.eu-north-1.amazonaws.com", "eu-west-1": "s3-control.eu-west-1.amazonaws.com", "eu-west-2": "s3-control.eu-west-2.amazonaws.com", "eu-west-3": "s3-control.eu-west-3.amazonaws.com", "sa-east-1": "s3-control.sa-east-1.amazonaws.com", "us-east-1": "s3-control.us-east-1.amazonaws.com", "us-east-1-fips": "s3-control-fips.us-east-1.amazonaws.com", "us-east-2": "s3-control.us-east-2.amazonaws.com", "us-east-2-fips": "s3-control-fips.us-east-2.amazonaws.com", "us-west-1": "s3-control.us-west-1.amazonaws.com", "us-west-1-fips": "s3-control-fips.us-west-1.amazonaws.com", "us-west-2": "s3-control.us-west-2.amazonaws.com", "us-west-2-fips": "s3-control-fips.us-west-2.amazonaws.com"],
            middlewares: middlewares,
            possibleErrorTypes: [S3ControlErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }

    ///  Creates an Amazon S3 batch operations job.
    public func createJob(_ input: CreateJobRequest) -> Future<CreateJobResult> {
        return client.send(operation: "CreateJob", path: "/v20180820/jobs", httpMethod: "POST", input: input)
    }

    ///  Deletes the block public access configuration for the specified account.
    @discardableResult public func deletePublicAccessBlock(_ input: DeletePublicAccessBlockRequest) -> Future<Void> {
        return client.send(operation: "DeletePublicAccessBlock", path: "/v20180820/configuration/publicAccessBlock", httpMethod: "DELETE", input: input)
    }

    ///  Retrieves the configuration parameters and status for a batch operations job.
    public func describeJob(_ input: DescribeJobRequest) -> Future<DescribeJobResult> {
        return client.send(operation: "DescribeJob", path: "/v20180820/jobs/{id}", httpMethod: "GET", input: input)
    }

    public func getPublicAccessBlock(_ input: GetPublicAccessBlockRequest) -> Future<GetPublicAccessBlockOutput> {
        return client.send(operation: "GetPublicAccessBlock", path: "/v20180820/configuration/publicAccessBlock", httpMethod: "GET", input: input)
    }

    ///  Lists current jobs and jobs that have ended within the last 30 days for the AWS account making the request.
    public func listJobs(_ input: ListJobsRequest) -> Future<ListJobsResult> {
        return client.send(operation: "ListJobs", path: "/v20180820/jobs", httpMethod: "GET", input: input)
    }

    @discardableResult public func putPublicAccessBlock(_ input: PutPublicAccessBlockRequest) -> Future<Void> {
        return client.send(operation: "PutPublicAccessBlock", path: "/v20180820/configuration/publicAccessBlock", httpMethod: "PUT", input: input)
    }

    ///  Updates an existing job's priority.
    public func updateJobPriority(_ input: UpdateJobPriorityRequest) -> Future<UpdateJobPriorityResult> {
        return client.send(operation: "UpdateJobPriority", path: "/v20180820/jobs/{id}/priority", httpMethod: "POST", input: input)
    }

    ///  Updates the status for the specified job. Use this operation to confirm that you want to run a job or to cancel an existing job.
    public func updateJobStatus(_ input: UpdateJobStatusRequest) -> Future<UpdateJobStatusResult> {
        return client.send(operation: "UpdateJobStatus", path: "/v20180820/jobs/{id}/status", httpMethod: "POST", input: input)
    }
}
