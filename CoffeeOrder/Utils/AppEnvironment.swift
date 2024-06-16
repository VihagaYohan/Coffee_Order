//
//  AppEnvironment.swift
//  CoffeeOrder
//
//  Created by Yohan on 2024-06-15.
//

import Foundation

enum Endpoints {
    case allOrders
    case placeOrder
    
    var path: String {
        switch self {
        case .allOrders:
            return "/test/orders"
        case .placeOrder:
            return "/test/new-order"
        }
    }
}

struct Configuration {
    lazy var environment: AppEnvironment = {
    
        // read value from the environment variable
        guard let env = ProcessInfo.processInfo.environment["ENV"] else {
            return AppEnvironment.dev
        }
        
        if env == "TEST" {
            return AppEnvironment.test
        }
        
        return AppEnvironment.dev
    }()
}

enum AppEnvironment: String {
    case dev
    case test
    
    var baseURL: URL {
        switch self {
        case .dev:
            return URL(string:"https://island-bramble.glitch.me/test/orders")!
        case .test:
            return URL(string:"https://island-bramble.glitch.me/test/orders")!
        }
    }
}
