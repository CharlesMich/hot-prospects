//
//  ContentView3.swift
//  HotProspects
//
//  Created by Charles Michael on 12/13/24.
//

import SwiftUI

struct ContentView3: View {
    @State private var backgroundColor = Color.red
    var body: some View {
        VStack {
            Text("Hello World")
                .padding()
                .background(backgroundColor)
            
            Text("Change COlor")
                .padding()
                .contextMenu {
                    Button("Red", systemImage: "checkmark.circil.fill"){
                        backgroundColor = Color.red
                    }
                    Button("Green"){
                        backgroundColor = Color.green
                    }
                    Button("Blue"){
                        backgroundColor = Color.blue
                    }
                }
        }
    }
}

#Preview {
    ContentView3()
}
