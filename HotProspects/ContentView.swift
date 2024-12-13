//
//  ContentView.swift
//  HotProspects
//
//  Created by Charles Michael on 12/12/24.
//

import SwiftUI

struct ContentView: View {
    
    let users = ["dfsdk", "sdfsdf", "sdfksjdf", "ksdfsd"]
    @State private var selection: String?
    
    var body: some View {
        List(users, id: \.self, selection: $selection) { user in
            Text(user)
        }
        if let selection {
            Text("you selected \(selection)")
        }
    }
}

#Preview {
    ContentView()
}
