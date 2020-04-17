// Generated using Sourcery 0.17.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


// MARK: ChildClass1 Equatable

extension ChildClass1: Equatable {
     public static func ==(lhs: ChildClass1, rhs: ChildClass1) -> Bool {
        guard lhs.attributeOne == rhs.attributeOne else { return false }
        guard lhs.attributeTwo == rhs.attributeTwo else { return false }
        guard lhs.parentProperties == rhs.parentProperties else { return false }
        return true
    }
}
// MARK: ChildClass2 Equatable

extension ChildClass2: Equatable {
     public static func ==(lhs: ChildClass2, rhs: ChildClass2) -> Bool {
        guard lhs.attributeThree == rhs.attributeThree else { return false }
        guard lhs.attributeFour == rhs.attributeFour else { return false }
        guard lhs.parentProperties == rhs.parentProperties else { return false }
        return true
    }
}
// MARK: ParentClass Equatable

extension ParentClass: Equatable {
     public static func ==(lhs: ParentClass, rhs: ParentClass) -> Bool {
        guard lhs.first == rhs.first else { return false }
        guard lhs.second == rhs.second else { return false }
        guard lhs.third == rhs.third else { return false }
        return true
    }
}
