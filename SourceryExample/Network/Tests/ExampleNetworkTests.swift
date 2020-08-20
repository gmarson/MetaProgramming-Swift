//
//  NetworkTests.swift
//  SourceryExampleTests
//
//  Created by Gabriel Marson on 13/06/20.
//  Copyright © 2020 Gabriel Marson. All rights reserved.
//

import XCTest
@testable import SourceryExample

class ViewModelTests: XCTestCase {

    func testIfRequestWasCalled() {
        // given
        let networkLayer = NetworkDispatcherMock(baseUrl: "")
        let someViewModel = SomeViewModel(network: networkLayer)
        
        // when
        someViewModel.requestWhatViewModelNeeds()
        
        // then
        XCTAssert(networkLayer.requestMethodHeadersOnCompletionCalled)
    }

}

private class SomeViewModel {
    var network: NetworkDispatcher
    
    init(network: NetworkDispatcher) {
        self.network = network
    }
    
    func requestWhatViewModelNeeds() {
        network.request(method: .get, headers: ["someHeaders":"someValues"], onCompletion: nil)
    }
}
