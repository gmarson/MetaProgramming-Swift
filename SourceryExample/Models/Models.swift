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
