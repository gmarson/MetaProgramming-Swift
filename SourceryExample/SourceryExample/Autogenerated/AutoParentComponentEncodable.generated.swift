// Generated using Sourcery 0.17.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


extension ChildComponent1 {

    enum CodingKeys: String, CodingKey {
        case attributeOne
        case attributeTwo
        case parentProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        attributeOne = try container.decode(String.self, forKey: .attributeOne)
        attributeTwo = try container.decodeIfPresent(Float.self, forKey: .attributeTwo)
        parentProperties = try ParentComponent(from: decoder)
    }

}

extension ChildComponent2 {

    enum CodingKeys: String, CodingKey {
        case attributeThree
        case attributeFour
        case parentProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        attributeThree = try container.decode(String.self, forKey: .attributeThree)
        attributeFour = try container.decode(Float.self, forKey: .attributeFour)
        parentProperties = try ParentComponent(from: decoder)
    }

}
