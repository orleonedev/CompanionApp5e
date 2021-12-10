//
//  CompanionApp5eApp.swift
//  CompanionApp5e
//
//  Created by Oreste Leone on 10/12/21.
//

import SwiftUI

@main
struct CompanionApp5eApp: App {
    
    @StateObject var charStore = CharStore()
    @StateObject var compendium = Compendium()
    
//    charStore.addCharToList(character: Character(charName: "Beledros",
//                                                 charClass: "Paladin",
//                                                 charRace: "Dragonborn",
//                                                 charLevel: 1,
//                                                 charClassArmor: 25,
//                                                 charHitPoints: 18,
//                                                 charInitiative: 3,
//                                                 charSTR: 18,
//                                                 charDEX: 12,
//                                                 charCON: 13,
//                                                 charINT: 10,
//                                                 charWIS: 10,
//                                                 charCHA: 18))
    
    
    var body: some Scene {
        WindowGroup {
            RootView().environmentObject(charStore).environmentObject(compendium)
        }
    }
}
