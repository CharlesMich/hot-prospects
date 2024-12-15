//
//  ProspectsVIew.swift
//  HotProspects
//
//  Created by Charles Michael on 12/15/24.
//

import SwiftUI
import SwiftData

struct ProspectsVIew: View {
    enum FilterType {
        case none, contacted, uncontacted
        
    }
    
    @Environment(\.modelContext) var modelContext
    @Query(sort: \Prospect.name) var prospects: [Prospect]
    
    let filter: FilterType
    
    var title: String {
        switch filter {
        case .none:
            "Everyone"
        case .contacted:
            "Contacted people"
        case .uncontacted:
            "Uncontacted people"
        }
    }
    var body: some View {
        NavigationStack {
            Text("People: \(prospects.count)")
                .navigationTitle(title)
                .toolbar {
                    Button ("Scan", systemImage: "qrcode.viewfinder") {
                        let prospect = Prospect(name: "Paul Hudson", emailAddress: "paul@hackingwithswift.com", isContacted: false)
                                       modelContext.insert(prospect)
                                   }
                }
                .navigationTitle(title)
        }
    }
}

#Preview {
    ProspectsVIew(filter: .none)
        .modelContainer(for: Prospect.self)
}
