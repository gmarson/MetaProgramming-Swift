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

public final class BaseComponent: AutoEquatable, AutoInitiable, AutoDecodable {
    public var baseName: String?
    public var baseDescription: String?
    public var alignement: Alignement = .vertical
}
