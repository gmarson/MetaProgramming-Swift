//
//  FilteringProtocols.swift
//  SourceryExample
//
//  Created by Gabriel Marson on 17/04/20.
//  Copyright © 2020 Gabriel Marson. All rights reserved.
//

import Foundation

// MARK: - Equatable
public protocol AutoEquatable { }

// MARK: - Codable
protocol AutoDecodable: Decodable { }
protocol AutoEncodable: Encodable { }
protocol AutoCodable: AutoDecodable, AutoEncodable { }

// MARK: - Component
public protocol ParentProperties {
    var parentProperties: ParentComponent { get }
}

// MARK: - Init
public protocol AutoInitiable { }
