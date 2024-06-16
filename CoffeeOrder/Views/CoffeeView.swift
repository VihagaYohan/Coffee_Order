//
//  CoffeeView.swift
//  CoffeeOrder
//
//  Created by Yohan on 2024-06-16.
//

import SwiftUI

struct AddCoffeeError {
    var name: String = ""
    var coffeeName: String = ""
    var price: String = ""
}

struct CoffeeView: View {
    
    @State private var name: String = ""
    @State private var coffeeName: String = ""
    @State private var price: String = ""
    @State private var coffeeSize: CoffeeSize = .medium
    @State private var errors: AddCoffeeError = AddCoffeeError()
    
    var isValid: Bool {
        errors = AddCoffeeError()
        
        if name.isEmpty {
            errors.name = "Name cannot be empty"
        }
        if coffeeName.isEmpty {
            errors.coffeeName = "Coffee name cannot be empty"
        }
        
        if price.isEmpty {
            errors.price = "Price cannot be empty"
        } else if !price.isNumeric {
            errors.price = "Price needs to a number"
        } else if price.isLessThan(1) {
            errors.price = "Price needs to be more than 0"
        }
        
        return errors.name.isEmpty && errors.price.isEmpty && errors.coffeeName.isEmpty
    }
    
    var body: some View {
        Form {
            TextField("Name", text:$name)
                .accessibilityIdentifier("name")
            Text(errors.name).visible(!errors.name.isNonEmpty)
                .font(.caption)
            TextField("Coffee Name", text:$coffeeName)
                .accessibilityIdentifier("coffeeName")
            TextField("Price", text:$price)
                .accessibilityIdentifier("price")
            Picker("Select size", selection: $coffeeSize) {
                ForEach(CoffeeSize.allCases, id:\.rawValue) { size in
                    Text(size.rawValue).tag(size)
                }
            }.pickerStyle(.segmented)
            
            Button("Place order") {
                if isValid {
                    // place the order
                }
                
            }.accessibilityIdentifier("placeOrderButton")
                .centerHorizontally()
        }
    }
}

#Preview {
    CoffeeView()
}
