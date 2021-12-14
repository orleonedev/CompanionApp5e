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
    @State var inputHP: String = ""
    @State var inputCA: String = ""
    @State var inputSP: String = ""
    @State var inputDice: String = ""
    @State var inputPP: String = ""
    @State var inputPB: String = ""
    @State var inputInit: String = ""
    
    @State var inputSTR: String = ""
    @State var inputDEX: String = ""
    @State var inputCON: String = ""
    @State var inputINT: String = ""
    @State var inputWIS: String = ""
    @State var inputCHA: String = ""
    
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
                    TextField("Hit Points", text: $inputHP)
                    TextField("Hit Dice", text: $inputClass)
                    TextField("Class Armor", text: $inputCA)
                    TextField("Speed", text: $inputSP)
                    TextField("Passive Perception", text: $inputPP)
                    TextField("Proficiency Bonus", text: $inputPB)
                    TextField("Initiative", text: $inputInit)
                }
                Section(header: Text("Ability Scores")){
                    
                    TextField("Strength", value: $inputSTR ,formatter: NumberFormatter(), prompt: Text("Strength"))
                        .keyboardType(.numberPad)
                    TextField("Dexterity", value: $inputDEX ,formatter: NumberFormatter(), prompt: Text("Dexterity"))
                        .keyboardType(.numberPad)
                    TextField("Constitution", value: $inputCON ,formatter: NumberFormatter(), prompt: Text("Constitution"))
                        .keyboardType(.numberPad)
                    TextField("Intelligence", value: $inputINT ,formatter: NumberFormatter(), prompt: Text("Intelligence"))
                        .keyboardType(.numberPad)
                    TextField("Wisdom", value: $inputWIS ,formatter: NumberFormatter(), prompt: Text("Wisdom"))
                        .keyboardType(.numberPad)
                    TextField("Charisma", value: $inputCHA ,formatter: NumberFormatter(), prompt: Text("Charisma"))
                        .keyboardType(.numberPad)
                    
                }
                
            }
            .listStyle(.grouped)
                .navigationTitle("Add Character")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar{
                    ToolbarItem(placement: .navigationBarTrailing){
                        Button("Save"){
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
