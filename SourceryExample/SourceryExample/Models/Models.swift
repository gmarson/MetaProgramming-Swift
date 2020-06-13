//
//  Models.swift
//  SourceryExample
//
//  Created by Gabriel Marson on 17/04/20.
//  Copyright © 2020 Gabriel Marson. All rights reserved.
//

import Foundation

public struct ChildComponent1: BaseProperties, AutoEquatable, AutoDecodable, AutoInitiable {
    let attributeOne: String
    let attributeTwo: Float?
    public var baseProperties: BaseComponent?
}

public struct ChildComponent2: BaseProperties, AutoEquatable, AutoDecodable, AutoInitiable {
    let attributeThree: String
    let attributeFour: Float
    public var baseProperties: BaseComponent?
}

public struct ChildComponent3: BaseProperties, AutoEquatable, AutoInitiable, AutoDecodable {
    public var baseProperties: BaseComponent?
    public var importantAttribute: [String: String]
    // sourcery: skipEquality, skipDecodable
    public var notImportantAttribute: [String: String]?
}
