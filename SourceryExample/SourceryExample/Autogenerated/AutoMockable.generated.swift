// Generated using Sourcery 0.18.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// swiftlint:disable line_length
// swiftlint:disable variable_name

import Foundation
#if os(iOS) || os(tvOS) || os(watchOS)
import UIKit
@testable import SourceryExample
#elseif os(OSX)
import AppKit
#endif














class BasePropertiesMock: BaseProperties {
    var baseProperties: BaseComponent?

    //MARK: - fullDescription

    var fullDescriptionCallsCount = 0
    var fullDescriptionCalled: Bool {
        return fullDescriptionCallsCount > 0
    }
    var fullDescriptionReturnValue: String!
    var fullDescriptionClosure: (() -> String)?

    func fullDescription() -> String {
        fullDescriptionCallsCount += 1
        return fullDescriptionClosure.map({ $0() }) ?? fullDescriptionReturnValue
    }

    //MARK: - doSomething

    var doSomethingCallsCount = 0
    var doSomethingCalled: Bool {
        return doSomethingCallsCount > 0
    }
    var doSomethingClosure: (() -> Void)?

    func doSomething() {
        doSomethingCallsCount += 1
        doSomethingClosure?()
    }

}
