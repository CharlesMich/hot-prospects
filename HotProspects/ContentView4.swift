//
//  ContentView4.swift
//  HotProspects
//
//  Created by Charles Michael on 12/14/24.
//

import SwiftUI

struct ContentView4: View {
    var body: some View {
        List {
            Text("Taylor Swift")
                .swipeActions{
                    Button("Delete", systemImage: "minus.circle", role: .destructive){
                        print("Delete")
                    }
                }
                .swipeActions(edge: .leading){
                    Button("Pin", systemImage: "pin"){
                        print("pinning")
                    }
                    .tint(.orange)
                }
        }
    }
}

#Preview {
    ContentView4()
}
