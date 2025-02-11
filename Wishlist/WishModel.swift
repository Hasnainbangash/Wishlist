//
//  WishModel.swift
//  Wishlist
//
//  Created by Elexoft on 11/02/2025.
//

import Foundation
import SwiftData

// It tells swift data that we want to be able to load and save any wish objects using a swift data database and this model will convert our swift class into a stored model that is managed by Swift Data
@Model
class Wish {
    var title: String
    
    init(title: String) {
        self.title = title
    }
}
