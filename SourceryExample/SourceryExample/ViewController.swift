//
//  ViewController.swift
//  SourceryExample
//
//  Created by Gabriel Marson on 17/04/20.
//  Copyright © 2020 Gabriel Marson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        testingIfEquatableIsWorking()
    }
    
    
    func testingIfEquatableIsWorking() {
        let a = ChildClass1(attributeOne: "bla", attributeTwo: 3243)
        let b = ChildClass1(attributeOne: "blu", attributeTwo: 435)
        
        print(a == b)
    }


}

