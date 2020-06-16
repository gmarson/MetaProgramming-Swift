//
//  Models.swift
//  SourceryExample
//
//  Created by Gabriel Marson on 17/04/20.
//  Copyright © 2020 Gabriel Marson. All rights reserved.
//

import Foundation

public struct ChildComponent1: BaseProperties, AutoEquatable, AutoDecodable {
    let attributeOne: String
    let attributeTwo: Float?
    public var baseProperties: BaseComponent?
}

public struct ChildComponent2: BaseProperties, AutoEquatable, AutoDecodable, AutoInitiable {
    let attributeThree: String
    let attributeFour: Float
    public var baseProperties: BaseComponent?

// sourcery:inline:auto:ChildComponent2.Init

// MARK: - ChildComponent2 custom init
	public init(
		attributeThree: String,
		attributeFour: Float,
		baseProperties: BaseComponent? = nil
    ) {
        self.attributeThree = attributeThree
        self.attributeFour = attributeFour
        self.baseProperties = baseProperties
    }
// sourcery:end
}

public struct ChildComponent3: BaseProperties, AutoEquatable, AutoInitiable, AutoDecodable {
    public var baseProperties: BaseComponent?
    public var importantAttribute: [String: String]
    // sourcery: skipEquality, skipDecodable
    public var notImportantAttribute: [String: String]?
    public var something: Float
    public var somehting2: String
    public var childComponent2: ChildComponent2

// sourcery:inline:auto:ChildComponent3.Init

// MARK: - ChildComponent3 custom init
	public init(
		baseProperties: BaseComponent? = nil,
		importantAttribute: [String: String],
		notImportantAttribute: [String: String]? = nil,
		something: Float,
		somehting2: String,
		childComponent2: ChildComponent2
    ) {
        self.baseProperties = baseProperties
        self.importantAttribute = importantAttribute
        self.notImportantAttribute = notImportantAttribute
        self.something = something
        self.somehting2 = somehting2
        self.childComponent2 = childComponent2
    }
// sourcery:end
}
