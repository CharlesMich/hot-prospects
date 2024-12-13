//
//  ContentView1.swift
//  HotProspects
//
//  Created by Charles Michael on 12/12/24.
//

import SwiftUI

struct ContentView1: View {
    @State private var selectedTab = "One"
    
    var body: some View {
        TabView (selection: $selectedTab) {
            Button("show Tab 2") {
                selectedTab = "Two"
            }
                .tabItem{
                    Label("one", systemImage: "star")
                }
                .tag("One")
            Text("Tab 2")
                .tabItem{
                    Label("Two", systemImage: "circle")
                }
                .tag("Two")
        }
    }
}

#Preview {
    ContentView1()
}
