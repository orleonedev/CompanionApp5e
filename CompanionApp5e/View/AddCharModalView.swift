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
    var body: some View {
        NavigationView{
            Text("Hello World")
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
