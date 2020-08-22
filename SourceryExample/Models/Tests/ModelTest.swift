//
//  ModelTest.swift
//  SourceryExampleTests
//
//  Created by Gabriel Marson on 17/04/20.
//  Copyright © 2020 Gabriel Marson. All rights reserved.
//

import SnapshotTesting
import XCTest
@testable import SourceryExample

class ModelTest: XCTestCase {
    
    func testingIfObjectsAreEqual() {
        
        let base: BaseComponent = .init(baseName: "name", baseDescription: "description", alignement: .vertical)
        let attributeOne = "attributeOne"
        let attributeTwo: Float = 435.0
        
        let child1 = ChildComponent1(
            attributeOne: attributeOne,
            attributeTwo: attributeTwo,
            baseProperties: base
        )
        
        let child2 = ChildComponent1(
            attributeOne: attributeOne,
            attributeTwo: attributeTwo,
            baseProperties: base
        )
        
        XCTAssertTrue(child1 == child2)
    }
    
    func testingIfObjectsAreNotEqual() {
        
        let base: BaseComponent = .init(baseName: "name", baseDescription: "description", alignement: .vertical)
        
        let child1 = ChildComponent1(
            attributeOne: "attributeOne",
            attributeTwo: 3243,
            baseProperties: base
        )
        
        let child2 = ChildComponent1(
            attributeOne: "attributeOnee",
            attributeTwo: 435,
            baseProperties: base
        )
        
        XCTAssertTrue(child1 != child2)
    }
    
    func testingInitChild1() {
        let attributeOne = "attributeOne"
        let attributeTwo: Float = 2.0
        let base: BaseComponent = .init(baseName: "name", baseDescription: "description", alignement: .vertical)
        
        let child1 = ChildComponent1(
            attributeOne: attributeOne,
            attributeTwo: attributeTwo,
            baseProperties: base
        )
        
        XCTAssert(
            child1.attributeOne == attributeOne &&
                child1.attributeTwo! == attributeTwo &&
                child1.baseProperties == base,
            "something is wrong with init method")
    }
    
    func testDecodingOnBase() {
        guard let base = JSONReader.read(from: "Base", outputType: BaseComponent.self) else {
            XCTFail("Unable to decode")
            return
        }
        
        assertSnapshot(matching: base, as: .dump)
    }
    
    func testDecodingOnChild1() {
        guard let child1 = JSONReader.read(from: "Child1", outputType: ChildComponent1.self) else {
            XCTFail("Unable to decode")
            return
        }
        
        assertSnapshot(matching: child1, as: .dump)
    }
    
    func testDecodingOnChild1WithoutAttr2() {
        guard let child1 = JSONReader.read(from: "Child1WhithoutAttr2", outputType: ChildComponent1.self) else {
            XCTFail("Unable to decode")
            return
        }
        
        assertSnapshot(matching: child1, as: .dump)
    }
    
}
