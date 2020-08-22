// Generated using Sourcery 0.18.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


// MARK: - Decodable for BaseComponent
extension BaseComponent {

    enum CodingKeys: String, CodingKey {
        case baseName
        case baseDescription
        case alignement
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        baseName = try container.decodeIfPresent(String.self, forKey: .baseName)
        baseDescription = try container.decodeIfPresent(String.self, forKey: .baseDescription)
        alignement = try container.decode(Alignement.self, forKey: .alignement)

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
