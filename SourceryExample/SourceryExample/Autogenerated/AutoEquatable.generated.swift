// Generated using Sourcery 0.18.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT



// MARK: BaseComponent Equatable
extension BaseComponent: Equatable {
     public static func ==(lhs: BaseComponent, rhs: BaseComponent) -> Bool {
         guard lhs.baseName == rhs.baseName else { return false }
         guard lhs.baseDescription == rhs.baseDescription else { return false }
         guard lhs.alignement == rhs.alignement else { return false }
        return true
    }
}

// MARK: ChildComponent1 Equatable
extension ChildComponent1: Equatable {
     public static func ==(lhs: ChildComponent1, rhs: ChildComponent1) -> Bool {
         guard lhs.attributeOne == rhs.attributeOne else { return false }
         guard lhs.attributeTwo == rhs.attributeTwo else { return false }
         guard lhs.baseProperties == rhs.baseProperties else { return false }
        return true
    }
}

// MARK: ChildComponent2 Equatable
extension ChildComponent2: Equatable {
     public static func ==(lhs: ChildComponent2, rhs: ChildComponent2) -> Bool {
         guard lhs.attributeThree == rhs.attributeThree else { return false }
         guard lhs.attributeFour == rhs.attributeFour else { return false }
         guard lhs.baseProperties == rhs.baseProperties else { return false }
        return true
    }
}

// MARK: ChildComponent3 Equatable
extension ChildComponent3: Equatable {
     public static func ==(lhs: ChildComponent3, rhs: ChildComponent3) -> Bool {
         guard lhs.baseProperties == rhs.baseProperties else { return false }
         guard lhs.importantAttribute == rhs.importantAttribute else { return false }
         guard lhs.something == rhs.something else { return false }
         guard lhs.somehting2 == rhs.somehting2 else { return false }
         guard lhs.childComponent2 == rhs.childComponent2 else { return false }
        return true
    }
}
