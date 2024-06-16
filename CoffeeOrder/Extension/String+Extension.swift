//
//  String+Extension.swift
//  CoffeeOrder
//
//  Created by Yohan on 2024-06-16.
//

import Foundation

extension String {
    var isNumeric: Bool {
        Double(self) != nil
    }
    
    var isNonEmpty: Bool {
        !self.isEmpty
    }
    
    func isLessThan(_ number: Double) -> Bool {
        if !self.isNumeric {
            return false
        }
        
        guard let value = Double(self) else {return false}
        return value < number
    }
}
