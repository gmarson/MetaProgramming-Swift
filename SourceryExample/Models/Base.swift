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

public struct Size: Decodable, Equatable, AutoInitiable {
    
    var width: Double
    var maxWidth: Double
    var height: Double
    var maxHeight: Double

// sourcery:inline:auto:Size.Init

// MARK: - Size custom init
	public init(
		width: Double,
		maxWidth: Double,
		height: Double,
		maxHeight: Double
    ) {
        self.width = width
        self.maxWidth = maxWidth
        self.height = height
        self.maxHeight = maxHeight
    }
// sourcery:end
}

public struct BaseComponent: AutoEquatable, AutoInitiable, AutoDecodable {
    public var baseName: String?
    public var baseDescription: String?
    public var alignement: Alignement = .horizontal
    public var size: Size

// sourcery:inline:auto:BaseComponent.Init

// MARK: - BaseComponent custom init
	public init(
		baseName: String? = nil,
		baseDescription: String? = nil,
		alignement: Alignement = .horizontal,
		size: Size
    ) {
        self.baseName = baseName
        self.baseDescription = baseDescription
        self.alignement = alignement
        self.size = size
    }
// sourcery:end
}
