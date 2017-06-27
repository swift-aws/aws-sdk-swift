// THIS FILE IS AUTOMATICALLY GENERATED. DO NOT EDIT.
/**
The MIT License (MIT)

Copyright (c) 2017 Yuki Takei(noppoMan)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

*/

import Foundation
import AWSSDKSwiftCore

/**
AWS X-Ray provides APIs for managing debug traces and retrieving service maps and other data created by processing those traces.
*/
public struct Xray {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "xray",
            serviceProtocol: .restjson,
            apiVersion: "2016-04-12",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [XrayError.self]
        )
    }

    ///  Retrieves a list of traces specified by ID. Each trace is a collection of segment documents that originates from a single request. Use GetTraceSummaries to get a list of trace IDs.
    public func batchGetTraces(_ input: BatchGetTracesRequest) throws -> BatchGetTracesResult {
        return try client.send(operation: "BatchGetTraces", path: "/Traces", httpMethod: "POST", input: input)
    }

    ///  Retrieves a service graph for one or more specific trace IDs.
    public func getTraceGraph(_ input: GetTraceGraphRequest) throws -> GetTraceGraphResult {
        return try client.send(operation: "GetTraceGraph", path: "/TraceGraph", httpMethod: "POST", input: input)
    }

    ///  Uploads segment documents to AWS X-Ray. The X-Ray SDK generates segment documents and sends them to the X-Ray daemon, which uploads them in batches. A segment document can be a completed segment, an in-progress segment, or an array of subsegments.
    public func putTraceSegments(_ input: PutTraceSegmentsRequest) throws -> PutTraceSegmentsResult {
        return try client.send(operation: "PutTraceSegments", path: "/TraceSegments", httpMethod: "POST", input: input)
    }

    ///  Retrieves a document that describes services that process incoming requests, and downstream services that they call as a result. Root services process incoming requests and make calls to downstream services. Root services are applications that use the AWS X-Ray SDK. Downstream services can be other applications, AWS resources, HTTP web APIs, or SQL databases.
    public func getServiceGraph(_ input: GetServiceGraphRequest) throws -> GetServiceGraphResult {
        return try client.send(operation: "GetServiceGraph", path: "/ServiceGraph", httpMethod: "POST", input: input)
    }

    ///  Used by the AWS X-Ray daemon to upload telemetry.
    public func putTelemetryRecords(_ input: PutTelemetryRecordsRequest) throws -> PutTelemetryRecordsResult {
        return try client.send(operation: "PutTelemetryRecords", path: "/TelemetryRecords", httpMethod: "POST", input: input)
    }

    ///  Retrieves IDs and metadata for traces available for a specified time frame using an optional filter. To get the full traces, pass the trace IDs to BatchGetTraces.
    public func getTraceSummaries(_ input: GetTraceSummariesRequest) throws -> GetTraceSummariesResult {
        return try client.send(operation: "GetTraceSummaries", path: "/TraceSummaries", httpMethod: "POST", input: input)
    }


}