//
//  HikeList.swift
//  HelloSwift
//
//  Created by Yohan on 2024-06-01.
//

import SwiftUI

struct HikeList: View {
    let hikes: [Hike] = [
        Hike(name: "Salmonberry Trails", photo: "sal", miles: 6),
        Hike(name: "Tom, Dick and Harry Mountain", photo: "tom", miles: 5.8),
        Hike(name: "Tamanwas Fails", photo: "tam", miles: 5)
    ]
    var body: some View {
        NavigationStack {
            List(hikes) { hike in
                NavigationLink(value: hike) {
                    HikeCellView(hike: hike)
                }
            }.navigationTitle("Hikes")
            .navigationDestination(for: Hike.self) { hike in
                    Text(hike.name)
                }
        }
    }
}

#Preview {
    HikeList()
}

struct HikeCellView: View {
    let hike: Hike
    
    var body: some View {
        HStack(alignment: .top) {
            Image(hike.photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
                .frame(width: 100)
            VStack(alignment: .leading) {
                Text(hike.name)
                Text("\(hike.miles.formatted()) miles")
            }
        }
    }
}
