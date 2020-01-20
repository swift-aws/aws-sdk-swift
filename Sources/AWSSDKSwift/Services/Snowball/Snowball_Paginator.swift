// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.


extension Snowball {

    ///  Returns a specified number of ADDRESS objects. Calling this API in one of the US regions will return addresses from the list of all addresses associated with this account in all US regions.
    public func describeAddressesPaginator(_ input: DescribeAddressesRequest) -> Future<[Address]> {
        return client.paginate(input: input, command: describeAddresses, resultKey: "addresses", tokenKey: "nextToken")
    }
    
    ///  Returns an array of JobListEntry objects of the specified length. Each JobListEntry object contains a job's state, a job's ID, and a value that indicates whether the job is a job part, in the case of export jobs. Calling this API action in one of the US regions will return jobs from the list of all jobs associated with this account in all US regions.
    public func listJobsPaginator(_ input: ListJobsRequest) -> Future<[JobListEntry]> {
        return client.paginate(input: input, command: listJobs, resultKey: "jobListEntries", tokenKey: "nextToken")
    }
    
}

extension Snowball.DescribeAddressesRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Snowball.ListJobsRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

