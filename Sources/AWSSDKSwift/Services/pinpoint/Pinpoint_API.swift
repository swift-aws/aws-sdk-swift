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

*/
public struct Pinpoint {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "pinpoint",
            serviceProtocol: .restjson,
            apiVersion: "2016-12-01",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [PinpointError.self]
        )
    }

    ///  Returns information about a segment version.
    public func getSegmentVersion(_ input: GetSegmentVersionRequest) throws -> GetSegmentVersionResponse {
        return try client.send(operation: "GetSegmentVersion", path: "/v1/apps/{application-id}/segments/{segment-id}/versions/{version}", httpMethod: "GET", input: input)
    }

    ///  Returns information about your campaign versions.
    public func getCampaignVersion(_ input: GetCampaignVersionRequest) throws -> GetCampaignVersionResponse {
        return try client.send(operation: "GetCampaignVersion", path: "/v1/apps/{application-id}/campaigns/{campaign-id}/versions/{version}", httpMethod: "GET", input: input)
    }

    ///  Returns a list of import jobs for a specific segment.
    public func getSegmentImportJobs(_ input: GetSegmentImportJobsRequest) throws -> GetSegmentImportJobsResponse {
        return try client.send(operation: "GetSegmentImportJobs", path: "/v1/apps/{application-id}/segments/{segment-id}/jobs/import", httpMethod: "GET", input: input)
    }

    ///  Returns information about your campaign versions.
    public func getCampaignVersions(_ input: GetCampaignVersionsRequest) throws -> GetCampaignVersionsResponse {
        return try client.send(operation: "GetCampaignVersions", path: "/v1/apps/{application-id}/campaigns/{campaign-id}/versions", httpMethod: "GET", input: input)
    }

    ///  Returns information about the GCM channel for an app.
    public func getGcmChannel(_ input: GetGcmChannelRequest) throws -> GetGcmChannelResponse {
        return try client.send(operation: "GetGcmChannel", path: "/v1/apps/{application-id}/channels/gcm", httpMethod: "GET", input: input)
    }

    ///  Returns information about your import jobs.
    public func getImportJobs(_ input: GetImportJobsRequest) throws -> GetImportJobsResponse {
        return try client.send(operation: "GetImportJobs", path: "/v1/apps/{application-id}/jobs/import", httpMethod: "GET", input: input)
    }

    ///  Used to update the settings for an app.
    public func updateApplicationSettings(_ input: UpdateApplicationSettingsRequest) throws -> UpdateApplicationSettingsResponse {
        return try client.send(operation: "UpdateApplicationSettings", path: "/v1/apps/{application-id}/settings", httpMethod: "PUT", input: input)
    }

    ///  Deletes a campaign.
    public func deleteCampaign(_ input: DeleteCampaignRequest) throws -> DeleteCampaignResponse {
        return try client.send(operation: "DeleteCampaign", path: "/v1/apps/{application-id}/campaigns/{campaign-id}", httpMethod: "DELETE", input: input)
    }

    ///  Returns information about a segment.
    public func getSegment(_ input: GetSegmentRequest) throws -> GetSegmentResponse {
        return try client.send(operation: "GetSegment", path: "/v1/apps/{application-id}/segments/{segment-id}", httpMethod: "GET", input: input)
    }

    ///  Use to update a segment.
    public func updateSegment(_ input: UpdateSegmentRequest) throws -> UpdateSegmentResponse {
        return try client.send(operation: "UpdateSegment", path: "/v1/apps/{application-id}/segments/{segment-id}", httpMethod: "PUT", input: input)
    }

    ///  Used to create or update a segment.
    public func createSegment(_ input: CreateSegmentRequest) throws -> CreateSegmentResponse {
        return try client.send(operation: "CreateSegment", path: "/v1/apps/{application-id}/segments", httpMethod: "POST", input: input)
    }

    ///  Use to update your endpoints.
    public func updateEndpointsBatch(_ input: UpdateEndpointsBatchRequest) throws -> UpdateEndpointsBatchResponse {
        return try client.send(operation: "UpdateEndpointsBatch", path: "/v1/apps/{application-id}/endpoints", httpMethod: "PUT", input: input)
    }

    ///  Creates or updates an import job.
    public func createImportJob(_ input: CreateImportJobRequest) throws -> CreateImportJobResponse {
        return try client.send(operation: "CreateImportJob", path: "/v1/apps/{application-id}/jobs/import", httpMethod: "POST", input: input)
    }

    ///  Deletes the GCM channel for an app.
    public func deleteGcmChannel(_ input: DeleteGcmChannelRequest) throws -> DeleteGcmChannelResponse {
        return try client.send(operation: "DeleteGcmChannel", path: "/v1/apps/{application-id}/channels/gcm", httpMethod: "DELETE", input: input)
    }

    ///  Returns information about the APNs channel for an app.
    public func getApnsChannel(_ input: GetApnsChannelRequest) throws -> GetApnsChannelResponse {
        return try client.send(operation: "GetApnsChannel", path: "/v1/apps/{application-id}/channels/apns", httpMethod: "GET", input: input)
    }

    ///  Returns information about a campaign.
    public func getCampaign(_ input: GetCampaignRequest) throws -> GetCampaignResponse {
        return try client.send(operation: "GetCampaign", path: "/v1/apps/{application-id}/campaigns/{campaign-id}", httpMethod: "GET", input: input)
    }

    ///  Use to update an endpoint.
    public func updateEndpoint(_ input: UpdateEndpointRequest) throws -> UpdateEndpointResponse {
        return try client.send(operation: "UpdateEndpoint", path: "/v1/apps/{application-id}/endpoints/{endpoint-id}", httpMethod: "PUT", input: input)
    }

    ///  Returns information about your campaigns.
    public func getCampaigns(_ input: GetCampaignsRequest) throws -> GetCampaignsResponse {
        return try client.send(operation: "GetCampaigns", path: "/v1/apps/{application-id}/campaigns", httpMethod: "GET", input: input)
    }

    ///  Deletes a segment.
    public func deleteSegment(_ input: DeleteSegmentRequest) throws -> DeleteSegmentResponse {
        return try client.send(operation: "DeleteSegment", path: "/v1/apps/{application-id}/segments/{segment-id}", httpMethod: "DELETE", input: input)
    }

    ///  Use to update a campaign.
    public func updateCampaign(_ input: UpdateCampaignRequest) throws -> UpdateCampaignResponse {
        return try client.send(operation: "UpdateCampaign", path: "/v1/apps/{application-id}/campaigns/{campaign-id}", httpMethod: "PUT", input: input)
    }

    ///  Returns information about an endpoint.
    public func getEndpoint(_ input: GetEndpointRequest) throws -> GetEndpointResponse {
        return try client.send(operation: "GetEndpoint", path: "/v1/apps/{application-id}/endpoints/{endpoint-id}", httpMethod: "GET", input: input)
    }

    ///  Returns information about an import job.
    public func getImportJob(_ input: GetImportJobRequest) throws -> GetImportJobResponse {
        return try client.send(operation: "GetImportJob", path: "/v1/apps/{application-id}/jobs/import/{job-id}", httpMethod: "GET", input: input)
    }

    ///  Returns information about your segment versions.
    public func getSegmentVersions(_ input: GetSegmentVersionsRequest) throws -> GetSegmentVersionsResponse {
        return try client.send(operation: "GetSegmentVersions", path: "/v1/apps/{application-id}/segments/{segment-id}/versions", httpMethod: "GET", input: input)
    }

    ///  Use to update the APNs channel for an app.
    public func updateApnsChannel(_ input: UpdateApnsChannelRequest) throws -> UpdateApnsChannelResponse {
        return try client.send(operation: "UpdateApnsChannel", path: "/v1/apps/{application-id}/channels/apns", httpMethod: "PUT", input: input)
    }

    ///  Deletes the APNs channel for an app.
    public func deleteApnsChannel(_ input: DeleteApnsChannelRequest) throws -> DeleteApnsChannelResponse {
        return try client.send(operation: "DeleteApnsChannel", path: "/v1/apps/{application-id}/channels/apns", httpMethod: "DELETE", input: input)
    }

    ///  Returns information about the activity performed by a campaign.
    public func getCampaignActivities(_ input: GetCampaignActivitiesRequest) throws -> GetCampaignActivitiesResponse {
        return try client.send(operation: "GetCampaignActivities", path: "/v1/apps/{application-id}/campaigns/{campaign-id}/activities", httpMethod: "GET", input: input)
    }

    ///  Creates or updates a campaign.
    public func createCampaign(_ input: CreateCampaignRequest) throws -> CreateCampaignResponse {
        return try client.send(operation: "CreateCampaign", path: "/v1/apps/{application-id}/campaigns", httpMethod: "POST", input: input)
    }

    ///  Use to update the GCM channel for an app.
    public func updateGcmChannel(_ input: UpdateGcmChannelRequest) throws -> UpdateGcmChannelResponse {
        return try client.send(operation: "UpdateGcmChannel", path: "/v1/apps/{application-id}/channels/gcm", httpMethod: "PUT", input: input)
    }

    ///  Used to request the settings for an app.
    public func getApplicationSettings(_ input: GetApplicationSettingsRequest) throws -> GetApplicationSettingsResponse {
        return try client.send(operation: "GetApplicationSettings", path: "/v1/apps/{application-id}/settings", httpMethod: "GET", input: input)
    }

    ///  Used to get information about your segments.
    public func getSegments(_ input: GetSegmentsRequest) throws -> GetSegmentsResponse {
        return try client.send(operation: "GetSegments", path: "/v1/apps/{application-id}/segments", httpMethod: "GET", input: input)
    }


}