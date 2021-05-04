// Generated using Sourcery 1.4.1 — https://github.com/krzysztofzablocki/Sourcery
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














class NetworkDispatcherMock: NetworkDispatcher {
    var baseUrl: URL {
        get { return underlyingBaseUrl }
        set(value) { underlyingBaseUrl = value }
    }
    var underlyingBaseUrl: URL!

    //MARK: - init

    var initBaseUrlReceivedBaseUrl: String?
    var initBaseUrlReceivedInvocations: [String] = []
    var initBaseUrlClosure: ((String) -> Void)?

    required init(baseUrl: String) {
        initBaseUrlReceivedBaseUrl = baseUrl
        initBaseUrlReceivedInvocations.append(baseUrl)
        initBaseUrlClosure?(baseUrl)
    }
    //MARK: - request

    var requestMethodHeadersOnCompletionCallsCount = 0
    var requestMethodHeadersOnCompletionCalled: Bool {
        return requestMethodHeadersOnCompletionCallsCount > 0
    }
    var requestMethodHeadersOnCompletionReceivedArguments: (method: HTTPMethod, headers: Headers?, onCompletion: Result<Data?, Error>?)?
    var requestMethodHeadersOnCompletionReceivedInvocations: [(method: HTTPMethod, headers: Headers?, onCompletion: Result<Data?, Error>?)] = []
    var requestMethodHeadersOnCompletionClosure: ((HTTPMethod, Headers?, Result<Data?, Error>?) -> Void)?

    func request(method: HTTPMethod, headers: Headers?, onCompletion: Result<Data?, Error>?) {
        requestMethodHeadersOnCompletionCallsCount += 1
        requestMethodHeadersOnCompletionReceivedArguments = (method: method, headers: headers, onCompletion: onCompletion)
        requestMethodHeadersOnCompletionReceivedInvocations.append((method: method, headers: headers, onCompletion: onCompletion))
        requestMethodHeadersOnCompletionClosure?(method, headers, onCompletion)
    }

}
