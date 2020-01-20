// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.


extension ConfigService {

    ///  Provides a detailed view of a Remediation Execution for a set of resources including state, timestamps for when steps for the remediation execution occur, and any error messages for steps that have failed. When you specify the limit and the next token, you receive a paginated response.
    public func describeRemediationExecutionStatusPaginator(_ input: DescribeRemediationExecutionStatusRequest) -> Future<[RemediationExecutionStatus]> {
        return client.paginate(input: input, command: describeRemediationExecutionStatus, resultKey: "remediationExecutionStatuses", tokenKey: "nextToken")
    }
    
    ///  Returns a list of configuration items for the specified resource. The list contains details about each state of the resource during the specified time interval. If you specified a retention period to retain your ConfigurationItems between a minimum of 30 days and a maximum of 7 years (2557 days), AWS Config returns the ConfigurationItems for the specified retention period.  The response is paginated. By default, AWS Config returns a limit of 10 configuration items per page. You can customize this number with the limit parameter. The response includes a nextToken string. To get the next page of results, run the request again and specify the string for the nextToken parameter.  Each call to the API is limited to span a duration of seven days. It is likely that the number of records returned is smaller than the specified limit. In such cases, you can make another call, using the nextToken. 
    public func getResourceConfigHistoryPaginator(_ input: GetResourceConfigHistoryRequest) -> Future<[ConfigurationItem]> {
        return client.paginate(input: input, command: getResourceConfigHistory, resultKey: "configurationItems", tokenKey: "nextToken")
    }
    
}

extension ConfigService.DescribeRemediationExecutionStatusRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            configRuleName: original.configRuleName, 
            limit: original.limit, 
            nextToken: token, 
            resourceKeys: original.resourceKeys
        )
    }
}

extension ConfigService.GetResourceConfigHistoryRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            chronologicalOrder: original.chronologicalOrder, 
            earlierTime: original.earlierTime, 
            laterTime: original.laterTime, 
            limit: original.limit, 
            nextToken: token, 
            resourceId: original.resourceId, 
            resourceType: original.resourceType
        )
    }
}

