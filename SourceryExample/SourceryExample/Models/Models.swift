//
//  Models.swift
//  SourceryExample
//
//  Created by Gabriel Marson on 17/04/20.
//  Copyright © 2020 Gabriel Marson. All rights reserved.
//

import Foundation

public enum Alignement: String, Decodable, Equatable {
    case vertical
    case horizontal
}

public struct BaseComponent: AutoEquatable, AutoInitiable, AutoDecodable {
    var baseName: String?
    var baseDescription: String?
    var alignement: Alignement = .vertical

// sourcery:inline:auto:BaseComponent.Init

// MARK: - BaseComponent custom init
	public init(
		_ baseName: String? = nil,
		baseDescription: String? = nil,
		alignement: Alignement = .vertical
    ) {
        self.baseName = baseName
        self.baseDescription = baseDescription
        self.alignement = alignement
    }
// sourcery:end
}

public struct ChildComponent1: BaseProperties, AutoEquatable, AutoDecodable, AutoInitiable {
    let attributeOne: String
    let attributeTwo: Float?
    public var baseProperties: BaseComponent?

// sourcery:inline:auto:ChildComponent1.Init

// MARK: - ChildComponent1 custom init
	public init(
		_ attributeOne: String,
		attributeTwo: Float? = nil,
		baseProperties: BaseComponent? = nil
    ) {
        self.attributeOne = attributeOne
        self.attributeTwo = attributeTwo
        self.baseProperties = baseProperties
    }
// sourcery:end
}

public struct ChildComponent2: BaseProperties, AutoEquatable, AutoDecodable, AutoInitiable {
    let attributeThree: String
    let attributeFour: Float
    public var baseProperties: BaseComponent?

// sourcery:inline:auto:ChildComponent2.Init

// MARK: - ChildComponent2 custom init
	public init(
		_ attributeThree: String,
		attributeFour: Float,
		baseProperties: BaseComponent? = nil
    ) {
        self.attributeThree = attributeThree
        self.attributeFour = attributeFour
        self.baseProperties = baseProperties
    }
// sourcery:end
}

public struct ChildComponent3: BaseProperties, AutoEquatable, AutoInitiable {
    public var baseProperties: BaseComponent?
    public var importantAttribute: [String: String]
    // sourcery: skipEquality, skipInitiable
    public var notImportantAttribute: [String: String]

// sourcery:inline:auto:ChildComponent3.Init

// MARK: - ChildComponent3 custom init
	public init(
		_ baseProperties: BaseComponent? = nil,
		importantAttribute: [String: String],
		notImportantAttribute: [String: String]
    ) {
        self.baseProperties = baseProperties
        self.importantAttribute = importantAttribute
        self.notImportantAttribute = notImportantAttribute
    }
// sourcery:end
}
