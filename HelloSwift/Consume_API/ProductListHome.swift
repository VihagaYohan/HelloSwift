//
//  ProductListHome.swift
//  HelloSwift
//
//  Created by Yohan on 2024-06-15.
//

import SwiftUI

struct ProductListHome: View {
    
    @StateObject private var vm = ProductListViewModel(webservice: WebService())
    
    var body: some View {
        List(vm.products) {product in
            Text(product.title)
        }.task {
            await vm.populateProducts()
        }
    }
}

#Preview {
    ProductListHome()
}
