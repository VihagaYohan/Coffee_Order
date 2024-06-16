//
//  View+Extension.swift
//  CoffeeOrder
//
//  Created by Yohan on 2024-06-16.
//

import Foundation
import SwiftUI

extension View {
    
    func centerHorizontally() -> some View {
        HStack{
            Spacer()
            self
            Spacer()
        }
    }
}
