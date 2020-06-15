//
//  Base.swift
//  SourceryExample
//
//  Created by Gabriel Marson on 13/06/20.
//  Copyright © 2020 Gabriel Marson. All rights reserved.
//

import Foundation

// MARK: - Component
public protocol BaseProperties {
    var baseProperties: BaseComponent? { get }
}

public enum Alignement: String, Decodable, Equatable {
    case vertical
    case horizontal
}

public struct BaseComponent: AutoEquatable, AutoInitiable, AutoDecodable {
    public var baseName: String?
    public var baseDescription: String?
    public var alignement: Alignement = .horizontal

// sourcery:inline:auto:BaseComponent.Init

// MARK: - BaseComponent custom init
	public init(
		baseName: String? = nil,
		baseDescription: String? = nil,
		alignement: Alignement = .horizontal
    ) {
        self.baseName = baseName
        self.baseDescription = baseDescription
        self.alignement = alignement
    }
// sourcery:end
}
