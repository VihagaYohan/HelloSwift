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
        List(hikes) { hike in
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
}

#Preview {
    HikeList()
}
