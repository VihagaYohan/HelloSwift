//
//  HelloSwiftApp.swift
//  HelloSwift
//
//  Created by Yohan on 2024-05-31.
//

import SwiftUI

@main
struct HelloSwiftApp: App {
    
    // @StateObject private var appState = AppState()
    @State private var appState = GlobalState()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ContentView()
                    //.environmentObject(appState)
                    .environment(appState)
            }
        }
    }
}
