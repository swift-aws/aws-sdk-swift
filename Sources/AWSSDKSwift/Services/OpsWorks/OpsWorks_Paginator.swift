// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension OpsWorks {

    ///  Describes Amazon ECS clusters that are registered with a stack. If you specify only a stack ID, you can use the MaxResults and NextToken parameters to paginate the response. However, AWS OpsWorks Stacks currently supports only one cluster per layer, so the result set has a maximum of one element.  Required Permissions: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack or an attached policy that explicitly grants permission. For more information about user permissions, see Managing User Permissions. This call accepts only one resource-identifying parameter.
    public func describeEcsClustersPaginator(_ input: DescribeEcsClustersRequest, onPage: @escaping (DescribeEcsClustersResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeEcsClusters, tokenKey: \DescribeEcsClustersResult.nextToken, onPage: onPage)
    }

}

extension OpsWorks.DescribeEcsClustersRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> OpsWorks.DescribeEcsClustersRequest {
        return .init(
            ecsClusterArns: self.ecsClusterArns, 
            maxResults: self.maxResults, 
            nextToken: token, 
            stackId: self.stackId
        )

    }
}


