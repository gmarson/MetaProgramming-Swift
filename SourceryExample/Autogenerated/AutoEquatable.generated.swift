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
