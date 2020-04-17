//
//  Models.swift
//  SourceryExample
//
//  Created by Gabriel Marson on 17/04/20.
//  Copyright © 2020 Gabriel Marson. All rights reserved.
//

import Foundation

public class ParentClass: Decodable, AutoEquatable {
    let first: String
    var second: String?
    let third: Int
    

    init(first: String, second: String?, third: Int) {
        self.first = first
        self.second = second
        self.third = third
    }
    
    enum CodingKeys: String, CodingKey {
        case first
        case second
        case third
    }
    
    required public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.first = try container.decode(String.self, forKey: .first)
        self.second = try container.decodeIfPresent(String.self, forKey: .second)
        self.third = try container.decode(Int.self, forKey: .third)
    }
    
}

public class ChildClass1: ParentComponent, AutoEquatable {
    let attributeOne: String
    let attributeTwo: Float
    public var parentProperties: ParentClass
    
    enum CodingKeys: String, CodingKey {
        case attributeOne
        case attributeTwo
    }
        
    init(attributeOne: String, attributeTwo: Float, parentProperties: ParentClass) {
        self.attributeOne = attributeOne
        self.attributeTwo = attributeTwo
        self.parentProperties = parentProperties
    }
    
    required public init(from decoder: Decoder) throws {
        fatalError("not implemented yet")
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

    required public init(from decoder: Decoder) throws {
        fatalError("not implemented yet")
    }
    
}
