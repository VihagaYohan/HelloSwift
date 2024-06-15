//
//  ProductListHome.swift
//  HelloSwift
//
//  Created by Yohan on 2024-06-15.
//

import SwiftUI

struct ProductListHome: View {
    
    @StateObject private var vm = ProductListViewModel(webservice: WebService())
    @EnvironmentObject private var storeModel: StoreModel
    
    private func populateProducts() async {
        do {
            try await storeModel.populateProducts()
        } catch{
            print(error)
        }
    }
    
    var body: some View {
//        List(vm.products) {product in
//            Text(product.title)
//        }.task {
//            await vm.populateProducts()
//        }
        
        VStack {
            List(storeModel.products) {products in
                Text(products.title)
                Text(products.price as NSNumber, formatter: NumberFormatter.currency)
            }
        }.task {
            await populateProducts()
        }
        .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ProductListHome().environmentObject(StoreModel(webService: WebService()))
}
