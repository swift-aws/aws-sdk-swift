//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto-codegenerator.
// DO NOT EDIT.

@_exported import SotoCore

/// Service object for interacting with AWS Location service.
///
/// Suite of geospatial services including Maps, Places, Routes, Tracking, and Geofencing
public struct Location: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Location client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "geo",
            serviceProtocol: .restjson,
            apiVersion: "2020-11-19",
            endpoint: endpoint,
            errorType: LocationErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Creates an association between a geofence collection and a tracker resource. This allows the tracker resource to communicate location data to the linked geofence collection.  Currently not supported — Cross-account configurations, such as creating associations between a tracker resource in one account and a geofence collection in another account.
    public func associateTrackerConsumer(_ input: AssociateTrackerConsumerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateTrackerConsumerResponse> {
        return self.client.execute(operation: "AssociateTrackerConsumer", path: "/tracking/v0/trackers/{TrackerName}/consumers", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "tracking.", logger: logger, on: eventLoop)
    }

    /// Deletes the position history of one or more devices from a tracker resource.
    public func batchDeleteDevicePositionHistory(_ input: BatchDeleteDevicePositionHistoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchDeleteDevicePositionHistoryResponse> {
        return self.client.execute(operation: "BatchDeleteDevicePositionHistory", path: "/tracking/v0/trackers/{TrackerName}/delete-positions", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "tracking.", logger: logger, on: eventLoop)
    }

    /// Deletes a batch of geofences from a geofence collection.  This operation deletes the resource permanently.
    public func batchDeleteGeofence(_ input: BatchDeleteGeofenceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchDeleteGeofenceResponse> {
        return self.client.execute(operation: "BatchDeleteGeofence", path: "/geofencing/v0/collections/{CollectionName}/delete-geofences", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "geofencing.", logger: logger, on: eventLoop)
    }

    /// Evaluates device positions against the geofence geometries from a given geofence collection. The evaluation determines if the device has entered or exited a geofenced area, which publishes ENTER or EXIT geofence events to Amazon EventBridge.  The last geofence that a device was observed within, if any, is tracked for 30 days after the most recent device position update
    public func batchEvaluateGeofences(_ input: BatchEvaluateGeofencesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchEvaluateGeofencesResponse> {
        return self.client.execute(operation: "BatchEvaluateGeofences", path: "/geofencing/v0/collections/{CollectionName}/positions", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "geofencing.", logger: logger, on: eventLoop)
    }

    /// A batch request to retrieve all device positions.
    public func batchGetDevicePosition(_ input: BatchGetDevicePositionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchGetDevicePositionResponse> {
        return self.client.execute(operation: "BatchGetDevicePosition", path: "/tracking/v0/trackers/{TrackerName}/get-positions", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "tracking.", logger: logger, on: eventLoop)
    }

    /// A batch request for storing geofence geometries into a given geofence collection, or updates the geometry of an existing geofence if a geofence ID is included in the request.
    public func batchPutGeofence(_ input: BatchPutGeofenceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchPutGeofenceResponse> {
        return self.client.execute(operation: "BatchPutGeofence", path: "/geofencing/v0/collections/{CollectionName}/put-geofences", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "geofencing.", logger: logger, on: eventLoop)
    }

    /// Uploads position update data for one or more devices to a tracker resource. Amazon Location uses the data when reporting the last known device position and position history.  Only one position update is stored per sample time. Location data is sampled at a fixed rate of one position per 30-second interval and retained for 30 days before it's deleted.
    public func batchUpdateDevicePosition(_ input: BatchUpdateDevicePositionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchUpdateDevicePositionResponse> {
        return self.client.execute(operation: "BatchUpdateDevicePosition", path: "/tracking/v0/trackers/{TrackerName}/positions", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "tracking.", logger: logger, on: eventLoop)
    }

    ///  Calculates a route given the following required parameters: DeparturePostiton and DestinationPosition. Requires that you first create aroute calculator resource  By default, a request that doesn't specify a departure time uses the best time of day to travel with the best traffic conditions when calculating the route. Additional options include:    Specifying a departure time using either DepartureTime or DepartureNow. This calculates a route based on predictive traffic data at the given time.   You can't specify both DepartureTime and DepartureNow in a single request. Specifying both parameters returns an error message.     Specifying a travel mode using TravelMode. This lets you specify additional route preference such as CarModeOptions if traveling by Car, or TruckModeOptions if traveling by Truck.
    public func calculateRoute(_ input: CalculateRouteRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CalculateRouteResponse> {
        return self.client.execute(operation: "CalculateRoute", path: "/routes/v0/calculators/{CalculatorName}/calculate/route", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "routes.", logger: logger, on: eventLoop)
    }

    /// Creates a geofence collection, which manages and stores geofences.
    public func createGeofenceCollection(_ input: CreateGeofenceCollectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateGeofenceCollectionResponse> {
        return self.client.execute(operation: "CreateGeofenceCollection", path: "/geofencing/v0/collections", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "geofencing.", logger: logger, on: eventLoop)
    }

    /// Creates a map resource in your AWS account, which provides map tiles of different styles sourced from global location data providers.
    public func createMap(_ input: CreateMapRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMapResponse> {
        return self.client.execute(operation: "CreateMap", path: "/maps/v0/maps", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "maps.", logger: logger, on: eventLoop)
    }

    /// Creates a place index resource in your AWS account, which supports functions with geospatial data sourced from your chosen data provider.
    public func createPlaceIndex(_ input: CreatePlaceIndexRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePlaceIndexResponse> {
        return self.client.execute(operation: "CreatePlaceIndex", path: "/places/v0/indexes", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "places.", logger: logger, on: eventLoop)
    }

    /// Creates a route calculator resource in your AWS account. You can send requests to a route calculator resource to estimate travel time, distance, and get directions. A route calculator sources traffic and road network data from your chosen data provider.
    public func createRouteCalculator(_ input: CreateRouteCalculatorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRouteCalculatorResponse> {
        return self.client.execute(operation: "CreateRouteCalculator", path: "/routes/v0/calculators", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "routes.", logger: logger, on: eventLoop)
    }

    /// Creates a tracker resource in your AWS account, which lets you retrieve current and historical location of devices.
    public func createTracker(_ input: CreateTrackerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTrackerResponse> {
        return self.client.execute(operation: "CreateTracker", path: "/tracking/v0/trackers", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "tracking.", logger: logger, on: eventLoop)
    }

    /// Deletes a geofence collection from your AWS account.  This operation deletes the resource permanently. If the geofence collection is the target of a tracker resource, the devices will no longer be monitored.
    public func deleteGeofenceCollection(_ input: DeleteGeofenceCollectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteGeofenceCollectionResponse> {
        return self.client.execute(operation: "DeleteGeofenceCollection", path: "/geofencing/v0/collections/{CollectionName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "geofencing.", logger: logger, on: eventLoop)
    }

    /// Deletes a map resource from your AWS account.  This operation deletes the resource permanently. If the map is being used in an application, the map may not render.
    public func deleteMap(_ input: DeleteMapRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMapResponse> {
        return self.client.execute(operation: "DeleteMap", path: "/maps/v0/maps/{MapName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "maps.", logger: logger, on: eventLoop)
    }

    /// Deletes a place index resource from your AWS account.  This operation deletes the resource permanently.
    public func deletePlaceIndex(_ input: DeletePlaceIndexRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePlaceIndexResponse> {
        return self.client.execute(operation: "DeletePlaceIndex", path: "/places/v0/indexes/{IndexName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "places.", logger: logger, on: eventLoop)
    }

    /// Deletes a route calculator resource from your AWS account.  This operation deletes the resource permanently.
    public func deleteRouteCalculator(_ input: DeleteRouteCalculatorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRouteCalculatorResponse> {
        return self.client.execute(operation: "DeleteRouteCalculator", path: "/routes/v0/calculators/{CalculatorName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "routes.", logger: logger, on: eventLoop)
    }

    /// Deletes a tracker resource from your AWS account.  This operation deletes the resource permanently. If the tracker resource is in use, you may encounter an error. Make sure that the target resource isn't a dependency for your applications.
    public func deleteTracker(_ input: DeleteTrackerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTrackerResponse> {
        return self.client.execute(operation: "DeleteTracker", path: "/tracking/v0/trackers/{TrackerName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "tracking.", logger: logger, on: eventLoop)
    }

    /// Retrieves the geofence collection details.
    public func describeGeofenceCollection(_ input: DescribeGeofenceCollectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGeofenceCollectionResponse> {
        return self.client.execute(operation: "DescribeGeofenceCollection", path: "/geofencing/v0/collections/{CollectionName}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "geofencing.", logger: logger, on: eventLoop)
    }

    /// Retrieves the map resource details.
    public func describeMap(_ input: DescribeMapRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMapResponse> {
        return self.client.execute(operation: "DescribeMap", path: "/maps/v0/maps/{MapName}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "maps.", logger: logger, on: eventLoop)
    }

    /// Retrieves the place index resource details.
    public func describePlaceIndex(_ input: DescribePlaceIndexRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePlaceIndexResponse> {
        return self.client.execute(operation: "DescribePlaceIndex", path: "/places/v0/indexes/{IndexName}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "places.", logger: logger, on: eventLoop)
    }

    /// Retrieves the route calculator resource details.
    public func describeRouteCalculator(_ input: DescribeRouteCalculatorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRouteCalculatorResponse> {
        return self.client.execute(operation: "DescribeRouteCalculator", path: "/routes/v0/calculators/{CalculatorName}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "routes.", logger: logger, on: eventLoop)
    }

    /// Retrieves the tracker resource details.
    public func describeTracker(_ input: DescribeTrackerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrackerResponse> {
        return self.client.execute(operation: "DescribeTracker", path: "/tracking/v0/trackers/{TrackerName}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "tracking.", logger: logger, on: eventLoop)
    }

    /// Removes the association between a tracker resource and a geofence collection.  Once you unlink a tracker resource from a geofence collection, the tracker positions will no longer be automatically evaluated against geofences.
    public func disassociateTrackerConsumer(_ input: DisassociateTrackerConsumerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateTrackerConsumerResponse> {
        return self.client.execute(operation: "DisassociateTrackerConsumer", path: "/tracking/v0/trackers/{TrackerName}/consumers/{ConsumerArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "tracking.", logger: logger, on: eventLoop)
    }

    /// Retrieves a device's most recent position according to its sample time.  Device positions are deleted after 30 days.
    public func getDevicePosition(_ input: GetDevicePositionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDevicePositionResponse> {
        return self.client.execute(operation: "GetDevicePosition", path: "/tracking/v0/trackers/{TrackerName}/devices/{DeviceId}/positions/latest", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "tracking.", logger: logger, on: eventLoop)
    }

    /// Retrieves the device position history from a tracker resource within a specified range of time.  Device positions are deleted after 30 days.
    public func getDevicePositionHistory(_ input: GetDevicePositionHistoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDevicePositionHistoryResponse> {
        return self.client.execute(operation: "GetDevicePositionHistory", path: "/tracking/v0/trackers/{TrackerName}/devices/{DeviceId}/list-positions", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "tracking.", logger: logger, on: eventLoop)
    }

    /// Retrieves the geofence details from a geofence collection.
    public func getGeofence(_ input: GetGeofenceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetGeofenceResponse> {
        return self.client.execute(operation: "GetGeofence", path: "/geofencing/v0/collections/{CollectionName}/geofences/{GeofenceId}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "geofencing.", logger: logger, on: eventLoop)
    }

    /// Retrieves glyphs used to display labels on a map.
    public func getMapGlyphs(_ input: GetMapGlyphsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetMapGlyphsResponse> {
        return self.client.execute(operation: "GetMapGlyphs", path: "/maps/v0/maps/{MapName}/glyphs/{FontStack}/{FontUnicodeRange}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "maps.", logger: logger, on: eventLoop)
    }

    /// Retrieves the sprite sheet corresponding to a map resource. The sprite sheet is a PNG image paired with a JSON document describing the offsets of individual icons that will be displayed on a rendered map.
    public func getMapSprites(_ input: GetMapSpritesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetMapSpritesResponse> {
        return self.client.execute(operation: "GetMapSprites", path: "/maps/v0/maps/{MapName}/sprites/{FileName}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "maps.", logger: logger, on: eventLoop)
    }

    /// Retrieves the map style descriptor from a map resource.  The style descriptor contains speciﬁcations on how features render on a map. For example, what data to display, what order to display the data in, and the style for the data. Style descriptors follow the Mapbox Style Specification.
    public func getMapStyleDescriptor(_ input: GetMapStyleDescriptorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetMapStyleDescriptorResponse> {
        return self.client.execute(operation: "GetMapStyleDescriptor", path: "/maps/v0/maps/{MapName}/style-descriptor", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "maps.", logger: logger, on: eventLoop)
    }

    /// Retrieves a vector data tile from the map resource. Map tiles are used by clients to render a map. they're addressed using a grid arrangement with an X coordinate, Y coordinate, and Z (zoom) level.  The origin (0, 0) is the top left of the map. Increasing the zoom level by 1 doubles both the X and Y dimensions, so a tile containing data for the entire world at (0/0/0) will be split into 4 tiles at zoom 1 (1/0/0, 1/0/1, 1/1/0, 1/1/1).
    public func getMapTile(_ input: GetMapTileRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetMapTileResponse> {
        return self.client.execute(operation: "GetMapTile", path: "/maps/v0/maps/{MapName}/tiles/{Z}/{X}/{Y}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "maps.", logger: logger, on: eventLoop)
    }

    /// Lists the latest device positions for requested devices.
    public func listDevicePositions(_ input: ListDevicePositionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDevicePositionsResponse> {
        return self.client.execute(operation: "ListDevicePositions", path: "/tracking/v0/trackers/{TrackerName}/list-positions", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "tracking.", logger: logger, on: eventLoop)
    }

    /// Lists geofence collections in your AWS account.
    public func listGeofenceCollections(_ input: ListGeofenceCollectionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListGeofenceCollectionsResponse> {
        return self.client.execute(operation: "ListGeofenceCollections", path: "/geofencing/v0/list-collections", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "geofencing.", logger: logger, on: eventLoop)
    }

    /// Lists geofences stored in a given geofence collection.
    public func listGeofences(_ input: ListGeofencesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListGeofencesResponse> {
        return self.client.execute(operation: "ListGeofences", path: "/geofencing/v0/collections/{CollectionName}/list-geofences", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "geofencing.", logger: logger, on: eventLoop)
    }

    /// Lists map resources in your AWS account.
    public func listMaps(_ input: ListMapsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListMapsResponse> {
        return self.client.execute(operation: "ListMaps", path: "/maps/v0/list-maps", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "maps.", logger: logger, on: eventLoop)
    }

    /// Lists place index resources in your AWS account.
    public func listPlaceIndexes(_ input: ListPlaceIndexesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPlaceIndexesResponse> {
        return self.client.execute(operation: "ListPlaceIndexes", path: "/places/v0/list-indexes", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "places.", logger: logger, on: eventLoop)
    }

    /// Lists route calculator resources in your AWS account.
    public func listRouteCalculators(_ input: ListRouteCalculatorsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRouteCalculatorsResponse> {
        return self.client.execute(operation: "ListRouteCalculators", path: "/routes/v0/list-calculators", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "routes.", logger: logger, on: eventLoop)
    }

    /// Returns the tags for the specified Amazon Location Service resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "metadata.", logger: logger, on: eventLoop)
    }

    /// Lists geofence collections currently associated to the given tracker resource.
    public func listTrackerConsumers(_ input: ListTrackerConsumersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTrackerConsumersResponse> {
        return self.client.execute(operation: "ListTrackerConsumers", path: "/tracking/v0/trackers/{TrackerName}/list-consumers", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "tracking.", logger: logger, on: eventLoop)
    }

    /// Lists tracker resources in your AWS account.
    public func listTrackers(_ input: ListTrackersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTrackersResponse> {
        return self.client.execute(operation: "ListTrackers", path: "/tracking/v0/list-trackers", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "tracking.", logger: logger, on: eventLoop)
    }

    /// Stores a geofence geometry in a given geofence collection, or updates the geometry of an existing geofence if a geofence ID is included in the request.
    public func putGeofence(_ input: PutGeofenceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutGeofenceResponse> {
        return self.client.execute(operation: "PutGeofence", path: "/geofencing/v0/collections/{CollectionName}/geofences/{GeofenceId}", httpMethod: .PUT, serviceConfig: self.config, input: input, hostPrefix: "geofencing.", logger: logger, on: eventLoop)
    }

    /// Reverse geocodes a given coordinate and returns a legible address. Allows you to search for Places or points of interest near a given position.
    public func searchPlaceIndexForPosition(_ input: SearchPlaceIndexForPositionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchPlaceIndexForPositionResponse> {
        return self.client.execute(operation: "SearchPlaceIndexForPosition", path: "/places/v0/indexes/{IndexName}/search/position", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "places.", logger: logger, on: eventLoop)
    }

    /// Geocodes free-form text, such as an address, name, city, or region to allow you to search for Places or points of interest.  Includes the option to apply additional parameters to narrow your list of results.  You can search for places near a given position using BiasPosition, or filter results within a bounding box using FilterBBox. Providing both parameters simultaneously returns an error.
    public func searchPlaceIndexForText(_ input: SearchPlaceIndexForTextRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchPlaceIndexForTextResponse> {
        return self.client.execute(operation: "SearchPlaceIndexForText", path: "/places/v0/indexes/{IndexName}/search/text", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "places.", logger: logger, on: eventLoop)
    }

    /// Assigns one or more tags (key-value pairs) to the specified Amazon Location Service resource.
    ///  Tags can help you organize and categorize your resources. You can also use them to scope user permissions, by granting a user permission to access or change only resources with certain tag values.
    ///  Tags don't have any semantic meaning to AWS and are interpreted strictly as strings of characters.
    ///  You can use the TagResource action with an Amazon Location Service resource that already has tags. If you specify a new tag key for the resource, this tag is appended to the tags already associated with the resource. If you specify a tag key that is already associated with the resource, the new tag value that you specify replaces the previous value for that tag.
    ///  You can associate as many as 50 tags with a resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "metadata.", logger: logger, on: eventLoop)
    }

    /// Removes one or more tags from the specified Amazon Location Service resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "metadata.", logger: logger, on: eventLoop)
    }
}

extension Location {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Location, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
