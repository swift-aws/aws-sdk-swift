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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

#if compiler(>=5.5)

import SotoCore

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension Snowball {
    // MARK: Async API Calls

    /// Cancels a cluster job. You can only cancel a cluster job while it's in the AwaitingQuorum status. You'll have at least an hour after creating a cluster job to cancel it.
    public func cancelCluster(_ input: CancelClusterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelClusterResult {
        return try await self.client.execute(operation: "CancelCluster", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Cancels the specified job. You can only cancel a job before its JobState value changes to PreparingAppliance. Requesting the ListJobs or DescribeJob action returns a job's JobState as part of the response element data returned.
    public func cancelJob(_ input: CancelJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelJobResult {
        return try await self.client.execute(operation: "CancelJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an address for a Snow device to be shipped to. In most regions, addresses are validated at the time of creation. The address you provide must be located within the serviceable area of your region. If the address is invalid or unsupported, then an exception is thrown.
    public func createAddress(_ input: CreateAddressRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAddressResult {
        return try await self.client.execute(operation: "CreateAddress", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an empty cluster. Each cluster supports five nodes. You use the CreateJob action separately to create the jobs for each of these nodes. The cluster does not ship until these five node jobs have been created.
    public func createCluster(_ input: CreateClusterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClusterResult {
        return try await self.client.execute(operation: "CreateCluster", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a job to import or export data between Amazon S3 and your on-premises data center. Your AWS account must have the right trust policies and permissions in place to create a job for a Snow device. If you're creating a job for a node in a cluster, you only need to provide the clusterId value; the other job attributes are inherited from the cluster.   Only the Snowball; Edge device type is supported when ordering clustered jobs. The device capacity is optional. Availability of device types differ by AWS Region. For more information about region availability, see AWS Regional Services.    AWS Snow Family device types and their capacities.    Snow Family device type: SNC1_SSD    Capacity: T14   Description: Snowcone       Snow Family device type: SNC1_HDD    Capacity: T8   Description: Snowcone       Device type: EDGE_S    Capacity: T98   Description: Snowball Edge Storage Optimized for data transfer only       Device type: EDGE_CG    Capacity: T42   Description: Snowball Edge Compute Optimized with GPU      Device type: EDGE_C    Capacity: T42   Description: Snowball Edge Compute Optimized without GPU      Device type: EDGE    Capacity: T100   Description: Snowball Edge Storage Optimized with EC2 Compute      Device type: STANDARD    Capacity: T50   Description: Original Snowball device  This device is only available in the Ningxia, Beijing, and Singapore AWS Regions.        Device type: STANDARD    Capacity: T80   Description: Original Snowball device  This device is only available in the Ningxia, Beijing, and Singapore AWS Regions.
    public func createJob(_ input: CreateJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateJobResult {
        return try await self.client.execute(operation: "CreateJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a job with long term usage option for a device. The long term usage is a one year or three year long term pricing type for the device. You are billed upfront and AWS give discounts for long term pricing. For detailed information see XXXXXXXX
    public func createLongTermPricing(_ input: CreateLongTermPricingRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLongTermPricingResult {
        return try await self.client.execute(operation: "CreateLongTermPricing", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a shipping label that will be used to return the Snow device to AWS.
    public func createReturnShippingLabel(_ input: CreateReturnShippingLabelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateReturnShippingLabelResult {
        return try await self.client.execute(operation: "CreateReturnShippingLabel", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Takes an AddressId and returns specific details about that address in the form of an Address object.
    public func describeAddress(_ input: DescribeAddressRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAddressResult {
        return try await self.client.execute(operation: "DescribeAddress", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a specified number of ADDRESS objects. Calling this API in one of the US regions will return addresses from the list of all addresses associated with this account in all US regions.
    public func describeAddresses(_ input: DescribeAddressesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAddressesResult {
        return try await self.client.execute(operation: "DescribeAddresses", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a specific cluster including shipping information, cluster status, and other important metadata.
    public func describeCluster(_ input: DescribeClusterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterResult {
        return try await self.client.execute(operation: "DescribeCluster", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a specific job including shipping information, job status, and other important metadata.
    public func describeJob(_ input: DescribeJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeJobResult {
        return try await self.client.execute(operation: "DescribeJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Information on the shipping label of a Snow device that is being returned to AWS.
    public func describeReturnShippingLabel(_ input: DescribeReturnShippingLabelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReturnShippingLabelResult {
        return try await self.client.execute(operation: "DescribeReturnShippingLabel", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a link to an Amazon S3 presigned URL for the manifest file associated with the specified JobId value. You can access the manifest file for up to 60 minutes after this request has been made. To access the manifest file after 60 minutes have passed, you'll have to make another call to the GetJobManifest action. The manifest is an encrypted file that you can download after your job enters the WithCustomer status. The manifest is decrypted by using the UnlockCode code value, when you pass both values to the Snow device through the Snowball client when the client is started for the first time. As a best practice, we recommend that you don't save a copy of an UnlockCode value in the same location as the manifest file for that job. Saving these separately helps prevent unauthorized parties from gaining access to the Snow device associated with that job. The credentials of a given job, including its manifest file and unlock code, expire 360 days after the job is created.
    public func getJobManifest(_ input: GetJobManifestRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetJobManifestResult {
        return try await self.client.execute(operation: "GetJobManifest", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the UnlockCode code value for the specified job. A particular UnlockCode value can be accessed for up to 360 days after the associated job has been created. The UnlockCode value is a 29-character code with 25 alphanumeric characters and 4 hyphens. This code is used to decrypt the manifest file when it is passed along with the manifest to the Snow device through the Snowball client when the client is started for the first time. As a best practice, we recommend that you don't save a copy of the UnlockCode in the same location as the manifest file for that job. Saving these separately helps prevent unauthorized parties from gaining access to the Snow device associated with that job.
    public func getJobUnlockCode(_ input: GetJobUnlockCodeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetJobUnlockCodeResult {
        return try await self.client.execute(operation: "GetJobUnlockCode", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the Snow Family service limit for your account, and also the number of Snow devices your account has in use. The default service limit for the number of Snow devices that you can have at one time is 1. If you want to increase your service limit, contact AWS Support.
    public func getSnowballUsage(_ input: GetSnowballUsageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSnowballUsageResult {
        return try await self.client.execute(operation: "GetSnowballUsage", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an Amazon S3 presigned URL for an update file associated with a specified JobId.
    public func getSoftwareUpdates(_ input: GetSoftwareUpdatesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSoftwareUpdatesResult {
        return try await self.client.execute(operation: "GetSoftwareUpdates", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an array of JobListEntry objects of the specified length. Each JobListEntry object is for a job in the specified cluster and contains a job's state, a job's ID, and other information.
    public func listClusterJobs(_ input: ListClusterJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListClusterJobsResult {
        return try await self.client.execute(operation: "ListClusterJobs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an array of ClusterListEntry objects of the specified length. Each ClusterListEntry object contains a cluster's state, a cluster's ID, and other important status information.
    public func listClusters(_ input: ListClustersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListClustersResult {
        return try await self.client.execute(operation: "ListClusters", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This action returns a list of the different Amazon EC2 Amazon Machine Images (AMIs) that are owned by your AWS account that would be supported for use on a Snow device. Currently, supported AMIs are based on the CentOS 7 (x86_64) - with Updates HVM, Ubuntu Server 14.04 LTS (HVM), and Ubuntu 16.04 LTS - Xenial (HVM) images, available on the AWS Marketplace.
    public func listCompatibleImages(_ input: ListCompatibleImagesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListCompatibleImagesResult {
        return try await self.client.execute(operation: "ListCompatibleImages", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an array of JobListEntry objects of the specified length. Each JobListEntry object contains a job's state, a job's ID, and a value that indicates whether the job is a job part, in the case of export jobs. Calling this API action in one of the US regions will return jobs from the list of all jobs associated with this account in all US regions.
    public func listJobs(_ input: ListJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListJobsResult {
        return try await self.client.execute(operation: "ListJobs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all long term pricing types.
    public func listLongTermPricing(_ input: ListLongTermPricingRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListLongTermPricingResult {
        return try await self.client.execute(operation: "ListLongTermPricing", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// While a cluster's ClusterState value is in the AwaitingQuorum state, you can update some of the information associated with a cluster. Once the cluster changes to a different job state, usually 60 minutes after the cluster being created, this action is no longer available.
    public func updateCluster(_ input: UpdateClusterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateClusterResult {
        return try await self.client.execute(operation: "UpdateCluster", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// While a job's JobState value is New, you can update some of the information associated with a job. Once the job changes to a different job state, usually within 60 minutes of the job being created, this action is no longer available.
    public func updateJob(_ input: UpdateJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateJobResult {
        return try await self.client.execute(operation: "UpdateJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the state when a the shipment states changes to a different state.
    public func updateJobShipmentState(_ input: UpdateJobShipmentStateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateJobShipmentStateResult {
        return try await self.client.execute(operation: "UpdateJobShipmentState", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the long term pricing type.
    public func updateLongTermPricing(_ input: UpdateLongTermPricingRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateLongTermPricingResult {
        return try await self.client.execute(operation: "UpdateLongTermPricing", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5)
