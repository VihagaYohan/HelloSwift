//
//  Product.swift
//  HelloSwift
//
//  Created by Yohan on 2024-06-15.
//

import Foundation

struct Product: Decodable, Identifiable {
    let id: Int
    let title: String
    let price: Double
}
