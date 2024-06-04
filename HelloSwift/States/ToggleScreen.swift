//
//  ToggleScreen.swift
//  HelloSwift
//
//  Created by Yohan on 2024-06-04.
//

import SwiftUI

struct ToggleScreen: View {
    @State private var isOn: Bool = false
    
    var body: some View {
        VStack {
            Toggle(isOn: $isOn, label: {
                Text(isOn ? "ON" : "OFF")
                    .foregroundStyle(.white)
            })
            .fixedSize()
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            .background(isOn ? .blue : .black)
    }
}

#Preview {
    ToggleScreen()
}
