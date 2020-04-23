//
//  Models.swift
//  SourceryExample
//
//  Created by Gabriel Marson on 17/04/20.
//  Copyright © 2020 Gabriel Marson. All rights reserved.
//

import Foundation

public struct ParentComponent: AutoEquatable, AutoInitiable {
    let first: String?
    var second: String?
    let third: Int?
    
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

public struct ChildComponent2: ParentProperties, AutoEquatable, AutoDecodable, AutoInitiable {
    
    let attributeThree: String
    let attributeFour: Float
    public var parentProperties: ParentComponent
    
}
