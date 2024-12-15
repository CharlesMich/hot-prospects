//
//  ContentView.swift
//  HotProspects
//
//  Created by Charles Michael on 12/12/24.
//

import SwiftUI

struct ContentView: View {
    
   
    
    var body: some View {
        TabView {
            ProspectsVIew(filter: .none)
                .tabItem {
                    Label("Everyone", systemImage: "person.3")
                }
            ProspectsVIew(filter: .contacted)
                .tabItem {
                    Label("Contacted", systemImage: "checkmark.circle")
                }
            ProspectsVIew(filter: .uncontacted)
                .tabItem {
                    Label("Uncontacted", systemImage: "questionmark.diamond")
                }
            MeView()
                .tabItem {
                    Label("Me", systemImage: "person.crop.square")
                }
        }
    }
}

#Preview {
    ContentView()
}
