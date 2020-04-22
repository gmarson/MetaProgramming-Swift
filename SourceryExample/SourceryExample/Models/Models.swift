//
//  Models.swift
//  SourceryExample
//
//  Created by Gabriel Marson on 17/04/20.
//  Copyright © 2020 Gabriel Marson. All rights reserved.
//

import Foundation

public struct ParentClass: AutoEquatable, Decodable {
    let first: String?
    var second: String?
    let third: Int?
    
    init(first: String? = nil,
         second: String? = nil,
         third: Int? = nil
    ) {
        self.first = first
        self.second = second
        self.third = third
    }
    
    enum CodingKeys: String, CodingKey {
        // sourcery:inline:auto:ParentClass.CodingKeys.AutoCodable
        case first
        case second
        case third
        // sourcery:end
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.first = try container.decode(String.self, forKey: .first)
        self.second = try container.decodeIfPresent(String.self, forKey: .second)
        self.third = try container.decode(Int.self, forKey: .third)
    }
    
}

public struct ChildClass1: ParentComponent, AutoEquatable, AutoDecodable {
    let attributeOne: String
    let attributeTwo: Float?
    public var parentProperties: ParentClass
    
    init(attributeOne: String, attributeTwo: Float? = nil, parentProperties: ParentClass = ParentClass()) {
        self.attributeOne = attributeOne
        self.attributeTwo = attributeTwo
        self.parentProperties = parentProperties
    }
}

public class ChildClass2: ParentComponent, AutoEquatable {
    
    let attributeThree: String
    let attributeFour: Float
    public var parentProperties: ParentClass
    
    enum CodingKeys: String, CodingKey {
        case attributeThree
        case attributeFour
    }
    
    init(attributeThree: String, attributeFour: Float, parentProperties: ParentClass) {
        self.attributeThree = attributeThree
        self.attributeFour = attributeFour
        self.parentProperties = parentProperties
    }
    
}
