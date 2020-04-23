//
//  Models.swift
//  SourceryExample
//
//  Created by Gabriel Marson on 17/04/20.
//  Copyright © 2020 Gabriel Marson. All rights reserved.
//

import Foundation

public struct ParentComponent: AutoEquatable {
    let first: String?
    var second: String?
    let third: Int?
    
    public init(first: String? = nil,
         second: String? = nil,
         third: Int? = nil
    ) {
        self.first = first
        self.second = second
        self.third = third
    }
    
    enum CodingKeys: String, CodingKey {
        case first
        case second
        case third
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.first = try container.decodeIfPresent(String.self, forKey: .first)
        self.second = try container.decodeIfPresent(String.self, forKey: .second)
        self.third = try container.decodeIfPresent(Int.self, forKey: .third)
    }
}

public struct ChildComponent1: ParentProperties, AutoEquatable, AutoDecodable, AutoInitiable {
    let attributeOne: String
    let attributeTwo: Float?
    public var parentProperties: ParentComponent
}

public struct ChildComponent2: ParentProperties, AutoEquatable, AutoDecodable {
    
    let attributeThree: String
    let attributeFour: Float
    public var parentProperties: ParentComponent
    
    init(attributeThree: String,
         attributeFour: Float,
         parentProperties: ParentComponent = ParentComponent()
    ) {
        self.attributeThree = attributeThree
        self.attributeFour = attributeFour
        self.parentProperties = parentProperties
    }
    
}
