import Foundation
import SwiftyJSON
import Dispatch
import Stencil
import PathKit


let apis = try loadAPIJSONList()
let docs = try loadDocJSONList()
let endpoint = try loadEndpointJSON()

let group = DispatchGroup()

var errorShapeMap: [String: String] = [:]

let fsLoader = FileSystemLoader(paths: [Path("\(rootPath())/CodeGenerator/Templates/")])
let environment = Environment(loader: fsLoader)

for index in 0..<apis.count {
    let api = apis[index]
    let doc = docs[index]

    group.enter()
    DispatchQueue.global().async {
        do {
            let service = try AWSService(fromAPIJSON: api, docJSON: doc, endpointJSON: endpoint)

            log("Generating \(service.serviceName) code ........")

            let basePath = "\(rootPath())/Sources/AWSSDKSwift/Services/\(service.serviceName)/"
            _ = mkdirp(basePath)

           /* let apiContext = service.generateServiceContext()
            try environment.renderTemplate(name: "api.stencil", context: apiContext).write(
                    toFile: "\(basePath)/\(service.serviceName)_API.swift",
                    atomically: true,
                    encoding: .utf8
                )

            let shapesContext = service.generateShapesContext()
            try environment.renderTemplate(name: "shapes.stencil", context: shapesContext).write(
                toFile: "\(basePath)/\(service.serviceName)_Shapes.swift",
                atomically: true,
                encoding: .utf8
            )
            
            let errorContext = service.generateErrorContext()
            try environment.renderTemplate(name: "error.stencil", context: errorContext).write(
                toFile: "\(basePath)/\(service.serviceName)_Error.swift",
                atomically: true,
                encoding: .utf8
            )*/

            try service.generateServiceCode()
                .write(
                    toFile: "\(basePath)/\(service.serviceName)_API.swift",
                    atomically: true,
                    encoding: .utf8
            )
            
            try service.generateShapesCode()
                .write(
                    toFile: "\(basePath)/\(service.serviceName)_Shapes.swift",
                    atomically: true,
                    encoding: .utf8
            )
            
            if !service.errorShapeNames.isEmpty {
                errorShapeMap[service.endpointPrefix] = service.serviceErrorName
                try service.generateErrorCode()
                    .write(
                        toFile: "\(basePath)/\(service.serviceName)_Error.swift",
                        atomically: true,
                        encoding: .utf8
                )
            }

            log("Succesfully Generated \(service.serviceName) codes!")
            group.leave()
        } catch {
            DispatchQueue.main.sync {
                print(error)
                exit(1)
            }
        }
    }
}

group.wait()

print("Done.")