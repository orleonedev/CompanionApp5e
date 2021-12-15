//
//  Compendium.swift
//  DoesItHit5e
//
//  Created by Oreste Leone on 10/12/21.
//

import Foundation
import SwiftUI

class Compendium: ObservableObject {
    @Published var monsters: [Items]
    @Published var spells: [Items]
    @Published var races: [Items]
    @Published var classes: [Items]
    @Published var items: [Items]
    
    init(){
        self.monsters = []
        self.spells = []
        self.races = []
        self.classes = []
        self.items = []
    }
}
