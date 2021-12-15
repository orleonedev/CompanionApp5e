//
//  CharactersView.swift
//  DoesItHit5e
//
//  Created by Oreste Leone on 10/12/21.
//

import SwiftUI

struct CharactersView: View {
    @EnvironmentObject var charStore: CharStore
    
    var body: some View {
        
        if charStore.charList.isEmpty
        {
            VStack(alignment: .center, spacing: 12){
                Image(systemName: "star")
                    .font(.system(size: 69))
                Text("Nothing to see here...")
                    .font(.title)
            }
            .foregroundColor(.secondary)
        }else{
            List{
                ForEach(charStore.charList){char in
                    NavigationLink(destination: CharacterDetailView(chara: char)){
                        CharacterRow(chara: char)
                    }
                }
            }
            .listStyle(.insetGrouped)
        }
    }
}

struct CharactersView_Previews: PreviewProvider {
    static var previews: some View {
        CharactersView().environmentObject(CharStore(
            list: characterListData))
        CharactersView().environmentObject(CharStore(
            list: characterListData))
            .preferredColorScheme(.dark)
    }
}
