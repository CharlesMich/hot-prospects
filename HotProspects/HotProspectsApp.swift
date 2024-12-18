//
//  HotProspectsApp.swift
//  HotProspects
//
//  Created by Charles Michael on 12/12/24.
//

import SwiftUI
import SwiftData

@main
struct HotProspectsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Prospect.self)
    }
}
