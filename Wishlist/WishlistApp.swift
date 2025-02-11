//
//  WishlistApp.swift
//  Wishlist
//
//  Created by Elexoft on 11/02/2025.
//

import SwiftUI
import SwiftData

@main
struct WishlistApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Wish.self) // This model container creates and sets up a storage for the wish object. Also it enabales access to the storage inside the window group which is the entire app. And finally, this container reads the Swift model to understand how the data objects should be saved.
        }
    }
}
