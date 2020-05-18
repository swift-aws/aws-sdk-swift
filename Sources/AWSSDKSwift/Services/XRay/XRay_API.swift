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
Client object for interacting with AWS XRay service.

AWS X-Ray provides APIs for managing debug traces and retrieving service maps and other data created by processing those traces.
*/
public struct XRay {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the XRay client
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
            service: "xray",
            serviceProtocol: .restjson,
            apiVersion: "2016-04-12",
            endpoint: endpoint,
            retryController: retryController,
            middlewares: middlewares,
            possibleErrorTypes: [XRayErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Retrieves a list of traces specified by ID. Each trace is a collection of segment documents that originates from a single request. Use GetTraceSummaries to get a list of trace IDs.
    public func batchGetTraces(_ input: BatchGetTracesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchGetTracesResult> {
        return client.send(operation: "BatchGetTraces", path: "/Traces", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a group resource with a name and a filter expression. 
    public func createGroup(_ input: CreateGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateGroupResult> {
        return client.send(operation: "CreateGroup", path: "/CreateGroup", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a rule to control sampling behavior for instrumented applications. Services retrieve rules with GetSamplingRules, and evaluate each rule in ascending order of priority for each request. If a rule matches, the service records a trace, borrowing it from the reservoir size. After 10 seconds, the service reports back to X-Ray with GetSamplingTargets to get updated versions of each in-use rule. The updated rule contains a trace quota that the service can use instead of borrowing from the reservoir.
    public func createSamplingRule(_ input: CreateSamplingRuleRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSamplingRuleResult> {
        return client.send(operation: "CreateSamplingRule", path: "/CreateSamplingRule", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a group resource.
    public func deleteGroup(_ input: DeleteGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteGroupResult> {
        return client.send(operation: "DeleteGroup", path: "/DeleteGroup", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a sampling rule.
    public func deleteSamplingRule(_ input: DeleteSamplingRuleRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSamplingRuleResult> {
        return client.send(operation: "DeleteSamplingRule", path: "/DeleteSamplingRule", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves the current encryption configuration for X-Ray data.
    public func getEncryptionConfig(_ input: GetEncryptionConfigRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetEncryptionConfigResult> {
        return client.send(operation: "GetEncryptionConfig", path: "/EncryptionConfig", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves group resource details.
    public func getGroup(_ input: GetGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetGroupResult> {
        return client.send(operation: "GetGroup", path: "/GetGroup", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves all active group details.
    public func getGroups(_ input: GetGroupsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetGroupsResult> {
        return client.send(operation: "GetGroups", path: "/Groups", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves all sampling rules.
    public func getSamplingRules(_ input: GetSamplingRulesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSamplingRulesResult> {
        return client.send(operation: "GetSamplingRules", path: "/GetSamplingRules", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves information about recent sampling results for all sampling rules.
    public func getSamplingStatisticSummaries(_ input: GetSamplingStatisticSummariesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSamplingStatisticSummariesResult> {
        return client.send(operation: "GetSamplingStatisticSummaries", path: "/SamplingStatisticSummaries", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Requests a sampling quota for rules that the service is using to sample requests. 
    public func getSamplingTargets(_ input: GetSamplingTargetsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSamplingTargetsResult> {
        return client.send(operation: "GetSamplingTargets", path: "/SamplingTargets", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves a document that describes services that process incoming requests, and downstream services that they call as a result. Root services process incoming requests and make calls to downstream services. Root services are applications that use the AWS X-Ray SDK. Downstream services can be other applications, AWS resources, HTTP web APIs, or SQL databases.
    public func getServiceGraph(_ input: GetServiceGraphRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetServiceGraphResult> {
        return client.send(operation: "GetServiceGraph", path: "/ServiceGraph", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Get an aggregation of service statistics defined by a specific time range.
    public func getTimeSeriesServiceStatistics(_ input: GetTimeSeriesServiceStatisticsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTimeSeriesServiceStatisticsResult> {
        return client.send(operation: "GetTimeSeriesServiceStatistics", path: "/TimeSeriesServiceStatistics", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves a service graph for one or more specific trace IDs.
    public func getTraceGraph(_ input: GetTraceGraphRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTraceGraphResult> {
        return client.send(operation: "GetTraceGraph", path: "/TraceGraph", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves IDs and annotations for traces available for a specified time frame using an optional filter. To get the full traces, pass the trace IDs to BatchGetTraces. A filter expression can target traced requests that hit specific service nodes or edges, have errors, or come from a known user. For example, the following filter expression targets traces that pass through api.example.com:  service("api.example.com")  This filter expression finds traces that have an annotation named account with the value 12345:  annotation.account = "12345"  For a full list of indexed fields and keywords that you can use in filter expressions, see Using Filter Expressions in the AWS X-Ray Developer Guide.
    public func getTraceSummaries(_ input: GetTraceSummariesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTraceSummariesResult> {
        return client.send(operation: "GetTraceSummaries", path: "/TraceSummaries", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the encryption configuration for X-Ray data.
    public func putEncryptionConfig(_ input: PutEncryptionConfigRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutEncryptionConfigResult> {
        return client.send(operation: "PutEncryptionConfig", path: "/PutEncryptionConfig", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Used by the AWS X-Ray daemon to upload telemetry.
    public func putTelemetryRecords(_ input: PutTelemetryRecordsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutTelemetryRecordsResult> {
        return client.send(operation: "PutTelemetryRecords", path: "/TelemetryRecords", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Uploads segment documents to AWS X-Ray. The X-Ray SDK generates segment documents and sends them to the X-Ray daemon, which uploads them in batches. A segment document can be a completed segment, an in-progress segment, or an array of subsegments. Segments must include the following fields. For the full segment document schema, see AWS X-Ray Segment Documents in the AWS X-Ray Developer Guide.  Required Segment Document Fields     name - The name of the service that handled the request.    id - A 64-bit identifier for the segment, unique among segments in the same trace, in 16 hexadecimal digits.    trace_id - A unique identifier that connects all segments and subsegments originating from a single client request.    start_time - Time the segment or subsegment was created, in floating point seconds in epoch time, accurate to milliseconds. For example, 1480615200.010 or 1.480615200010E9.    end_time - Time the segment or subsegment was closed. For example, 1480615200.090 or 1.480615200090E9. Specify either an end_time or in_progress.    in_progress - Set to true instead of specifying an end_time to record that a segment has been started, but is not complete. Send an in progress segment when your application receives a request that will take a long time to serve, to trace the fact that the request was received. When the response is sent, send the complete segment to overwrite the in-progress segment.   A trace_id consists of three numbers separated by hyphens. For example, 1-58406520-a006649127e371903a2de979. This includes:  Trace ID Format    The version number, i.e. 1.   The time of the original request, in Unix epoch time, in 8 hexadecimal digits. For example, 10:00AM December 2nd, 2016 PST in epoch time is 1480615200 seconds, or 58406520 in hexadecimal.   A 96-bit identifier for the trace, globally unique, in 24 hexadecimal digits.  
    public func putTraceSegments(_ input: PutTraceSegmentsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutTraceSegmentsResult> {
        return client.send(operation: "PutTraceSegments", path: "/TraceSegments", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates a group resource.
    public func updateGroup(_ input: UpdateGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateGroupResult> {
        return client.send(operation: "UpdateGroup", path: "/UpdateGroup", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Modifies a sampling rule's configuration.
    public func updateSamplingRule(_ input: UpdateSamplingRuleRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateSamplingRuleResult> {
        return client.send(operation: "UpdateSamplingRule", path: "/UpdateSamplingRule", httpMethod: "POST", input: input, on: eventLoop)
    }
}
