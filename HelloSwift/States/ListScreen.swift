//
//  ListScreen.swift
//  HelloSwift
//
//  Created by Yohan on 2024-06-04.
//

import SwiftUI

struct ListScreen: View {
    @State private var name: String = ""
    @State private var friends: [String] = []
    
    var body: some View {
        VStack {
            TextField("Enter name", text: $name)
                .textFieldStyle(.roundedBorder)
                .onSubmit {
                    friends.append(name)
                    name = ""
                }
            
            List(friends, id:\.self) { friend in
                Text(friend)
            }
            
            Spacer()
        }.padding()
    }
}

#Preview {
    ListScreen()
}
