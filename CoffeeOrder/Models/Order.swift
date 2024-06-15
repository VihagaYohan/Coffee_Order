//
//  Order.swift
//  CoffeeOrder
//
//  Created by Yohan on 2024-06-15.
//

import Foundation

enum CoffeeSize: String, Codable, CaseIterable {
    case small = "Small"
    case medium = "Medium"
    case large = "Large"
}

struct Order: Decodable, Identifiable, Hashable {
    var id: Int?
    var name: String
    var coffeeName: String
    var total: Double
    var size: CoffeeSize
}
