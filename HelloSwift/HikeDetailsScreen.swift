//
//  HikeDetailsScreen.swift
//  HelloSwift
//
//  Created by Yohan on 2024-06-02.
//

import SwiftUI

struct HikeDetailsScreen: View {
    let hike: Hike
    
    var body: some View {
        VStack {
            Image(hike.photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(hike.name)
            Text("\(hike.miles.formatted()) miles")
            Spacer()
        }
        .navigationTitle(hike.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        HikeDetailsScreen(hike: Hike(name: "Salmonberry Trails", photo: "sal", miles: 6))
    }
}
