// Generated using Sourcery 0.17.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

extension ChildComponent1 {
    public init(_ attributeOne: String, attributeTwo: Float? = nil, parentProperties: ParentComponent = ParentComponent()    ) {
        self.attributeOne = attributeOne
        self.attributeTwo = attributeTwo
        self.parentProperties = parentProperties
    }
}
extension ChildComponent2 {
    public init(_ attributeThree: String, attributeFour: Float, parentProperties: ParentComponent = ParentComponent()    ) {
        self.attributeThree = attributeThree
        self.attributeFour = attributeFour
        self.parentProperties = parentProperties
    }
}
extension ParentComponent {
    public init(_ first: String? = nil, second: String? = nil, third: Int? = nil    ) {
        self.first = first
        self.second = second
        self.third = third
    }
}

