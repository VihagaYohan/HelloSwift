//
//  EnvironmentHome.swift
//  HelloSwift
//
//  Created by Yohan on 2024-06-05.
//

import SwiftUI

// Pre iOS 17
class AppState: ObservableObject {
    @Published var isOn: Bool = false
}

struct Room1: View {
    
    @EnvironmentObject private var appState: AppState
    
    var body: some View {
        VStack {
            Image(systemName: appState.isOn ? "lightbulb.fill": "lightbulb")
                .font(.largeTitle)
                .foregroundColor(appState.isOn ? .yellow : .black)
            Button("Toggle") {
                appState.isOn.toggle()
            }
        }
    }
}

struct Room2: View {
    
    var body: some View {
        Room1()
    }
}

struct EnvironmentHome: View {
    
    @EnvironmentObject private var appState: AppState

    var body: some View {
        VStack {
            Room2()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(appState.isOn ? .black : .white)
    }
}

#Preview {
    EnvironmentHome()
        .environmentObject(AppState())
}
