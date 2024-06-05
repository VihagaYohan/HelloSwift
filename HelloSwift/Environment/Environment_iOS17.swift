//
//  Environment_iOS17.swift
//  HelloSwift
//
//  Created by Yohan on 2024-06-05.
//

import SwiftUI
import Observation

// POST iOS 17
@Observable
class GlobalState {
    var isOn: Bool = false
}

struct Room3: View {
    
    @Environment(GlobalState.self) private var appState: GlobalState
    
    var body: some View {
        
        @Bindable var appState = appState
        
        VStack {
            Image(systemName: appState.isOn ? "lightbulb.fill": "lightbulb")
                .font(.largeTitle)
                .foregroundColor(appState.isOn ? .yellow : .black)
//            Button("Toggle") {
//                appState.isOn.toggle()
//            }
            
            Toggle("isOn", isOn: $appState.isOn)
        }
    }
}

struct Room4: View {
    
    var body: some View {
        Room1()
    }
}

struct Environment_iOS17: View {
    
    @Environment(GlobalState.self) private var  appState: GlobalState
    
    var body: some View {
        VStack {
            Room4()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(appState.isOn ? .black : .white)
    }
}

#Preview {
    Environment_iOS17()
        .environment(GlobalState())
}
