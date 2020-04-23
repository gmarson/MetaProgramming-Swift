// Generated using Sourcery 0.17.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


// MARK: ChildComponent1 Equatable

extension ChildComponent1: Equatable {
     public static func ==(lhs: ChildComponent1, rhs: ChildComponent1) -> Bool {
        guard lhs.attributeOne == rhs.attributeOne else { return false }
        guard lhs.attributeTwo == rhs.attributeTwo else { return false }
        guard lhs.parentProperties == rhs.parentProperties else { return false }
        return true
    }
}
// MARK: ChildComponent2 Equatable

extension ChildComponent2: Equatable {
     public static func ==(lhs: ChildComponent2, rhs: ChildComponent2) -> Bool {
        guard lhs.attributeThree == rhs.attributeThree else { return false }
        guard lhs.attributeFour == rhs.attributeFour else { return false }
        guard lhs.parentProperties == rhs.parentProperties else { return false }
        return true
    }
}
// MARK: ParentComponent Equatable

extension ParentComponent: Equatable {
     public static func ==(lhs: ParentComponent, rhs: ParentComponent) -> Bool {
        guard lhs.first == rhs.first else { return false }
        guard lhs.second == rhs.second else { return false }
        guard lhs.third == rhs.third else { return false }
        return true
    }
}
