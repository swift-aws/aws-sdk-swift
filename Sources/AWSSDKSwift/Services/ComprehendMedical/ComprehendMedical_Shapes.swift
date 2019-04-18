// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension ComprehendMedical {

    public struct DetectEntitiesResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Entities", required: true, type: .list), 
            AWSShapeMember(label: "UnmappedAttributes", required: false, type: .list), 
            AWSShapeMember(label: "PaginationToken", required: false, type: .string)
        ]
        ///  The collection of medical entities extracted from the input text and their associated information. For each entity, the response provides the entity text, the entity category, where the entity text begins and ends, and the level of confidence that Comprehend Medical has in the detection and analysis. Attributes and traits of the entity are also returned.
        public let entities: [Entity]
        ///  Attributes extracted from the input text that we were unable to relate to an entity.
        public let unmappedAttributes: [UnmappedAttribute]?
        ///  If the result of the previous request to DetectEntities was truncated, include the Paginationtoken to fetch the next page of entities.
        public let paginationToken: String?

        public init(entities: [Entity], paginationToken: String? = nil, unmappedAttributes: [UnmappedAttribute]? = nil) {
            self.entities = entities
            self.unmappedAttributes = unmappedAttributes
            self.paginationToken = paginationToken
        }

        private enum CodingKeys: String, CodingKey {
            case entities = "Entities"
            case unmappedAttributes = "UnmappedAttributes"
            case paginationToken = "PaginationToken"
        }
    }

    public struct DetectPHIRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Text", required: true, type: .string)
        ]
        ///  A UTF-8 text string containing the clinical content being examined for PHI entities. Each string must contain fewer than 20,000 bytes of characters. 
        public let text: String

        public init(text: String) {
            self.text = text
        }

        private enum CodingKeys: String, CodingKey {
            case text = "Text"
        }
    }

    public enum AttributeName: String, CustomStringConvertible, Codable {
        case sign = "SIGN"
        case symptom = "SYMPTOM"
        case diagnosis = "DIAGNOSIS"
        case negation = "NEGATION"
        public var description: String { return self.rawValue }
    }

    public enum EntitySubType: String, CustomStringConvertible, Codable {
        case name = "NAME"
        case dosage = "DOSAGE"
        case routeOrMode = "ROUTE_OR_MODE"
        case form = "FORM"
        case frequency = "FREQUENCY"
        case duration = "DURATION"
        case genericName = "GENERIC_NAME"
        case brandName = "BRAND_NAME"
        case strength = "STRENGTH"
        case rate = "RATE"
        case acuity = "ACUITY"
        case testName = "TEST_NAME"
        case testValue = "TEST_VALUE"
        case testUnits = "TEST_UNITS"
        case procedureName = "PROCEDURE_NAME"
        case treatmentName = "TREATMENT_NAME"
        case date = "DATE"
        case age = "AGE"
        case contactPoint = "CONTACT_POINT"
        case email = "EMAIL"
        case identifier = "IDENTIFIER"
        case url = "URL"
        case address = "ADDRESS"
        case profession = "PROFESSION"
        case systemOrganSite = "SYSTEM_ORGAN_SITE"
        case direction = "DIRECTION"
        case quality = "QUALITY"
        case quantity = "QUANTITY"
        public var description: String { return self.rawValue }
    }

    public struct Trait: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Score", required: false, type: .float), 
            AWSShapeMember(label: "Name", required: false, type: .enum)
        ]
        ///  The level of confidence that Comprehend Medical has in the accuracy of this trait.
        public let score: Float?
        ///  Provides a name or contextual description about the trait. 
        public let name: AttributeName?

        public init(name: AttributeName? = nil, score: Float? = nil) {
            self.score = score
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case score = "Score"
            case name = "Name"
        }
    }

    public struct DetectPHIResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Entities", required: true, type: .list), 
            AWSShapeMember(label: "PaginationToken", required: false, type: .string)
        ]
        ///  The collection of PHI entities extracted from the input text and their associated information. For each entity, the response provides the entity text, the entity category, where the entity text begins and ends, and the level of confidence that Comprehend Medical has in its detection. 
        public let entities: [Entity]
        ///  If the result of the previous request to DetectPHI was truncated, include the Paginationtoken to fetch the next page of PHI entities. 
        public let paginationToken: String?

        public init(entities: [Entity], paginationToken: String? = nil) {
            self.entities = entities
            self.paginationToken = paginationToken
        }

        private enum CodingKeys: String, CodingKey {
            case entities = "Entities"
            case paginationToken = "PaginationToken"
        }
    }

    public struct Attribute: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Text", required: false, type: .string), 
            AWSShapeMember(label: "EndOffset", required: false, type: .integer), 
            AWSShapeMember(label: "Id", required: false, type: .integer), 
            AWSShapeMember(label: "RelationshipScore", required: false, type: .float), 
            AWSShapeMember(label: "BeginOffset", required: false, type: .integer), 
            AWSShapeMember(label: "Score", required: false, type: .float), 
            AWSShapeMember(label: "Traits", required: false, type: .list), 
            AWSShapeMember(label: "Type", required: false, type: .enum)
        ]
        ///  The segment of input text extracted as this attribute.
        public let text: String?
        ///  The 0-based character offset in the input text that shows where the attribute ends. The offset returns the UTF-8 code point in the string. 
        public let endOffset: Int32?
        ///  The numeric identifier for this attribute. This is a monotonically increasing id unique within this response rather than a global unique identifier. 
        public let id: Int32?
        ///  The level of confidence that Comprehend Medical has that this attribute is correctly related to this entity. 
        public let relationshipScore: Float?
        ///  The 0-based character offset in the input text that shows where the attribute begins. The offset returns the UTF-8 code point in the string. 
        public let beginOffset: Int32?
        ///  The level of confidence that Comprehend Medical has that the segment of text is correctly recognized as an attribute. 
        public let score: Float?
        ///  Contextual information for this attribute. 
        public let traits: [Trait]?
        ///  The type of attribute. 
        public let `type`: EntitySubType?

        public init(beginOffset: Int32? = nil, endOffset: Int32? = nil, id: Int32? = nil, relationshipScore: Float? = nil, score: Float? = nil, text: String? = nil, traits: [Trait]? = nil, type: EntitySubType? = nil) {
            self.text = text
            self.endOffset = endOffset
            self.id = id
            self.relationshipScore = relationshipScore
            self.beginOffset = beginOffset
            self.score = score
            self.traits = traits
            self.`type` = `type`
        }

        private enum CodingKeys: String, CodingKey {
            case text = "Text"
            case endOffset = "EndOffset"
            case id = "Id"
            case relationshipScore = "RelationshipScore"
            case beginOffset = "BeginOffset"
            case score = "Score"
            case traits = "Traits"
            case `type` = "Type"
        }
    }

    public struct UnmappedAttribute: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Type", required: false, type: .enum), 
            AWSShapeMember(label: "Attribute", required: false, type: .structure)
        ]
        ///  The type of the attribute, could be one of the following values: "MEDICATION", "MEDICAL_CONDITION", "ANATOMY", "TEST_AND_TREATMENT_PROCEDURE" or "PERSONAL_HEALTH_INFORMATION". 
        public let `type`: EntityType?
        ///  The specific attribute that has been extracted but not mapped to an entity. 
        public let attribute: Attribute?

        public init(attribute: Attribute? = nil, type: EntityType? = nil) {
            self.`type` = `type`
            self.attribute = attribute
        }

        private enum CodingKeys: String, CodingKey {
            case `type` = "Type"
            case attribute = "Attribute"
        }
    }

    public enum EntityType: String, CustomStringConvertible, Codable {
        case medication = "MEDICATION"
        case medicalCondition = "MEDICAL_CONDITION"
        case protectedHealthInformation = "PROTECTED_HEALTH_INFORMATION"
        case testTreatmentProcedure = "TEST_TREATMENT_PROCEDURE"
        case anatomy = "ANATOMY"
        public var description: String { return self.rawValue }
    }

    public struct Entity: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "EndOffset", required: false, type: .integer), 
            AWSShapeMember(label: "Attributes", required: false, type: .list), 
            AWSShapeMember(label: "Type", required: false, type: .enum), 
            AWSShapeMember(label: "BeginOffset", required: false, type: .integer), 
            AWSShapeMember(label: "Traits", required: false, type: .list), 
            AWSShapeMember(label: "Score", required: false, type: .float), 
            AWSShapeMember(label: "Text", required: false, type: .string), 
            AWSShapeMember(label: "Category", required: false, type: .enum), 
            AWSShapeMember(label: "Id", required: false, type: .integer)
        ]
        ///  The 0-based character offset in the input text that shows where the entity ends. The offset returns the UTF-8 code point in the string. 
        public let endOffset: Int32?
        ///  The extracted attributes that relate to this entity.
        public let attributes: [Attribute]?
        ///  Describes the specific type of entity with category of entities. 
        public let `type`: EntitySubType?
        ///  The 0-based character offset in the input text that shows where the entity begins. The offset returns the UTF-8 code point in the string. 
        public let beginOffset: Int32?
        /// Contextual information for the entity
        public let traits: [Trait]?
        /// The level of confidence that Comprehend Medical has in the accuracy of the detection.
        public let score: Float?
        ///  The segment of input text extracted as this entity.
        public let text: String?
        ///  The category of the entity.
        public let category: EntityType?
        ///  The numeric identifier for the entity. This is a monotonically increasing id unique within this response rather than a global unique identifier. 
        public let id: Int32?

        public init(attributes: [Attribute]? = nil, beginOffset: Int32? = nil, category: EntityType? = nil, endOffset: Int32? = nil, id: Int32? = nil, score: Float? = nil, text: String? = nil, traits: [Trait]? = nil, type: EntitySubType? = nil) {
            self.endOffset = endOffset
            self.attributes = attributes
            self.`type` = `type`
            self.beginOffset = beginOffset
            self.traits = traits
            self.score = score
            self.text = text
            self.category = category
            self.id = id
        }

        private enum CodingKeys: String, CodingKey {
            case endOffset = "EndOffset"
            case attributes = "Attributes"
            case `type` = "Type"
            case beginOffset = "BeginOffset"
            case traits = "Traits"
            case score = "Score"
            case text = "Text"
            case category = "Category"
            case id = "Id"
        }
    }

    public struct DetectEntitiesRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Text", required: true, type: .string)
        ]
        ///  A UTF-8 text string containing the clinical content being examined for entities. Each string must contain fewer than 20,000 bytes of characters.
        public let text: String

        public init(text: String) {
            self.text = text
        }

        private enum CodingKeys: String, CodingKey {
            case text = "Text"
        }
    }

}