// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS Neptune service.

Amazon Neptune Amazon Neptune is a fast, reliable, fully-managed graph database service that makes it easy to build and run applications that work with highly connected datasets. The core of Amazon Neptune is a purpose-built, high-performance graph database engine optimized for storing billions of relationships and querying the graph with milliseconds latency. Amazon Neptune supports popular graph models Property Graph and W3C's RDF, and their respective query languages Apache TinkerPop Gremlin and SPARQL, allowing you to easily build queries that efficiently navigate highly connected datasets. Neptune powers graph use cases such as recommendation engines, fraud detection, knowledge graphs, drug discovery, and network security. This interface reference for Amazon Neptune contains documentation for a programming or command line interface you can use to manage Amazon Neptune. Note that Amazon Neptune is asynchronous, which means that some interfaces might require techniques such as polling or callback functions to determine when a command has been applied. In this reference, the parameter descriptions indicate whether a command is applied immediately, on the next instance reboot, or during the maintenance window. The reference structure is as follows, and we list following some related topics from the user guide.
*/
public struct Neptune {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the Neptune client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - eventLoopGroupProvider: EventLoopGroup to use. Use `useAWSClientShared` if the client shall manage its own EventLoopGroup.
    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider = .useAWSClientShared) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "rds",
            serviceProtocol: ServiceProtocol(type: .query),
            apiVersion: "2014-10-31",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [NeptuneErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }
    
    //MARK: API Calls

    ///  Associates an Identity and Access Management (IAM) role from an Neptune DB cluster.
    @discardableResult public func addRoleToDBCluster(_ input: AddRoleToDBClusterMessage) -> EventLoopFuture<Void> {
        return client.send(operation: "AddRoleToDBCluster", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds a source identifier to an existing event notification subscription.
    public func addSourceIdentifierToSubscription(_ input: AddSourceIdentifierToSubscriptionMessage) -> EventLoopFuture<AddSourceIdentifierToSubscriptionResult> {
        return client.send(operation: "AddSourceIdentifierToSubscription", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds metadata tags to an Amazon Neptune resource. These tags can also be used with cost allocation reporting to track cost associated with Amazon Neptune resources, or used in a Condition statement in an IAM policy for Amazon Neptune.
    @discardableResult public func addTagsToResource(_ input: AddTagsToResourceMessage) -> EventLoopFuture<Void> {
        return client.send(operation: "AddTagsToResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Applies a pending maintenance action to a resource (for example, to a DB instance).
    public func applyPendingMaintenanceAction(_ input: ApplyPendingMaintenanceActionMessage) -> EventLoopFuture<ApplyPendingMaintenanceActionResult> {
        return client.send(operation: "ApplyPendingMaintenanceAction", path: "/", httpMethod: "POST", input: input)
    }

    ///  Copies the specified DB cluster parameter group.
    public func copyDBClusterParameterGroup(_ input: CopyDBClusterParameterGroupMessage) -> EventLoopFuture<CopyDBClusterParameterGroupResult> {
        return client.send(operation: "CopyDBClusterParameterGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Copies a snapshot of a DB cluster. To copy a DB cluster snapshot from a shared manual DB cluster snapshot, SourceDBClusterSnapshotIdentifier must be the Amazon Resource Name (ARN) of the shared DB cluster snapshot. You can't copy from one AWS Region to another.
    public func copyDBClusterSnapshot(_ input: CopyDBClusterSnapshotMessage) -> EventLoopFuture<CopyDBClusterSnapshotResult> {
        return client.send(operation: "CopyDBClusterSnapshot", path: "/", httpMethod: "POST", input: input)
    }

    ///  Copies the specified DB parameter group.
    public func copyDBParameterGroup(_ input: CopyDBParameterGroupMessage) -> EventLoopFuture<CopyDBParameterGroupResult> {
        return client.send(operation: "CopyDBParameterGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new Amazon Neptune DB cluster. You can use the ReplicationSourceIdentifier parameter to create the DB cluster as a Read Replica of another DB cluster or Amazon Neptune DB instance.
    public func createDBCluster(_ input: CreateDBClusterMessage) -> EventLoopFuture<CreateDBClusterResult> {
        return client.send(operation: "CreateDBCluster", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new DB cluster parameter group. Parameters in a DB cluster parameter group apply to all of the instances in a DB cluster.  A DB cluster parameter group is initially created with the default parameters for the database engine used by instances in the DB cluster. To provide custom values for any of the parameters, you must modify the group after creating it using ModifyDBClusterParameterGroup. Once you've created a DB cluster parameter group, you need to associate it with your DB cluster using ModifyDBCluster. When you associate a new DB cluster parameter group with a running DB cluster, you need to reboot the DB instances in the DB cluster without failover for the new DB cluster parameter group and associated settings to take effect.  After you create a DB cluster parameter group, you should wait at least 5 minutes before creating your first DB cluster that uses that DB cluster parameter group as the default parameter group. This allows Amazon Neptune to fully complete the create action before the DB cluster parameter group is used as the default for a new DB cluster. This is especially important for parameters that are critical when creating the default database for a DB cluster, such as the character set for the default database defined by the character_set_database parameter. You can use the Parameter Groups option of the Amazon Neptune console or the DescribeDBClusterParameters command to verify that your DB cluster parameter group has been created or modified. 
    public func createDBClusterParameterGroup(_ input: CreateDBClusterParameterGroupMessage) -> EventLoopFuture<CreateDBClusterParameterGroupResult> {
        return client.send(operation: "CreateDBClusterParameterGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a snapshot of a DB cluster.
    public func createDBClusterSnapshot(_ input: CreateDBClusterSnapshotMessage) -> EventLoopFuture<CreateDBClusterSnapshotResult> {
        return client.send(operation: "CreateDBClusterSnapshot", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new DB instance.
    public func createDBInstance(_ input: CreateDBInstanceMessage) -> EventLoopFuture<CreateDBInstanceResult> {
        return client.send(operation: "CreateDBInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new DB parameter group. A DB parameter group is initially created with the default parameters for the database engine used by the DB instance. To provide custom values for any of the parameters, you must modify the group after creating it using ModifyDBParameterGroup. Once you've created a DB parameter group, you need to associate it with your DB instance using ModifyDBInstance. When you associate a new DB parameter group with a running DB instance, you need to reboot the DB instance without failover for the new DB parameter group and associated settings to take effect.  After you create a DB parameter group, you should wait at least 5 minutes before creating your first DB instance that uses that DB parameter group as the default parameter group. This allows Amazon Neptune to fully complete the create action before the parameter group is used as the default for a new DB instance. This is especially important for parameters that are critical when creating the default database for a DB instance, such as the character set for the default database defined by the character_set_database parameter. You can use the Parameter Groups option of the Amazon Neptune console or the DescribeDBParameters command to verify that your DB parameter group has been created or modified. 
    public func createDBParameterGroup(_ input: CreateDBParameterGroupMessage) -> EventLoopFuture<CreateDBParameterGroupResult> {
        return client.send(operation: "CreateDBParameterGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new DB subnet group. DB subnet groups must contain at least one subnet in at least two AZs in the AWS Region.
    public func createDBSubnetGroup(_ input: CreateDBSubnetGroupMessage) -> EventLoopFuture<CreateDBSubnetGroupResult> {
        return client.send(operation: "CreateDBSubnetGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an event notification subscription. This action requires a topic ARN (Amazon Resource Name) created by either the Neptune console, the SNS console, or the SNS API. To obtain an ARN with SNS, you must create a topic in Amazon SNS and subscribe to the topic. The ARN is displayed in the SNS console. You can specify the type of source (SourceType) you want to be notified of, provide a list of Neptune sources (SourceIds) that triggers the events, and provide a list of event categories (EventCategories) for events you want to be notified of. For example, you can specify SourceType = db-instance, SourceIds = mydbinstance1, mydbinstance2 and EventCategories = Availability, Backup. If you specify both the SourceType and SourceIds, such as SourceType = db-instance and SourceIdentifier = myDBInstance1, you are notified of all the db-instance events for the specified source. If you specify a SourceType but do not specify a SourceIdentifier, you receive notice of the events for that source type for all your Neptune sources. If you do not specify either the SourceType nor the SourceIdentifier, you are notified of events generated from all Neptune sources belonging to your customer account.
    public func createEventSubscription(_ input: CreateEventSubscriptionMessage) -> EventLoopFuture<CreateEventSubscriptionResult> {
        return client.send(operation: "CreateEventSubscription", path: "/", httpMethod: "POST", input: input)
    }

    ///  The DeleteDBCluster action deletes a previously provisioned DB cluster. When you delete a DB cluster, all automated backups for that DB cluster are deleted and can't be recovered. Manual DB cluster snapshots of the specified DB cluster are not deleted.
    public func deleteDBCluster(_ input: DeleteDBClusterMessage) -> EventLoopFuture<DeleteDBClusterResult> {
        return client.send(operation: "DeleteDBCluster", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a specified DB cluster parameter group. The DB cluster parameter group to be deleted can't be associated with any DB clusters.
    @discardableResult public func deleteDBClusterParameterGroup(_ input: DeleteDBClusterParameterGroupMessage) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteDBClusterParameterGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a DB cluster snapshot. If the snapshot is being copied, the copy operation is terminated.  The DB cluster snapshot must be in the available state to be deleted. 
    public func deleteDBClusterSnapshot(_ input: DeleteDBClusterSnapshotMessage) -> EventLoopFuture<DeleteDBClusterSnapshotResult> {
        return client.send(operation: "DeleteDBClusterSnapshot", path: "/", httpMethod: "POST", input: input)
    }

    ///  The DeleteDBInstance action deletes a previously provisioned DB instance. When you delete a DB instance, all automated backups for that instance are deleted and can't be recovered. Manual DB snapshots of the DB instance to be deleted by DeleteDBInstance are not deleted.  If you request a final DB snapshot the status of the Amazon Neptune DB instance is deleting until the DB snapshot is created. The API action DescribeDBInstance is used to monitor the status of this operation. The action can't be canceled or reverted once submitted. Note that when a DB instance is in a failure state and has a status of failed, incompatible-restore, or incompatible-network, you can only delete it when the SkipFinalSnapshot parameter is set to true. You can't delete a DB instance if it is the only instance in the DB cluster.
    public func deleteDBInstance(_ input: DeleteDBInstanceMessage) -> EventLoopFuture<DeleteDBInstanceResult> {
        return client.send(operation: "DeleteDBInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a specified DBParameterGroup. The DBParameterGroup to be deleted can't be associated with any DB instances.
    @discardableResult public func deleteDBParameterGroup(_ input: DeleteDBParameterGroupMessage) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteDBParameterGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a DB subnet group.  The specified database subnet group must not be associated with any DB instances. 
    @discardableResult public func deleteDBSubnetGroup(_ input: DeleteDBSubnetGroupMessage) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteDBSubnetGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an event notification subscription.
    public func deleteEventSubscription(_ input: DeleteEventSubscriptionMessage) -> EventLoopFuture<DeleteEventSubscriptionResult> {
        return client.send(operation: "DeleteEventSubscription", path: "/", httpMethod: "POST", input: input)
    }

    ///   Returns a list of DBClusterParameterGroup descriptions. If a DBClusterParameterGroupName parameter is specified, the list will contain only the description of the specified DB cluster parameter group.
    public func describeDBClusterParameterGroups(_ input: DescribeDBClusterParameterGroupsMessage) -> EventLoopFuture<DBClusterParameterGroupsMessage> {
        return client.send(operation: "DescribeDBClusterParameterGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the detailed parameter list for a particular DB cluster parameter group.
    public func describeDBClusterParameters(_ input: DescribeDBClusterParametersMessage) -> EventLoopFuture<DBClusterParameterGroupDetails> {
        return client.send(operation: "DescribeDBClusterParameters", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of DB cluster snapshot attribute names and values for a manual DB cluster snapshot. When sharing snapshots with other AWS accounts, DescribeDBClusterSnapshotAttributes returns the restore attribute and a list of IDs for the AWS accounts that are authorized to copy or restore the manual DB cluster snapshot. If all is included in the list of values for the restore attribute, then the manual DB cluster snapshot is public and can be copied or restored by all AWS accounts. To add or remove access for an AWS account to copy or restore a manual DB cluster snapshot, or to make the manual DB cluster snapshot public or private, use the ModifyDBClusterSnapshotAttribute API action.
    public func describeDBClusterSnapshotAttributes(_ input: DescribeDBClusterSnapshotAttributesMessage) -> EventLoopFuture<DescribeDBClusterSnapshotAttributesResult> {
        return client.send(operation: "DescribeDBClusterSnapshotAttributes", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about DB cluster snapshots. This API action supports pagination.
    public func describeDBClusterSnapshots(_ input: DescribeDBClusterSnapshotsMessage) -> EventLoopFuture<DBClusterSnapshotMessage> {
        return client.send(operation: "DescribeDBClusterSnapshots", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about provisioned DB clusters. This API supports pagination.
    public func describeDBClusters(_ input: DescribeDBClustersMessage) -> EventLoopFuture<DBClusterMessage> {
        return client.send(operation: "DescribeDBClusters", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of the available DB engines.
    public func describeDBEngineVersions(_ input: DescribeDBEngineVersionsMessage) -> EventLoopFuture<DBEngineVersionMessage> {
        return client.send(operation: "DescribeDBEngineVersions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about provisioned instances. This API supports pagination.
    public func describeDBInstances(_ input: DescribeDBInstancesMessage) -> EventLoopFuture<DBInstanceMessage> {
        return client.send(operation: "DescribeDBInstances", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of DBParameterGroup descriptions. If a DBParameterGroupName is specified, the list will contain only the description of the specified DB parameter group.
    public func describeDBParameterGroups(_ input: DescribeDBParameterGroupsMessage) -> EventLoopFuture<DBParameterGroupsMessage> {
        return client.send(operation: "DescribeDBParameterGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the detailed parameter list for a particular DB parameter group.
    public func describeDBParameters(_ input: DescribeDBParametersMessage) -> EventLoopFuture<DBParameterGroupDetails> {
        return client.send(operation: "DescribeDBParameters", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of DBSubnetGroup descriptions. If a DBSubnetGroupName is specified, the list will contain only the descriptions of the specified DBSubnetGroup. For an overview of CIDR ranges, go to the Wikipedia Tutorial.
    public func describeDBSubnetGroups(_ input: DescribeDBSubnetGroupsMessage) -> EventLoopFuture<DBSubnetGroupMessage> {
        return client.send(operation: "DescribeDBSubnetGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the default engine and system parameter information for the cluster database engine.
    public func describeEngineDefaultClusterParameters(_ input: DescribeEngineDefaultClusterParametersMessage) -> EventLoopFuture<DescribeEngineDefaultClusterParametersResult> {
        return client.send(operation: "DescribeEngineDefaultClusterParameters", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the default engine and system parameter information for the specified database engine.
    public func describeEngineDefaultParameters(_ input: DescribeEngineDefaultParametersMessage) -> EventLoopFuture<DescribeEngineDefaultParametersResult> {
        return client.send(operation: "DescribeEngineDefaultParameters", path: "/", httpMethod: "POST", input: input)
    }

    ///  Displays a list of categories for all event source types, or, if specified, for a specified source type.
    public func describeEventCategories(_ input: DescribeEventCategoriesMessage) -> EventLoopFuture<EventCategoriesMessage> {
        return client.send(operation: "DescribeEventCategories", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all the subscription descriptions for a customer account. The description for a subscription includes SubscriptionName, SNSTopicARN, CustomerID, SourceType, SourceID, CreationTime, and Status. If you specify a SubscriptionName, lists the description for that subscription.
    public func describeEventSubscriptions(_ input: DescribeEventSubscriptionsMessage) -> EventLoopFuture<EventSubscriptionsMessage> {
        return client.send(operation: "DescribeEventSubscriptions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns events related to DB instances, DB security groups, DB snapshots, and DB parameter groups for the past 14 days. Events specific to a particular DB instance, DB security group, database snapshot, or DB parameter group can be obtained by providing the name as a parameter. By default, the past hour of events are returned.
    public func describeEvents(_ input: DescribeEventsMessage) -> EventLoopFuture<EventsMessage> {
        return client.send(operation: "DescribeEvents", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of orderable DB instance options for the specified engine.
    public func describeOrderableDBInstanceOptions(_ input: DescribeOrderableDBInstanceOptionsMessage) -> EventLoopFuture<OrderableDBInstanceOptionsMessage> {
        return client.send(operation: "DescribeOrderableDBInstanceOptions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of resources (for example, DB instances) that have at least one pending maintenance action.
    public func describePendingMaintenanceActions(_ input: DescribePendingMaintenanceActionsMessage) -> EventLoopFuture<PendingMaintenanceActionsMessage> {
        return client.send(operation: "DescribePendingMaintenanceActions", path: "/", httpMethod: "POST", input: input)
    }

    ///  You can call DescribeValidDBInstanceModifications to learn what modifications you can make to your DB instance. You can use this information when you call ModifyDBInstance.
    public func describeValidDBInstanceModifications(_ input: DescribeValidDBInstanceModificationsMessage) -> EventLoopFuture<DescribeValidDBInstanceModificationsResult> {
        return client.send(operation: "DescribeValidDBInstanceModifications", path: "/", httpMethod: "POST", input: input)
    }

    ///  Forces a failover for a DB cluster. A failover for a DB cluster promotes one of the Read Replicas (read-only instances) in the DB cluster to be the primary instance (the cluster writer). Amazon Neptune will automatically fail over to a Read Replica, if one exists, when the primary instance fails. You can force a failover when you want to simulate a failure of a primary instance for testing. Because each instance in a DB cluster has its own endpoint address, you will need to clean up and re-establish any existing connections that use those endpoint addresses when the failover is complete.
    public func failoverDBCluster(_ input: FailoverDBClusterMessage) -> EventLoopFuture<FailoverDBClusterResult> {
        return client.send(operation: "FailoverDBCluster", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all tags on an Amazon Neptune resource.
    public func listTagsForResource(_ input: ListTagsForResourceMessage) -> EventLoopFuture<TagListMessage> {
        return client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modify a setting for a DB cluster. You can change one or more database configuration parameters by specifying these parameters and the new values in the request.
    public func modifyDBCluster(_ input: ModifyDBClusterMessage) -> EventLoopFuture<ModifyDBClusterResult> {
        return client.send(operation: "ModifyDBCluster", path: "/", httpMethod: "POST", input: input)
    }

    ///   Modifies the parameters of a DB cluster parameter group. To modify more than one parameter, submit a list of the following: ParameterName, ParameterValue, and ApplyMethod. A maximum of 20 parameters can be modified in a single request.  Changes to dynamic parameters are applied immediately. Changes to static parameters require a reboot without failover to the DB cluster associated with the parameter group before the change can take effect.   After you create a DB cluster parameter group, you should wait at least 5 minutes before creating your first DB cluster that uses that DB cluster parameter group as the default parameter group. This allows Amazon Neptune to fully complete the create action before the parameter group is used as the default for a new DB cluster. This is especially important for parameters that are critical when creating the default database for a DB cluster, such as the character set for the default database defined by the character_set_database parameter. You can use the Parameter Groups option of the Amazon Neptune console or the DescribeDBClusterParameters command to verify that your DB cluster parameter group has been created or modified. 
    public func modifyDBClusterParameterGroup(_ input: ModifyDBClusterParameterGroupMessage) -> EventLoopFuture<DBClusterParameterGroupNameMessage> {
        return client.send(operation: "ModifyDBClusterParameterGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds an attribute and values to, or removes an attribute and values from, a manual DB cluster snapshot. To share a manual DB cluster snapshot with other AWS accounts, specify restore as the AttributeName and use the ValuesToAdd parameter to add a list of IDs of the AWS accounts that are authorized to restore the manual DB cluster snapshot. Use the value all to make the manual DB cluster snapshot public, which means that it can be copied or restored by all AWS accounts. Do not add the all value for any manual DB cluster snapshots that contain private information that you don't want available to all AWS accounts. If a manual DB cluster snapshot is encrypted, it can be shared, but only by specifying a list of authorized AWS account IDs for the ValuesToAdd parameter. You can't use all as a value for that parameter in this case. To view which AWS accounts have access to copy or restore a manual DB cluster snapshot, or whether a manual DB cluster snapshot public or private, use the DescribeDBClusterSnapshotAttributes API action.
    public func modifyDBClusterSnapshotAttribute(_ input: ModifyDBClusterSnapshotAttributeMessage) -> EventLoopFuture<ModifyDBClusterSnapshotAttributeResult> {
        return client.send(operation: "ModifyDBClusterSnapshotAttribute", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies settings for a DB instance. You can change one or more database configuration parameters by specifying these parameters and the new values in the request. To learn what modifications you can make to your DB instance, call DescribeValidDBInstanceModifications before you call ModifyDBInstance.
    public func modifyDBInstance(_ input: ModifyDBInstanceMessage) -> EventLoopFuture<ModifyDBInstanceResult> {
        return client.send(operation: "ModifyDBInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies the parameters of a DB parameter group. To modify more than one parameter, submit a list of the following: ParameterName, ParameterValue, and ApplyMethod. A maximum of 20 parameters can be modified in a single request.  Changes to dynamic parameters are applied immediately. Changes to static parameters require a reboot without failover to the DB instance associated with the parameter group before the change can take effect.   After you modify a DB parameter group, you should wait at least 5 minutes before creating your first DB instance that uses that DB parameter group as the default parameter group. This allows Amazon Neptune to fully complete the modify action before the parameter group is used as the default for a new DB instance. This is especially important for parameters that are critical when creating the default database for a DB instance, such as the character set for the default database defined by the character_set_database parameter. You can use the Parameter Groups option of the Amazon Neptune console or the DescribeDBParameters command to verify that your DB parameter group has been created or modified. 
    public func modifyDBParameterGroup(_ input: ModifyDBParameterGroupMessage) -> EventLoopFuture<DBParameterGroupNameMessage> {
        return client.send(operation: "ModifyDBParameterGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies an existing DB subnet group. DB subnet groups must contain at least one subnet in at least two AZs in the AWS Region.
    public func modifyDBSubnetGroup(_ input: ModifyDBSubnetGroupMessage) -> EventLoopFuture<ModifyDBSubnetGroupResult> {
        return client.send(operation: "ModifyDBSubnetGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies an existing event notification subscription. Note that you can't modify the source identifiers using this call; to change source identifiers for a subscription, use the AddSourceIdentifierToSubscription and RemoveSourceIdentifierFromSubscription calls. You can see a list of the event categories for a given SourceType by using the DescribeEventCategories action.
    public func modifyEventSubscription(_ input: ModifyEventSubscriptionMessage) -> EventLoopFuture<ModifyEventSubscriptionResult> {
        return client.send(operation: "ModifyEventSubscription", path: "/", httpMethod: "POST", input: input)
    }

    ///  Not supported.
    public func promoteReadReplicaDBCluster(_ input: PromoteReadReplicaDBClusterMessage) -> EventLoopFuture<PromoteReadReplicaDBClusterResult> {
        return client.send(operation: "PromoteReadReplicaDBCluster", path: "/", httpMethod: "POST", input: input)
    }

    ///  You might need to reboot your DB instance, usually for maintenance reasons. For example, if you make certain modifications, or if you change the DB parameter group associated with the DB instance, you must reboot the instance for the changes to take effect. Rebooting a DB instance restarts the database engine service. Rebooting a DB instance results in a momentary outage, during which the DB instance status is set to rebooting.
    public func rebootDBInstance(_ input: RebootDBInstanceMessage) -> EventLoopFuture<RebootDBInstanceResult> {
        return client.send(operation: "RebootDBInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disassociates an Identity and Access Management (IAM) role from a DB cluster.
    @discardableResult public func removeRoleFromDBCluster(_ input: RemoveRoleFromDBClusterMessage) -> EventLoopFuture<Void> {
        return client.send(operation: "RemoveRoleFromDBCluster", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes a source identifier from an existing event notification subscription.
    public func removeSourceIdentifierFromSubscription(_ input: RemoveSourceIdentifierFromSubscriptionMessage) -> EventLoopFuture<RemoveSourceIdentifierFromSubscriptionResult> {
        return client.send(operation: "RemoveSourceIdentifierFromSubscription", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes metadata tags from an Amazon Neptune resource.
    @discardableResult public func removeTagsFromResource(_ input: RemoveTagsFromResourceMessage) -> EventLoopFuture<Void> {
        return client.send(operation: "RemoveTagsFromResource", path: "/", httpMethod: "POST", input: input)
    }

    ///   Modifies the parameters of a DB cluster parameter group to the default value. To reset specific parameters submit a list of the following: ParameterName and ApplyMethod. To reset the entire DB cluster parameter group, specify the DBClusterParameterGroupName and ResetAllParameters parameters.  When resetting the entire group, dynamic parameters are updated immediately and static parameters are set to pending-reboot to take effect on the next DB instance restart or RebootDBInstance request. You must call RebootDBInstance for every DB instance in your DB cluster that you want the updated static parameter to apply to.
    public func resetDBClusterParameterGroup(_ input: ResetDBClusterParameterGroupMessage) -> EventLoopFuture<DBClusterParameterGroupNameMessage> {
        return client.send(operation: "ResetDBClusterParameterGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies the parameters of a DB parameter group to the engine/system default value. To reset specific parameters, provide a list of the following: ParameterName and ApplyMethod. To reset the entire DB parameter group, specify the DBParameterGroup name and ResetAllParameters parameters. When resetting the entire group, dynamic parameters are updated immediately and static parameters are set to pending-reboot to take effect on the next DB instance restart or RebootDBInstance request.
    public func resetDBParameterGroup(_ input: ResetDBParameterGroupMessage) -> EventLoopFuture<DBParameterGroupNameMessage> {
        return client.send(operation: "ResetDBParameterGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new DB cluster from a DB snapshot or DB cluster snapshot. If a DB snapshot is specified, the target DB cluster is created from the source DB snapshot with a default configuration and default security group. If a DB cluster snapshot is specified, the target DB cluster is created from the source DB cluster restore point with the same configuration as the original source DB cluster, except that the new DB cluster is created with the default security group.
    public func restoreDBClusterFromSnapshot(_ input: RestoreDBClusterFromSnapshotMessage) -> EventLoopFuture<RestoreDBClusterFromSnapshotResult> {
        return client.send(operation: "RestoreDBClusterFromSnapshot", path: "/", httpMethod: "POST", input: input)
    }

    ///  Restores a DB cluster to an arbitrary point in time. Users can restore to any point in time before LatestRestorableTime for up to BackupRetentionPeriod days. The target DB cluster is created from the source DB cluster with the same configuration as the original DB cluster, except that the new DB cluster is created with the default DB security group.  This action only restores the DB cluster, not the DB instances for that DB cluster. You must invoke the CreateDBInstance action to create DB instances for the restored DB cluster, specifying the identifier of the restored DB cluster in DBClusterIdentifier. You can create DB instances only after the RestoreDBClusterToPointInTime action has completed and the DB cluster is available. 
    public func restoreDBClusterToPointInTime(_ input: RestoreDBClusterToPointInTimeMessage) -> EventLoopFuture<RestoreDBClusterToPointInTimeResult> {
        return client.send(operation: "RestoreDBClusterToPointInTime", path: "/", httpMethod: "POST", input: input)
    }
}
