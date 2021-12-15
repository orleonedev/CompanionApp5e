//
//  CharacterRow.swift
//  CompanionApp5e
//
//  Created by Oreste Leone on 10/12/21.
//

import SwiftUI

struct CharacterRow: View {
    var chara: Character
    var body: some View {
        HStack(alignment:.center, spacing: 12){
            Image(systemName: "person.circle")
                .font(.system(size: 48))
                .foregroundColor(.secondary)
            VStack(alignment: .leading){
                Text(chara.charName)
                    .font(.headline)
                    .lineLimit(1)
                HStack{
                    Text(chara.charRace)
                        .font(.subheadline).foregroundColor(.secondary)
                    Text(chara.charClass)
                        .font(.subheadline).foregroundColor(.secondary)
                }
            }
            Spacer()
            //Image(systemName: "chevron.right")
            
            
        }
    }
}

struct CharacterRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CharacterRow(chara: characterListData[0])
            CharacterRow(chara: characterListData[0])
                .preferredColorScheme(.dark)
        }
    }
}
