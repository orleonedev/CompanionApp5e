//
//  Character.swift
//  CompanionApp5e
//
//  Created by Oreste Leone on 10/12/21.
//

import Foundation

struct Character: Identifiable {
    
    var id = UUID()
    
    var charName: String
    var charClass: String
    var charRace: String
    var charLevel: Int
    var charClassArmor: Int
    var charHitPoints: Int
    var charInitiative: Int
    var charSTR: Int
    var charDEX: Int
    var charCON: Int
    var charINT: Int
    var charWIS: Int
    var charCHA: Int
    
    var charStrMOD: Int {
        (charSTR - 10)/2
    }
    var charDexMOD: Int {
        (charDEX - 10)/2
    }
    var charConMOD: Int {
        (charCON - 10)/2
    }
    var charIntMOD: Int {
        (charINT - 10)/2
    }
    var charWisMOD: Int {
        (charWIS - 10)/2
    }
    var charChaMOD: Int {
        (charCHA - 10)/2
    }
    
    
}
