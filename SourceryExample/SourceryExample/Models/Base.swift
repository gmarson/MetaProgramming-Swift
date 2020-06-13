//
//  Base.swift
//  SourceryExample
//
//  Created by Gabriel Marson on 13/06/20.
//  Copyright © 2020 Gabriel Marson. All rights reserved.
//

import Foundation

// MARK: - Component
public protocol BaseProperties: AutoMockable {
    var baseProperties: BaseComponent? { get }
    func fullDescription() -> String
    func doSomething()
}

extension BaseProperties {
    public func fullDescription() -> String {
        guard let name = baseProperties?.baseName, let description = baseProperties?.baseDescription else { return "Empty" }
        return "Name: " + name + "\nDescription: " + description
    }
    
    public  func doSomething() { }
}

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
		baseName: String? = nil,
		baseDescription: String? = nil,
		alignement: Alignement = .vertical
    ) {
        self.baseName = baseName
        self.baseDescription = baseDescription
        self.alignement = alignement
    }
// sourcery:end
}
