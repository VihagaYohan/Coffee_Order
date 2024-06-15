//
//  CoffeeOrderApp.swift
//  CoffeeOrder
//
//  Created by Yohan on 2024-06-15.
//

import SwiftUI

@main
struct CoffeeOrderApp: App {
    
    @StateObject private var model: CoffeeModel
    
    init() {
        var config = Configuration()
        let webservice = WebService(baseURL: config.environment.baseURL)
        _model = StateObject(wrappedValue: CoffeeModel(webService: webservice))
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
        }
    }
}
