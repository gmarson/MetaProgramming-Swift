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
        let child1 = ChildComponent1(
            attributeOne: "blu",
            attributeTwo: 435,
            parentProperties: .init(first: "first", second: "second", third: 3)
        )
        
        let child2 = ChildComponent1(
            attributeOne: "blu",
            attributeTwo: 435,
            parentProperties: .init(first: "first", second: "second", third: 3)
        )
        
        XCTAssertTrue(child1 == child2)
    }

    func testingIfObjectsAreNotEqual() {
        let child1 = ChildComponent1(
            attributeOne: "bla",
            attributeTwo: 3243,
            parentProperties: .init(first: "first", second: "second", third: 3)
        )
        
        let child2 = ChildComponent1(
            attributeOne: "blu",
            attributeTwo: 435,
            parentProperties: .init(first: "first", second: "second", third: 3)
        )
        
        XCTAssertTrue(child1 != child2)
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
    
    func testDecodingOnChild2WithoutAttr() {
        guard let child2 = JSONReader.read(from: "Child2WithoutParentAttr", outputType: ChildComponent2.self) else {
            XCTFail("Unable to decode")
            return
        }
        
        assertSnapshot(matching: child2, as: .dump)
    }
    
    func testDecodingOnChild2() {
        guard let child1 = JSONReader.read(from: "Child2", outputType: ChildComponent2.self) else {
            XCTFail("Unable to decode")
            return
        }
        
        assertSnapshot(matching: child1, as: .dump)
    }

}
