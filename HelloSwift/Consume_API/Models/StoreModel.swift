//
//  StoreModel.swift
//  HelloSwift
//
//  Created by Yohan on 2024-06-15.
//

import Foundation

@MainActor
class StoreModel: ObservableObject {
    let webService: WebService
    @Published var products: [Product] = []
    
    init(webService: WebService) {
        self.webService = webService
    }
    
    func populateProducts() async throws {
        products = try await webService.getProducts()
    }
}
