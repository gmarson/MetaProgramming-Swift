// Generated using Sourcery 0.18.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


// MARK: - BaseComponent custom init
extension BaseComponent {
	public init(
		_ baseName: String? = nil,
		baseDescription: String? = nil,
		alignement: Alignement = .vertical
    ) {
        self.baseName = baseName
        self.baseDescription = baseDescription
        self.alignement = alignement
    }
}

// MARK: - ChildComponent1 custom init
extension ChildComponent1 {
	public init(
		_ attributeOne: String,
		attributeTwo: Float? = nil,
		baseProperties: BaseComponent? = nil
    ) {
        self.attributeOne = attributeOne
        self.attributeTwo = attributeTwo
        self.baseProperties = baseProperties
    }
}

// MARK: - ChildComponent2 custom init
extension ChildComponent2 {
	public init(
		_ attributeThree: String,
		attributeFour: Float,
		baseProperties: BaseComponent? = nil
    ) {
        self.attributeThree = attributeThree
        self.attributeFour = attributeFour
        self.baseProperties = baseProperties
    }
}



