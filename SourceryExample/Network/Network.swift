//
//  Network.swift
//  SourceryExample
//
//  Created by Gabriel Marson on 13/06/20.
//  Copyright © 2020 Gabriel Marson. All rights reserved.
//

import Foundation

public enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case delete = "DELETE"
}

public typealias Headers = [String:String]

protocol NetworkDispatcher: AutoMockable {
    var baseUrl: URL { get }
    init(baseUrl: String)
    func request(method: HTTPMethod, headers: Headers?, onCompletion: (Result<Data?, Error>)?)
}

public class NetworkLayer: NetworkDispatcher {
    var baseUrl: URL
    
    required init(baseUrl: String) {
        self.baseUrl = URL(string: baseUrl)!
    }
    
    func request(method: HTTPMethod, headers: Headers?, onCompletion: (Result<Data?, Error>)?) {
        preconditionFailure("must implement request")
    }
    
}
