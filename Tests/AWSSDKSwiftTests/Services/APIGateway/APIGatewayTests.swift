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

import Foundation
import XCTest

@testable import AWSAPIGateway

enum APIGatewayTestsError: Error {
    case noRestApi
}

//testing restjson service

class APIGatewayTests: XCTestCase {

    let apiGateway = APIGateway(
        region: .useast1,
        endpoint: TestEnvironment.getEndPoint(environment: "APIGATEWAY_ENDPOINT", default: "http://localhost:4567"),
        middlewares: TestEnvironment.middlewares,
        httpClientProvider: .createNew
    )

    func createRestApi(name: String, on eventLoop: EventLoop) -> EventLoopFuture<APIGateway.RestApi> {
        let request = APIGateway.GetRestApisRequest()
        return self.apiGateway.getRestApis(request)
            .flatMap { response in
                if let restApi = response.items?.first(where: { $0.name == name }) {
                    return eventLoop.makeSucceededFuture(restApi)
                } else {
                    let request = APIGateway.CreateRestApiRequest(
                        description: "\(name) API",
                        endpointConfiguration: APIGateway.EndpointConfiguration(types: [.regional]),
                        name: name
                    )
                    return self.apiGateway.createRestApi(request)
                }
        }
    }

    func deleteRestApi(id: String) -> EventLoopFuture<Void> {
        let request = APIGateway.DeleteRestApiRequest(restApiId: id)
        return apiGateway.deleteRestApi(request).map {}
    }

    /// create Rest api with supplied name and run supplied closure with rest api id
    func testRestApi(name: String, body: @escaping (String) -> EventLoopFuture<Void>) -> EventLoopFuture<Void> {
        let eventLoop = self.apiGateway.client.eventLoopGroup.next()
        var apiId : String? = nil
        
        return createRestApi(name: name, on: eventLoop)
            .flatMapThrowing { response in
                apiId = try XCTUnwrap(response.id)
                return apiId!
        }
        .flatMap(body)
        .flatAlways { (_) -> EventLoopFuture<Void> in
            if let apiId = apiId {
                return self.deleteRestApi(id: apiId).map {}
            } else {
                return eventLoop.makeSucceededFuture(())
            }
        }
    }
    
    //MARK: TESTS

    func testGetRestApis() {
        let name = TestEnvironment.getName(#function)
        let response = testRestApi(name: name) { id in
            let request = APIGateway.GetRestApisRequest()
            return self.apiGateway.getRestApis(request)
                .map { response in
                    let restApi = response.items?.first(where: { $0.id == id })
                    XCTAssertNotNil(restApi)
                    XCTAssertEqual(restApi?.name, name)
            }
        }
        XCTAssertNoThrow(try response.wait())
    }

    func testGetRestApi() {
        let name = TestEnvironment.getName(#function)
        let response = testRestApi(name: name) { id in
            let request = APIGateway.GetRestApiRequest(restApiId: id)
            return self.apiGateway.getRestApi(request)
                .map { response in
                    XCTAssertEqual(response.name, name)
            }
        }
        XCTAssertNoThrow(try response.wait())
    }

    func testCreateGetResource() {
        let name = TestEnvironment.getName(#function)
        let response = testRestApi(name: name) { id in
            // get parent resource
            let request = APIGateway.GetResourcesRequest(restApiId: id)
            return self.apiGateway.getResources(request)
                .flatMapThrowing { response throws -> String in
                    let items = try XCTUnwrap(response.items)
                    XCTAssertEqual(items.count, 1)
                    let parentId = try XCTUnwrap(items[0].id)
                    return parentId
            }
            // create new resource
            .flatMap { parentId -> EventLoopFuture<APIGateway.Resource> in
                let request = APIGateway.CreateResourceRequest(parentId: parentId, pathPart: "test", restApiId: id)
                return self.apiGateway.createResource(request)
            }
            // extract resource id
            .flatMapThrowing { (response) throws -> String in
                let resourceId = try XCTUnwrap(response.id)
                return resourceId
            }
            // get resource
            .flatMap { resourceId -> EventLoopFuture<APIGateway.Resource> in
                let request = APIGateway.GetResourceRequest(resourceId: resourceId, restApiId: id)
                return self.apiGateway.getResource(request)
            }
            // verify resource is correct
            .map { response in
                XCTAssertEqual(response.pathPart, "test")
            }
        }
        XCTAssertNoThrow(try response.wait())
    }

    static var allTests: [(String, (APIGatewayTests) -> () throws -> Void)] {
        return [
            ("testGetRestApis", testGetRestApis),
            ("testGetRestApi", testGetRestApi),
            ("testCreateGetResource", testCreateGetResource),
        ]
    }
}
