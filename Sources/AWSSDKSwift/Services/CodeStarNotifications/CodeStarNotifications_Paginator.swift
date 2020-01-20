// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.


extension CodeStarNotifications {

    ///  Returns information about the event types available for configuring notifications.
    public func listEventTypesPaginator(_ input: ListEventTypesRequest) -> Future<[EventTypeSummary]> {
        return client.paginate(input: input, command: listEventTypes, resultKey: "eventTypes", tokenKey: "nextToken")
    }
    
    ///  Returns a list of the notification rules for an AWS account.
    public func listNotificationRulesPaginator(_ input: ListNotificationRulesRequest) -> Future<[NotificationRuleSummary]> {
        return client.paginate(input: input, command: listNotificationRules, resultKey: "notificationRules", tokenKey: "nextToken")
    }
    
    ///  Returns a list of the notification rule targets for an AWS account.
    public func listTargetsPaginator(_ input: ListTargetsRequest) -> Future<[TargetSummary]> {
        return client.paginate(input: input, command: listTargets, resultKey: "targets", tokenKey: "nextToken")
    }
    
}

extension CodeStarNotifications.ListEventTypesRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            filters: original.filters, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension CodeStarNotifications.ListNotificationRulesRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            filters: original.filters, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension CodeStarNotifications.ListTargetsRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            filters: original.filters, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

