// Generated using Sourcery 0.18.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


// MARK: - BaseComponent custom init
// sourcery:inline:autoBaseComponent.init
	public init(
		_ baseName: String? = nil,
		baseDescription: String? = nil,
		alignement: Alignement = .vertical
    ) {
        self.baseName = baseName
        self.baseDescription = baseDescription
        self.alignement = alignement
    }
// sourcery:end

// MARK: - ChildComponent1 custom init
// sourcery:inline:autoChildComponent1.init
	public init(
		_ attributeOne: String,
		attributeTwo: Float? = nil,
		baseProperties: BaseComponent? = nil
    ) {
        self.attributeOne = attributeOne
        self.attributeTwo = attributeTwo
        self.baseProperties = baseProperties
    }
// sourcery:end

// MARK: - ChildComponent2 custom init
// sourcery:inline:autoChildComponent2.init
	public init(
		_ attributeThree: String,
		attributeFour: Float,
		baseProperties: BaseComponent? = nil
    ) {
        self.attributeThree = attributeThree
        self.attributeFour = attributeFour
        self.baseProperties = baseProperties
    }
// sourcery:end

// MARK: - ChildComponent3 custom init
// sourcery:inline:autoChildComponent3.init
	public init(
		_ baseProperties: BaseComponent? = nil,
		importantAttribute: [String: String],
		notImportantAttribute: [String: String]
    ) {
        self.baseProperties = baseProperties
        self.importantAttribute = importantAttribute
        self.notImportantAttribute = notImportantAttribute
    }
// sourcery:end



