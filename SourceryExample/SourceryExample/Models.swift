//
//  Models.swift
//  SourceryExample
//
//  Created by Gabriel Marson on 17/04/20.
//  Copyright © 2020 Gabriel Marson. All rights reserved.
//

import Foundation

public class ParentClass: Decodable {
    let first: String
    var second: String?
    let third: Int
    

    init(first: String, second: String?, third: Int) {
        self.first = first
        self.second = second
        self.third = third
    }
    
}

public class ChildClass1: ParentClass {
    
    let attributeOne: String
    let attributeTwo: Float
    
    enum CodingKeys: String, CodingKey {
        case attributeOne
        case attributeTwo
    }
    
    required public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.attributeOne = try container.decode(String.self, forKey: .attributeOne)
        
        self.attributeTwo = try container.decode(Float.self, forKey: .attributeTwo)
        try super.init(from: decoder)
        
    }
}

public class ChildClass2: ParentClass {
    
    let attributeThree: String
    let attributeFour: Float
    
    enum CodingKeys: String, CodingKey {
        case attributeThree
        case attributeFour
    }
    
    init(attributeThree: String, attributeFour: Float) {
        self.attributeThree = attributeThree
        self.attributeFour = attributeFour
        super.init(first: "first", second: "second optional", third: 3)
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.attributeThree = try container.decode(String.self, forKey: .attributeThree)
        self.attributeFour = try container.decode(Float.self, forKey: .attributeFour)
        try super.init(from: decoder)
    }
}






