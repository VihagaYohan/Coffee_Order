//
//  OrderCellView.swift
//  CoffeeOrder
//
//  Created by Yohan on 2024-06-15.
//

import SwiftUI

struct OrderCellView: View {
    
    let order: Order
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(order.name).accessibilityLabel("orderNameText")
                    .bold()
                
                Text("\(order.coffeeName) (\(order.size.rawValue)")
                    .accessibilityLabel("coffeeNameAndSizeText")
                    .opacity(0.5)
            }
            Spacer()
            Text(order.total as NSNumber, formatter: NumberFormatter.currency)
                .accessibilityLabel("coffeePriceText")
        }
    }
}

//#Preview {
//    OrderCellView(order: Order)
//}
