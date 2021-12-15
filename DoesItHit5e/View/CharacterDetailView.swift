//
//  CharacterDetailView.swift
//  CompanionApp5e
//
//  Created by Oreste Leone on 13/12/21.
//

import SwiftUI

struct CharacterDetailView: View {
    var chara: Character
    
    var body: some View {
        List{
            CharDetHeadLineView(chara: chara)
            Section(header: Text("Base Stats")) {
                CharDetRow(label: "Hit Points", value: String(chara.charHitPoints)+("/")+String(chara.charHitPoints))
                CharDetRow(label: "Hit Dice", value: "d" + String(chara.charHPDice))
                CharDetRow(label: "Armor Class", value: String(chara.charClassArmor))
                CharDetRow(label: "Speed", value: String(chara.charSpeed)+" ft")
                CharDetRow(label: "Passive Perception", value: String(chara.charPP))
                CharDetRow(label: "Proficiency Bonus", value: "+" + String(chara.charProf))
                CharDetRow(label: "Initiative", value: "+" + String(chara.charInitiative))
                
                
            }
            
            Section(header: Text("Ability Scores")) {
                CharDetRow(label: "Strength", value: String(chara.charSTR)+"(+\(chara.charStrMOD))")
                CharDetRow(label: "Dexterity", value: String(chara.charDEX)+"(+\(chara.charDexMOD))")
                CharDetRow(label: "Constitution", value: String(chara.charCON)+"(+\(chara.charConMOD))")
                CharDetRow(label: "Intelligence", value: String(chara.charINT)+"(+\(chara.charIntMOD))")
                CharDetRow(label: "Wisdom", value: String(chara.charWIS)+"(+\(chara.charWisMOD))")
                CharDetRow(label: "Charisma", value: String(chara.charCHA)+"(+\(chara.charChaMOD))")
            }
            
        }
        .navigationTitle(chara.charName)
        .toolbar{
            ToolbarItem(placement: .navigationBarTrailing){
                EditButton()
                
            }
        }
        .listStyle(.insetGrouped)
    }
}

struct CharacterDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetailView(chara: characterListData[0])
        CharacterDetailView(chara: characterListData[0])
            .preferredColorScheme(.dark)
    }
}
