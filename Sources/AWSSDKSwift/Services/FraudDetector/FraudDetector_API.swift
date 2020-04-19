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
Client object for interacting with AWS FraudDetector service.

This is the Amazon Fraud Detector API Reference. This guide is for developers who need detailed information about Amazon Fraud Detector API actions, data types, and errors. For more information about Amazon Fraud Detector features, see the Amazon Fraud Detector User Guide.
*/
public struct FraudDetector {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the FraudDetector client
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
            amzTarget: "AWSHawksNestServiceFacade",
            service: "frauddetector",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2019-11-15",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [FraudDetectorErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Creates a batch of variables.
    public func batchCreateVariable(_ input: BatchCreateVariableRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchCreateVariableResult> {
        return client.send(operation: "BatchCreateVariable", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets a batch of variables.
    public func batchGetVariable(_ input: BatchGetVariableRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchGetVariableResult> {
        return client.send(operation: "BatchGetVariable", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a detector version. The detector version starts in a DRAFT status.
    public func createDetectorVersion(_ input: CreateDetectorVersionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDetectorVersionResult> {
        return client.send(operation: "CreateDetectorVersion", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a version of the model using the specified model type. 
    public func createModelVersion(_ input: CreateModelVersionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateModelVersionResult> {
        return client.send(operation: "CreateModelVersion", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a rule for use with the specified detector. 
    public func createRule(_ input: CreateRuleRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRuleResult> {
        return client.send(operation: "CreateRule", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a variable.
    public func createVariable(_ input: CreateVariableRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVariableResult> {
        return client.send(operation: "CreateVariable", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the detector. Before deleting a detector, you must first delete all detector versions and rule versions associated with the detector.
    public func deleteDetector(_ input: DeleteDetectorRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDetectorResult> {
        return client.send(operation: "DeleteDetector", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the detector version. You cannot delete detector versions that are in ACTIVE status.
    public func deleteDetectorVersion(_ input: DeleteDetectorVersionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDetectorVersionResult> {
        return client.send(operation: "DeleteDetectorVersion", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified event.
    public func deleteEvent(_ input: DeleteEventRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEventResult> {
        return client.send(operation: "DeleteEvent", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the rule version. You cannot delete a rule version if it is used by an ACTIVE or INACTIVE detector version.
    public func deleteRuleVersion(_ input: DeleteRuleVersionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRuleVersionResult> {
        return client.send(operation: "DeleteRuleVersion", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets all versions for a specified detector.
    public func describeDetector(_ input: DescribeDetectorRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDetectorResult> {
        return client.send(operation: "DescribeDetector", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets all of the model versions for the specified model type or for the specified model type and model ID. You can also get details for a single, specified model version. 
    public func describeModelVersions(_ input: DescribeModelVersionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeModelVersionsResult> {
        return client.send(operation: "DescribeModelVersions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets a particular detector version. 
    public func getDetectorVersion(_ input: GetDetectorVersionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDetectorVersionResult> {
        return client.send(operation: "GetDetectorVersion", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets all of detectors. This is a paginated API. If you provide a null maxSizePerPage, this actions retrieves a maximum of 10 records per page. If you provide a maxSizePerPage, the value must be between 5 and 10. To get the next page results, provide the pagination token from the GetEventTypesResponse as part of your request. A null pagination token fetches the records from the beginning. 
    public func getDetectors(_ input: GetDetectorsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDetectorsResult> {
        return client.send(operation: "GetDetectors", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets the details for one or more Amazon SageMaker models that have been imported into the service. This is a paginated API. If you provide a null maxSizePerPage, this actions retrieves a maximum of 10 records per page. If you provide a maxSizePerPage, the value must be between 5 and 10. To get the next page results, provide the pagination token from the GetExternalModelsResult as part of your request. A null pagination token fetches the records from the beginning. 
    public func getExternalModels(_ input: GetExternalModelsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetExternalModelsResult> {
        return client.send(operation: "GetExternalModels", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets a model version. 
    public func getModelVersion(_ input: GetModelVersionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetModelVersionResult> {
        return client.send(operation: "GetModelVersion", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets all of the models for the AWS account, or the specified model type, or gets a single model for the specified model type, model ID combination. 
    public func getModels(_ input: GetModelsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetModelsResult> {
        return client.send(operation: "GetModels", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets one or more outcomes. This is a paginated API. If you provide a null maxSizePerPage, this actions retrieves a maximum of 10 records per page. If you provide a maxSizePerPage, the value must be between 50 and 100. To get the next page results, provide the pagination token from the GetOutcomesResult as part of your request. A null pagination token fetches the records from the beginning. 
    public func getOutcomes(_ input: GetOutcomesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetOutcomesResult> {
        return client.send(operation: "GetOutcomes", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Evaluates an event against a detector version. If a version ID is not provided, the detector’s (ACTIVE) version is used. 
    public func getPrediction(_ input: GetPredictionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPredictionResult> {
        return client.send(operation: "GetPrediction", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets all rules available for the specified detector.
    public func getRules(_ input: GetRulesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRulesResult> {
        return client.send(operation: "GetRules", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets all of the variables or the specific variable. This is a paginated API. Providing null maxSizePerPage results in retrieving maximum of 100 records per page. If you provide maxSizePerPage the value must be between 50 and 100. To get the next page result, a provide a pagination token from GetVariablesResult as part of your request. Null pagination token fetches the records from the beginning. 
    public func getVariables(_ input: GetVariablesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetVariablesResult> {
        return client.send(operation: "GetVariables", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates or updates a detector. 
    public func putDetector(_ input: PutDetectorRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutDetectorResult> {
        return client.send(operation: "PutDetector", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates or updates an Amazon SageMaker model endpoint. You can also use this action to update the configuration of the model endpoint, including the IAM role and/or the mapped variables. 
    public func putExternalModel(_ input: PutExternalModelRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutExternalModelResult> {
        return client.send(operation: "PutExternalModel", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates or updates a model. 
    public func putModel(_ input: PutModelRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutModelResult> {
        return client.send(operation: "PutModel", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates or updates an outcome. 
    public func putOutcome(_ input: PutOutcomeRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutOutcomeResult> {
        return client.send(operation: "PutOutcome", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///   Updates a detector version. The detector version attributes that you can update include models, external model endpoints, rules, and description. You can only update a DRAFT detector version.
    public func updateDetectorVersion(_ input: UpdateDetectorVersionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDetectorVersionResult> {
        return client.send(operation: "UpdateDetectorVersion", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the detector version's description. You can update the metadata for any detector version (DRAFT, ACTIVE, or INACTIVE). 
    public func updateDetectorVersionMetadata(_ input: UpdateDetectorVersionMetadataRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDetectorVersionMetadataResult> {
        return client.send(operation: "UpdateDetectorVersionMetadata", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the detector version’s status. You can perform the following promotions or demotions using UpdateDetectorVersionStatus: DRAFT to ACTIVE, ACTIVE to INACTIVE, and INACTIVE to ACTIVE.
    public func updateDetectorVersionStatus(_ input: UpdateDetectorVersionStatusRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDetectorVersionStatusResult> {
        return client.send(operation: "UpdateDetectorVersionStatus", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates a model version. You can update the description and status attributes using this action. You can perform the following status updates:    Change the TRAINING_COMPLETE status to ACTIVE    Change ACTIVE back to TRAINING_COMPLETE   
    public func updateModelVersion(_ input: UpdateModelVersionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateModelVersionResult> {
        return client.send(operation: "UpdateModelVersion", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates a rule's metadata. 
    public func updateRuleMetadata(_ input: UpdateRuleMetadataRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRuleMetadataResult> {
        return client.send(operation: "UpdateRuleMetadata", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates a rule version resulting in a new rule version. 
    public func updateRuleVersion(_ input: UpdateRuleVersionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRuleVersionResult> {
        return client.send(operation: "UpdateRuleVersion", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates a variable.
    public func updateVariable(_ input: UpdateVariableRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateVariableResult> {
        return client.send(operation: "UpdateVariable", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }
}
