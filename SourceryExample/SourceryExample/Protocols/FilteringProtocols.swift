//
//  FilteringProtocols.swift
//  SourceryExample
//
//  Created by Gabriel Marson on 17/04/20.
//  Copyright © 2020 Gabriel Marson. All rights reserved.
//

import Foundation

public protocol AutoEquatable { }
public protocol ParentComponent: Decodable {
    var parentProperties: ParentClass { get }
}
