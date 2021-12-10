//
//  CharStore.swift
//  CompanionApp5e
//
//  Created by Oreste Leone on 10/12/21.
//

import Foundation
import SwiftUI

class CharStore: ObservableObject {
    
    @Published var charList: [Character] = [Character(charName: "Beledros",
                                                      charClass: "Paladin",
                                                      charRace: "Dragonborn",
                                                      charLevel: 1,
                                                      charClassArmor: 25,
                                                      charHitPoints: 18,
                                                      charInitiative: 3,
                                                      charSTR: 18,
                                                      charDEX: 12,
                                                      charCON: 13,
                                                      charINT: 10,
                                                      charWIS: 10,
                                                      charCHA: 18)]
    
//    init() {
//        self.charList = [Character(charName: "Beledros",
//                                   charClass: "Paladin",
//                                   charRace: "Dragonborn",
//                                   charLevel: 1,
//                                   charClassArmor: 25,
//                                   charHitPoints: 18,
//                                   charInitiative: 3,
//                                   charSTR: 18,
//                                   charDEX: 12,
//                                   charCON: 13,
//                                   charINT: 10,
//                                   charWIS: 10,
//                                   charCHA: 18)]
//    }
    
    func addCharToList(character: Character){
        self.charList.insert(character, at: 0)
    }
    
    
}
