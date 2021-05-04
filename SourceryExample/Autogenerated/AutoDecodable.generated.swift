// Generated using Sourcery 1.4.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// MARK: - Decodable for BaseComponent
extension BaseComponent {

    enum CodingKeys: String, CodingKey {
        case baseName
        case baseDescription
        case alignement
        case size
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        baseName = try container.decodeIfPresent(String.self, forKey: .baseName)
        baseDescription = try container.decodeIfPresent(String.self, forKey: .baseDescription)
        alignement = try container.decode(Alignement.self, forKey: .alignement)
        size = try container.decode(Size.self, forKey: .size)

    }
}

// MARK: - Decodable for ChildComponent1
extension ChildComponent1 {

    enum CodingKeys: String, CodingKey {
        case attributeOne
        case attributeTwo
        case baseProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        attributeOne = try container.decode(String.self, forKey: .attributeOne)
        attributeTwo = try container.decodeIfPresent(Float.self, forKey: .attributeTwo)
        baseProperties = try container.decodeIfPresent(BaseComponent.self, forKey: .baseProperties)

    }
}

// MARK: - Decodable for ChildComponent2
extension ChildComponent2 {

    enum CodingKeys: String, CodingKey {
        case attributeThree
        case attributeFour
        case baseProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        attributeThree = try container.decode(String.self, forKey: .attributeThree)
        attributeFour = try container.decode(Float.self, forKey: .attributeFour)
        baseProperties = try container.decodeIfPresent(BaseComponent.self, forKey: .baseProperties)

    }
}

// MARK: - Decodable for ChildComponent3
extension ChildComponent3 {

    enum CodingKeys: String, CodingKey {
        case baseProperties
        case importantAttribute
        case notImportantAttribute
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        baseProperties = try container.decodeIfPresent(BaseComponent.self, forKey: .baseProperties)
        importantAttribute = try container.decode([String: String].self, forKey: .importantAttribute)
        notImportantAttribute = nil

    }
}
