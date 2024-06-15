//
//  NumberFormatter.swift
//  CoffeeOrder
//
//  Created by Yohan on 2024-06-15.
//

import Foundation

extension NumberFormatter {
    
    static var currency: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter
    }
}
