//
//  AddCharModalView.swift
//  CompanionApp5e
//
//  Created by Oreste Leone on 13/12/21.
//

import SwiftUI

struct AddCharModalView: View {

    @EnvironmentObject var charStore: CharStore
    @Binding var addCharModalShowing: Bool
    
    @State var inputName: String = ""
    @State var inputRace: String = ""
    @State var inputClass: String = ""
    @State var inputLevel: Int? = nil
    @State var inputHP: Int? = nil
    @State var inputCA: Int? = nil
    @State var inputSP: Int? = nil
    @State var inputDice: Int? = nil
    @State var inputPP: Int? = nil
    @State var inputPB: Int? = nil
    @State var inputInit: Int? = nil
    
    @State var inputSTR: Int? = nil
    @State var inputDEX: Int? = nil
    @State var inputCON: Int? = nil
    @State var inputINT: Int? = nil
    @State var inputWIS: Int? = nil
    @State var inputCHA: Int? = nil
    
    var body: some View {
        NavigationView{
            List{
                Section{
                    AddCharModalRowString(label: "Name", value: $inputName)
                    AddCharModalRowString(label: "Race", value: $inputRace)
                    AddCharModalRowString(label: "Class", value: $inputClass)
                    AddCharModalRowInt(label: "Level", value: $inputLevel)
                }
                Section(header: Text("Base Stats")){
                    AddCharModalRowInt(label: "Hit Points", value: $inputHP)
                    AddCharModalRowInt(label: "Hit Dice", value: $inputDice)
                    AddCharModalRowInt(label: "Class Armor", value: $inputCA)
                    AddCharModalRowInt(label: "Speed", value: $inputSP)
                    AddCharModalRowInt(label: "Passive Perception", value: $inputPP)
                    AddCharModalRowInt(label: "Proficiency Bonus", value: $inputPB)
                    AddCharModalRowInt(label: "Initiative", value: $inputInit)
                }
                Section(header: Text("Ability Scores")){
                    AddCharModalRowInt(label: "Strength", value: $inputSTR)
                    AddCharModalRowInt(label: "Dexterity", value: $inputDEX)
                    AddCharModalRowInt(label: "Constitution", value: $inputCON)
                    AddCharModalRowInt(label: "Intelligence", value: $inputINT)
                    AddCharModalRowInt(label: "Wisdom", value: $inputWIS)
                    AddCharModalRowInt(label: "Charisma", value: $inputCHA)
                }
                
            }
            .listStyle(.grouped)
            .navigationTitle(inputName == "" ? "Add Character" : inputName)
                .navigationBarTitleDisplayMode(.inline)
                .toolbar{
                    ToolbarItem(placement: .navigationBarTrailing){
                        Button("Save"){
                            var tempChar = Character(charName: inputName, charClass: inputClass, charRace: inputRace, charLevel: inputLevel ?? 0, charClassArmor: inputCA ?? 0, charHitPoints: inputHP ?? 0, charInitiative: inputInit ?? 0 , charPP: inputPP ?? 10, charSpeed: inputSP ?? 0, charHPDice: inputDice ?? 0, charProf: inputPB ?? 2, charSTR: inputSTR ?? 10, charDEX: inputDEX ?? 10, charCON: inputCON ?? 10, charINT: inputINT ?? 10, charWIS: inputWIS ?? 10, charCHA: inputCHA ?? 10)
                            charStore.addCharToList(character: tempChar)
                            addCharModalShowing.toggle()
                        }
                        
                    }
                    ToolbarItem(placement: .navigationBarLeading){
                        Button("Undo"){
                            addCharModalShowing.toggle()
                        }
                    }
                }
        }
    }
}


struct AddCharModalView_Previews: PreviewProvider {
    static var previews: some View {
        AddCharModalView(addCharModalShowing: .constant(true)).environmentObject(CharStore(list: characterListData))
        AddCharModalView(addCharModalShowing: .constant(true)).environmentObject(CharStore(list: characterListData))
            .preferredColorScheme(.dark)
    }
}
