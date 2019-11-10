// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
AWS OpsWorks CM AWS OpsWorks for configuration management (CM) is a service that runs and manages configuration management servers. You can use AWS OpsWorks CM to create and manage AWS OpsWorks for Chef Automate and AWS OpsWorks for Puppet Enterprise servers, and add or remove nodes for the servers to manage.  Glossary of terms     Server: A configuration management server that can be highly-available. The configuration management server runs on an Amazon Elastic Compute Cloud (EC2) instance, and may use various other AWS services, such as Amazon Relational Database Service (RDS) and Elastic Load Balancing. A server is a generic abstraction over the configuration manager that you want to use, much like Amazon RDS. In AWS OpsWorks CM, you do not start or stop servers. After you create servers, they continue to run until they are deleted.    Engine: The engine is the specific configuration manager that you want to use. Valid values in this release include ChefAutomate and Puppet.    Backup: This is an application-level backup of the data that the configuration manager stores. AWS OpsWorks CM creates an S3 bucket for backups when you launch the first server. A backup maintains a snapshot of a server's configuration-related attributes at the time the backup starts.    Events: Events are always related to a server. Events are written during server creation, when health checks run, when backups are created, when system maintenance is performed, etc. When you delete a server, the server's events are also deleted.    Account attributes: Every account has attributes that are assigned in the AWS OpsWorks CM database. These attributes store information about configuration limits (servers, backups, etc.) and your customer account.     Endpoints  AWS OpsWorks CM supports the following endpoints, all HTTPS. You must connect to one of the following endpoints. Your servers can only be accessed or managed within the endpoint in which they are created.   opsworks-cm.us-east-1.amazonaws.com   opsworks-cm.us-east-2.amazonaws.com   opsworks-cm.us-west-1.amazonaws.com   opsworks-cm.us-west-2.amazonaws.com   opsworks-cm.ap-northeast-1.amazonaws.com   opsworks-cm.ap-southeast-1.amazonaws.com   opsworks-cm.ap-southeast-2.amazonaws.com   opsworks-cm.eu-central-1.amazonaws.com   opsworks-cm.eu-west-1.amazonaws.com    Throttling limits  All API operations allow for five requests per second with a burst of 10 requests per second.
*/
public struct OpsWorksCM {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "OpsWorksCM_V2016_11_01",
            service: "opsworks-cm",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2016-11-01",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [OpsWorksCMErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }

    ///   Associates a new node with the server. For more information about how to disassociate a node, see DisassociateNode.  On a Chef server: This command is an alternative to knife bootstrap.  Example (Chef): aws opsworks-cm associate-node --server-name MyServer --node-name MyManagedNode --engine-attributes "Name=CHEF_ORGANIZATION,Value=default" "Name=CHEF_NODE_PUBLIC_KEY,Value=public-key-pem"   On a Puppet server, this command is an alternative to the puppet cert sign command that signs a Puppet node CSR.   Example (Chef): aws opsworks-cm associate-node --server-name MyServer --node-name MyManagedNode --engine-attributes "Name=PUPPET_NODE_CSR,Value=csr-pem"   A node can can only be associated with servers that are in a HEALTHY state. Otherwise, an InvalidStateException is thrown. A ResourceNotFoundException is thrown when the server does not exist. A ValidationException is raised when parameters of the request are not valid. The AssociateNode API call can be integrated into Auto Scaling configurations, AWS Cloudformation templates, or the user data of a server's instance. 
    public func associateNode(_ input: AssociateNodeRequest) -> Future<AssociateNodeResponse> {
        return client.send(operation: "AssociateNode", path: "/", httpMethod: "POST", input: input)
    }

    ///   Creates an application-level backup of a server. While the server is in the BACKING_UP state, the server cannot be changed, and no additional backup can be created.   Backups can be created for servers in RUNNING, HEALTHY, and UNHEALTHY states. By default, you can create a maximum of 50 manual backups.   This operation is asynchronous.   A LimitExceededException is thrown when the maximum number of manual backups is reached. An InvalidStateException is thrown when the server is not in any of the following states: RUNNING, HEALTHY, or UNHEALTHY. A ResourceNotFoundException is thrown when the server is not found. A ValidationException is thrown when parameters of the request are not valid. 
    public func createBackup(_ input: CreateBackupRequest) -> Future<CreateBackupResponse> {
        return client.send(operation: "CreateBackup", path: "/", httpMethod: "POST", input: input)
    }

    ///   Creates and immedately starts a new server. The server is ready to use when it is in the HEALTHY state. By default, you can create a maximum of 10 servers.   This operation is asynchronous.   A LimitExceededException is thrown when you have created the maximum number of servers (10). A ResourceAlreadyExistsException is thrown when a server with the same name already exists in the account. A ResourceNotFoundException is thrown when you specify a backup ID that is not valid or is for a backup that does not exist. A ValidationException is thrown when parameters of the request are not valid.   If you do not specify a security group by adding the SecurityGroupIds parameter, AWS OpsWorks creates a new security group.   Chef Automate: The default security group opens the Chef server to the world on TCP port 443. If a KeyName is present, AWS OpsWorks enables SSH access. SSH is also open to the world on TCP port 22.   Puppet Enterprise: The default security group opens TCP ports 22, 443, 4433, 8140, 8142, 8143, and 8170. If a KeyName is present, AWS OpsWorks enables SSH access. SSH is also open to the world on TCP port 22.  By default, your server is accessible from any IP address. We recommend that you update your security group rules to allow access from known IP addresses and address ranges only. To edit security group rules, open Security Groups in the navigation pane of the EC2 management console. 
    public func createServer(_ input: CreateServerRequest) -> Future<CreateServerResponse> {
        return client.send(operation: "CreateServer", path: "/", httpMethod: "POST", input: input)
    }

    ///   Deletes a backup. You can delete both manual and automated backups. This operation is asynchronous.   An InvalidStateException is thrown when a backup deletion is already in progress. A ResourceNotFoundException is thrown when the backup does not exist. A ValidationException is thrown when parameters of the request are not valid. 
    public func deleteBackup(_ input: DeleteBackupRequest) -> Future<DeleteBackupResponse> {
        return client.send(operation: "DeleteBackup", path: "/", httpMethod: "POST", input: input)
    }

    ///   Deletes the server and the underlying AWS CloudFormation stacks (including the server's EC2 instance). When you run this command, the server state is updated to DELETING. After the server is deleted, it is no longer returned by DescribeServer requests. If the AWS CloudFormation stack cannot be deleted, the server cannot be deleted.   This operation is asynchronous.   An InvalidStateException is thrown when a server deletion is already in progress. A ResourceNotFoundException is thrown when the server does not exist. A ValidationException is raised when parameters of the request are not valid.   
    public func deleteServer(_ input: DeleteServerRequest) -> Future<DeleteServerResponse> {
        return client.send(operation: "DeleteServer", path: "/", httpMethod: "POST", input: input)
    }

    ///   Describes your OpsWorks-CM account attributes.   This operation is synchronous. 
    public func describeAccountAttributes(_ input: DescribeAccountAttributesRequest) -> Future<DescribeAccountAttributesResponse> {
        return client.send(operation: "DescribeAccountAttributes", path: "/", httpMethod: "POST", input: input)
    }

    ///   Describes backups. The results are ordered by time, with newest backups first. If you do not specify a BackupId or ServerName, the command returns all backups.   This operation is synchronous.   A ResourceNotFoundException is thrown when the backup does not exist. A ValidationException is raised when parameters of the request are not valid. 
    public func describeBackups(_ input: DescribeBackupsRequest) -> Future<DescribeBackupsResponse> {
        return client.send(operation: "DescribeBackups", path: "/", httpMethod: "POST", input: input)
    }

    ///   Describes events for a specified server. Results are ordered by time, with newest events first.   This operation is synchronous.   A ResourceNotFoundException is thrown when the server does not exist. A ValidationException is raised when parameters of the request are not valid. 
    public func describeEvents(_ input: DescribeEventsRequest) -> Future<DescribeEventsResponse> {
        return client.send(operation: "DescribeEvents", path: "/", httpMethod: "POST", input: input)
    }

    ///   Returns the current status of an existing association or disassociation request.   A ResourceNotFoundException is thrown when no recent association or disassociation request with the specified token is found, or when the server does not exist. A ValidationException is raised when parameters of the request are not valid. 
    public func describeNodeAssociationStatus(_ input: DescribeNodeAssociationStatusRequest) -> Future<DescribeNodeAssociationStatusResponse> {
        return client.send(operation: "DescribeNodeAssociationStatus", path: "/", httpMethod: "POST", input: input)
    }

    ///   Lists all configuration management servers that are identified with your account. Only the stored results from Amazon DynamoDB are returned. AWS OpsWorks CM does not query other services.   This operation is synchronous.   A ResourceNotFoundException is thrown when the server does not exist. A ValidationException is raised when parameters of the request are not valid. 
    public func describeServers(_ input: DescribeServersRequest) -> Future<DescribeServersResponse> {
        return client.send(operation: "DescribeServers", path: "/", httpMethod: "POST", input: input)
    }

    ///   Disassociates a node from an AWS OpsWorks CM server, and removes the node from the server's managed nodes. After a node is disassociated, the node key pair is no longer valid for accessing the configuration manager's API. For more information about how to associate a node, see AssociateNode.  A node can can only be disassociated from a server that is in a HEALTHY state. Otherwise, an InvalidStateException is thrown. A ResourceNotFoundException is thrown when the server does not exist. A ValidationException is raised when parameters of the request are not valid. 
    public func disassociateNode(_ input: DisassociateNodeRequest) -> Future<DisassociateNodeResponse> {
        return client.send(operation: "DisassociateNode", path: "/", httpMethod: "POST", input: input)
    }

    ///   Exports a specified server engine attribute as a base64-encoded string. For example, you can export user data that you can use in EC2 to associate nodes with a server.   This operation is synchronous.   A ValidationException is raised when parameters of the request are not valid. A ResourceNotFoundException is thrown when the server does not exist. An InvalidStateException is thrown when the server is in any of the following states: CREATING, TERMINATED, FAILED or DELETING. 
    public func exportServerEngineAttribute(_ input: ExportServerEngineAttributeRequest) -> Future<ExportServerEngineAttributeResponse> {
        return client.send(operation: "ExportServerEngineAttribute", path: "/", httpMethod: "POST", input: input)
    }

    ///   Restores a backup to a server that is in a CONNECTION_LOST, HEALTHY, RUNNING, UNHEALTHY, or TERMINATED state. When you run RestoreServer, the server's EC2 instance is deleted, and a new EC2 instance is configured. RestoreServer maintains the existing server endpoint, so configuration management of the server's client devices (nodes) should continue to work.   This operation is asynchronous.   An InvalidStateException is thrown when the server is not in a valid state. A ResourceNotFoundException is thrown when the server does not exist. A ValidationException is raised when parameters of the request are not valid. 
    public func restoreServer(_ input: RestoreServerRequest) -> Future<RestoreServerResponse> {
        return client.send(operation: "RestoreServer", path: "/", httpMethod: "POST", input: input)
    }

    ///   Manually starts server maintenance. This command can be useful if an earlier maintenance attempt failed, and the underlying cause of maintenance failure has been resolved. The server is in an UNDER_MAINTENANCE state while maintenance is in progress.   Maintenance can only be started on servers in HEALTHY and UNHEALTHY states. Otherwise, an InvalidStateException is thrown. A ResourceNotFoundException is thrown when the server does not exist. A ValidationException is raised when parameters of the request are not valid. 
    public func startMaintenance(_ input: StartMaintenanceRequest) -> Future<StartMaintenanceResponse> {
        return client.send(operation: "StartMaintenance", path: "/", httpMethod: "POST", input: input)
    }

    ///   Updates settings for a server.   This operation is synchronous. 
    public func updateServer(_ input: UpdateServerRequest) -> Future<UpdateServerResponse> {
        return client.send(operation: "UpdateServer", path: "/", httpMethod: "POST", input: input)
    }

    ///   Updates engine-specific attributes on a specified server. The server enters the MODIFYING state when this operation is in progress. Only one update can occur at a time. You can use this command to reset a Chef server's public key (CHEF_PIVOTAL_KEY) or a Puppet server's admin password (PUPPET_ADMIN_PASSWORD).   This operation is asynchronous.   This operation can only be called for servers in HEALTHY or UNHEALTHY states. Otherwise, an InvalidStateException is raised. A ResourceNotFoundException is thrown when the server does not exist. A ValidationException is raised when parameters of the request are not valid. 
    public func updateServerEngineAttributes(_ input: UpdateServerEngineAttributesRequest) -> Future<UpdateServerEngineAttributesResponse> {
        return client.send(operation: "UpdateServerEngineAttributes", path: "/", httpMethod: "POST", input: input)
    }
}
