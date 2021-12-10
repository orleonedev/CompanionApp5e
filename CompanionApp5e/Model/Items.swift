//
//  Item.swift
//  CompanionApp5e
//
//  Created by Oreste Leone on 10/12/21.
//

import Foundation

enum ItemTypes: String {
    case Monster, Spell, Race , Class , Item
}

struct Items: Identifiable {
    var id = UUID()
    var itemName: String
    var type: ItemTypes
    
}
