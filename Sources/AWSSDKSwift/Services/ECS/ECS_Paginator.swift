// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.


extension ECS {

    ///  Lists the attributes for Amazon ECS resources within a specified target type and cluster. When you specify a target type and cluster, ListAttributes returns a list of attribute objects, one for each attribute on each resource. You can filter the list of results to a single attribute name to only return results that have that name. You can also filter the results by attribute name and value, for example, to see which container instances in a cluster are running a Linux AMI (ecs.os-type=linux). 
    public func listAttributesPaginator(_ input: ListAttributesRequest) -> Future<[Attribute]> {
        return client.paginate(input: input, command: listAttributes, resultKey: "attributes", tokenKey: "nextToken")
    }
    
    ///  Returns a list of existing clusters.
    public func listClustersPaginator(_ input: ListClustersRequest) -> Future<[String]> {
        return client.paginate(input: input, command: listClusters, resultKey: "clusterArns", tokenKey: "nextToken")
    }
    
    ///  Returns a list of container instances in a specified cluster. You can filter the results of a ListContainerInstances operation with cluster query language statements inside the filter parameter. For more information, see Cluster Query Language in the Amazon Elastic Container Service Developer Guide.
    public func listContainerInstancesPaginator(_ input: ListContainerInstancesRequest) -> Future<[String]> {
        return client.paginate(input: input, command: listContainerInstances, resultKey: "containerInstanceArns", tokenKey: "nextToken")
    }
    
    ///  Lists the services that are running in a specified cluster.
    public func listServicesPaginator(_ input: ListServicesRequest) -> Future<[String]> {
        return client.paginate(input: input, command: listServices, resultKey: "serviceArns", tokenKey: "nextToken")
    }
    
    ///  Returns a list of task definition families that are registered to your account (which may include task definition families that no longer have any ACTIVE task definition revisions). You can filter out task definition families that do not contain any ACTIVE task definition revisions by setting the status parameter to ACTIVE. You can also filter the results with the familyPrefix parameter.
    public func listTaskDefinitionFamiliesPaginator(_ input: ListTaskDefinitionFamiliesRequest) -> Future<[String]> {
        return client.paginate(input: input, command: listTaskDefinitionFamilies, resultKey: "families", tokenKey: "nextToken")
    }
    
    ///  Returns a list of task definitions that are registered to your account. You can filter the results by family name with the familyPrefix parameter or by status with the status parameter.
    public func listTaskDefinitionsPaginator(_ input: ListTaskDefinitionsRequest) -> Future<[String]> {
        return client.paginate(input: input, command: listTaskDefinitions, resultKey: "taskDefinitionArns", tokenKey: "nextToken")
    }
    
    ///  Returns a list of tasks for a specified cluster. You can filter the results by family name, by a particular container instance, or by the desired status of the task with the family, containerInstance, and desiredStatus parameters. Recently stopped tasks might appear in the returned results. Currently, stopped tasks appear in the returned results for at least one hour. 
    public func listTasksPaginator(_ input: ListTasksRequest) -> Future<[String]> {
        return client.paginate(input: input, command: listTasks, resultKey: "taskArns", tokenKey: "nextToken")
    }
    
}

extension ECS.ListAttributesRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            attributeName: original.attributeName, 
            attributeValue: original.attributeValue, 
            cluster: original.cluster, 
            maxResults: original.maxResults, 
            nextToken: token, 
            targetType: original.targetType
        )
    }
}

extension ECS.ListClustersRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension ECS.ListContainerInstancesRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            cluster: original.cluster, 
            filter: original.filter, 
            maxResults: original.maxResults, 
            nextToken: token, 
            status: original.status
        )
    }
}

extension ECS.ListServicesRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            cluster: original.cluster, 
            launchType: original.launchType, 
            maxResults: original.maxResults, 
            nextToken: token, 
            schedulingStrategy: original.schedulingStrategy
        )
    }
}

extension ECS.ListTaskDefinitionFamiliesRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            familyPrefix: original.familyPrefix, 
            maxResults: original.maxResults, 
            nextToken: token, 
            status: original.status
        )
    }
}

extension ECS.ListTaskDefinitionsRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            familyPrefix: original.familyPrefix, 
            maxResults: original.maxResults, 
            nextToken: token, 
            sort: original.sort, 
            status: original.status
        )
    }
}

extension ECS.ListTasksRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            cluster: original.cluster, 
            containerInstance: original.containerInstance, 
            desiredStatus: original.desiredStatus, 
            family: original.family, 
            launchType: original.launchType, 
            maxResults: original.maxResults, 
            nextToken: token, 
            serviceName: original.serviceName, 
            startedBy: original.startedBy
        )
    }
}

