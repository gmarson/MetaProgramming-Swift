//
//  JSONReader.swift
//  SourceryExampleTests
//
//  Created by Gabriel Marson on 17/04/20.
//  Copyright © 2020 Gabriel Marson. All rights reserved.
//

import Foundation

@testable import SourceryExample

class JSONReader {
    static func read<T: Decodable>(from file: String, outputType: T.Type) -> T? {
        let path = Bundle.main.path(forResource: file, ofType: "json")!
        let data = try! Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
        return try? JSONDecoder().decode(T.self, from: data)
    }
}
