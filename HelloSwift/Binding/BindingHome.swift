//
//  BindingHome.swift
//  HelloSwift
//
//  Created by Yohan on 2024-06-05.
//

import SwiftUI

struct LightBlubView: View {
    
    @Binding var isOn: Bool
    
    var body: some View {
        Image(systemName: isOn ? "lightbulb.fill" : "lightbulb")
            .font(.largeTitle)
            .foregroundColor(isOn ? .yellow: .black)
        Button("Toggle") {
            isOn.toggle()
        }
    }
}

struct BindingHome: View {
    
    @State private var isLightOn: Bool = false
    
    var body: some View {
        VStack {
            LightBlubView(isOn: $isLightOn)
        }.padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(isLightOn ? .black : .white)
    }
}

#Preview {
    BindingHome()
}
