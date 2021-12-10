//
//  CharactersView.swift
//  CompanionApp5e
//
//  Created by Oreste Leone on 10/12/21.
//

import SwiftUI

struct CharactersView: View {
    @EnvironmentObject var charStore: CharStore
    
    var body: some View {
                
                List{
                    ForEach(charStore.charList){char in
                    CharacterRow(chara: char)
                        CharacterRow(chara: char)
                        CharacterRow(chara: char)
                        CharacterRow(chara: char)
                        CharacterRow(chara: char)
                        CharacterRow(chara: char)
                            CharacterRow(chara: char)
                            CharacterRow(chara: char)
                            CharacterRow(chara: char)
                            CharacterRow(chara: char)
                }
                    
                }
                .listStyle(.insetGrouped)
        
    }
}

struct CharactersView_Previews: PreviewProvider {
    static var previews: some View {
        CharactersView().environmentObject(CharStore())
    }
}
