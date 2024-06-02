//
//  Hike.swift
//  HelloSwift
//
//  Created by Yohan on 2024-06-01.
//

import Foundation

struct Hike: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let photo: String
    let miles: Double
}
