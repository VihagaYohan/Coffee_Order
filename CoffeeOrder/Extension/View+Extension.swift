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
    
    @ViewBuilder
    func visible(_ value: Bool) -> some View {
        // you can use if-else also
        switch value {
        case true:
            self
        case false:
            EmptyView()
        }
    }
}
