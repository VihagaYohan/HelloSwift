//
//  ContentView.swift
//  HelloSwift
//
//  Created by Yohan on 2024-05-31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("robot")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/,
                                            style: .continuous))
           
            AsyncImage(url: URL(string: "https://plus.unsplash.com/premium_photo-1677094310899-02303289cadf?q=80&w=3132&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")!) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/FillStyle()/*@END_MENU_TOKEN@*/)
            } placeholder: {
                ProgressView("Downloading...")
            }



            
            Text("First line")
                .foregroundStyle(.cyan)
                .font(.largeTitle)
                .padding([.top, .bottom], 20)
            Text("Second line")
                .foregroundStyle(.green)
                .font(.title3)
            Text("Third line")
            
            HStack {
                Text("Left")
                Text("Right")
                    .fontWeight(.bold)
            }
        }
        .foregroundColor(.orange)
        .padding()
    }
}

#Preview {
    ContentView()
}
