// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension FraudDetector {

    ///  Gets all of the model versions for the specified model type or for the specified model type and model ID. You can also get details for a single, specified model version. 
    public func describeModelVersionsPaginator(_ input: DescribeModelVersionsRequest, onPage: @escaping (DescribeModelVersionsResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeModelVersions, tokenKey: \DescribeModelVersionsResult.nextToken, onPage: onPage)
    }

    ///  Gets all of detectors. This is a paginated API. If you provide a null maxSizePerPage, this actions retrieves a maximum of 10 records per page. If you provide a maxSizePerPage, the value must be between 5 and 10. To get the next page results, provide the pagination token from the GetEventTypesResponse as part of your request. A null pagination token fetches the records from the beginning. 
    public func getDetectorsPaginator(_ input: GetDetectorsRequest, onPage: @escaping (GetDetectorsResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getDetectors, tokenKey: \GetDetectorsResult.nextToken, onPage: onPage)
    }

    ///  Gets the details for one or more Amazon SageMaker models that have been imported into the service. This is a paginated API. If you provide a null maxSizePerPage, this actions retrieves a maximum of 10 records per page. If you provide a maxSizePerPage, the value must be between 5 and 10. To get the next page results, provide the pagination token from the GetExternalModelsResult as part of your request. A null pagination token fetches the records from the beginning. 
    public func getExternalModelsPaginator(_ input: GetExternalModelsRequest, onPage: @escaping (GetExternalModelsResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getExternalModels, tokenKey: \GetExternalModelsResult.nextToken, onPage: onPage)
    }

    ///  Gets all of the models for the AWS account, or the specified model type, or gets a single model for the specified model type, model ID combination. 
    public func getModelsPaginator(_ input: GetModelsRequest, onPage: @escaping (GetModelsResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getModels, tokenKey: \GetModelsResult.nextToken, onPage: onPage)
    }

    ///  Gets one or more outcomes. This is a paginated API. If you provide a null maxSizePerPage, this actions retrieves a maximum of 10 records per page. If you provide a maxSizePerPage, the value must be between 50 and 100. To get the next page results, provide the pagination token from the GetOutcomesResult as part of your request. A null pagination token fetches the records from the beginning. 
    public func getOutcomesPaginator(_ input: GetOutcomesRequest, onPage: @escaping (GetOutcomesResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getOutcomes, tokenKey: \GetOutcomesResult.nextToken, onPage: onPage)
    }

    ///  Gets all rules available for the specified detector.
    public func getRulesPaginator(_ input: GetRulesRequest, onPage: @escaping (GetRulesResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getRules, tokenKey: \GetRulesResult.nextToken, onPage: onPage)
    }

    ///  Gets all of the variables or the specific variable. This is a paginated API. Providing null maxSizePerPage results in retrieving maximum of 100 records per page. If you provide maxSizePerPage the value must be between 50 and 100. To get the next page result, a provide a pagination token from GetVariablesResult as part of your request. Null pagination token fetches the records from the beginning. 
    public func getVariablesPaginator(_ input: GetVariablesRequest, onPage: @escaping (GetVariablesResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getVariables, tokenKey: \GetVariablesResult.nextToken, onPage: onPage)
    }

}

extension FraudDetector.DescribeModelVersionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> FraudDetector.DescribeModelVersionsRequest {
        return .init(
            maxResults: self.maxResults, 
            modelId: self.modelId, 
            modelType: self.modelType, 
            modelVersionNumber: self.modelVersionNumber, 
            nextToken: token
        )

    }
}

extension FraudDetector.GetDetectorsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> FraudDetector.GetDetectorsRequest {
        return .init(
            detectorId: self.detectorId, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension FraudDetector.GetExternalModelsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> FraudDetector.GetExternalModelsRequest {
        return .init(
            maxResults: self.maxResults, 
            modelEndpoint: self.modelEndpoint, 
            nextToken: token
        )

    }
}

extension FraudDetector.GetModelsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> FraudDetector.GetModelsRequest {
        return .init(
            maxResults: self.maxResults, 
            modelId: self.modelId, 
            modelType: self.modelType, 
            nextToken: token
        )

    }
}

extension FraudDetector.GetOutcomesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> FraudDetector.GetOutcomesRequest {
        return .init(
            maxResults: self.maxResults, 
            name: self.name, 
            nextToken: token
        )

    }
}

extension FraudDetector.GetRulesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> FraudDetector.GetRulesRequest {
        return .init(
            detectorId: self.detectorId, 
            maxResults: self.maxResults, 
            nextToken: token, 
            ruleId: self.ruleId, 
            ruleVersion: self.ruleVersion
        )

    }
}

extension FraudDetector.GetVariablesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> FraudDetector.GetVariablesRequest {
        return .init(
            maxResults: self.maxResults, 
            name: self.name, 
            nextToken: token
        )

    }
}


