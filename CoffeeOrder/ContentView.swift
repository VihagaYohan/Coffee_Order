//
//  ContentView.swift
//  CoffeeOrder
//
//  Created by Yohan on 2024-06-15.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject private var model: CoffeeModel
    
    func populateOrders() async {
        do {
            try await model.populateOrders()
        } catch {
            print(error)
        }
    }
    
    var body: some View {
        VStack {
            List(model.orders) {order in
                OrderCellView(order: order)
            }
        }.task {
            await populateOrders()
        }
        .padding()
    }
}

#Preview {
    ZStack {
        var config = Configuration()
        ContentView().environmentObject(CoffeeModel(webService: WebService(
            baseURL: config.environment.baseURL)))
    }
}

