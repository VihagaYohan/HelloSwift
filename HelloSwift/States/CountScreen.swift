//
//  CountScreen.swift
//  HelloSwift
//
//  Created by Yohan on 2024-06-04.
//

import SwiftUI

struct CountScreen: View {
    @State private var count: Int = 0
    
    var body: some View {
        VStack {
            Text("\(count)")
                .font(.largeTitle)
            Button("Increment") {
                count += 1
            }
        }
    }
}

#Preview {
    CountScreen()
}
