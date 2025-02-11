//
//  ContentView.swift
//  Wishlist
//
//  Created by Elexoft on 11/02/2025.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var wishes: [Wish]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(wishes) { wish in
                    Text(wish.title)
                }
            } //: LIST
            .navigationTitle("Wishlist")
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Wish.self, inMemory: true) // Without this there will be no model context in the environment. Another important thing about this code becuase it is a preview code we are going to create an in-memory container so that any preview objects we made won't be saved. Instead they will be just temporary.
}
