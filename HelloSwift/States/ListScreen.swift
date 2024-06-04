//
//  ListScreen.swift
//  HelloSwift
//
//  Created by Yohan on 2024-06-04.
//

import SwiftUI

struct ListScreen: View {
    @State private var name: String = ""
    @State private var friends: [String] = ["John", "Jean", "Logan", "Scott"]
    @State private var search: String = ""
    @State private var filterdFriends: [String] = []
    
    
    var body: some View {
        VStack {
            TextField("Enter name", text: $name)
                .textFieldStyle(.roundedBorder)
//                .onSubmit {
//                    friends.append(name)
//                    name = ""
//                }
            
            List(filterdFriends, id:\.self) { friend in
                Text(friend)
            }.searchable(text: $search)
                .listStyle(.plain)
                .onChange(of: search) {
                    if search.isEmpty {
                        filterdFriends = friends
                    } else {
                        filterdFriends = friends.filter { $0.contains(search)}
                    }
                }
            
            Spacer()
        }.padding()
            .onAppear(perform: {
                filterdFriends = friends
            })
            .navigationTitle("Friends")
    }
}

#Preview {
    NavigationStack {
        ListScreen()
    }
}
