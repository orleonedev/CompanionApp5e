//
//  CharDetHeadLineView.swift
//  DoesItHit5e
//
//  Created by Oreste Leone on 13/12/21.
//

import SwiftUI

struct CharDetHeadLineView: View {
    var chara: Character
    var body: some View {
        
        HStack{
            Spacer()
            VStack(alignment: .center,spacing: 4){
                Image(systemName: "person.circle")
                    .font(.system(size: 64))
                    .foregroundColor(.secondary)
                Text(chara.charName)
                    .font(.largeTitle)
                    .scaledToFill()
                                .minimumScaleFactor(0.5)
                                .lineLimit(1)
                HStack{
                    Text(chara.charRace)
                        .font(.subheadline)
                    Text(chara.charClass)
                        .font(.subheadline)
                    Text(String(chara.charLevel))
                        .font(.subheadline)
                }
            }
            Spacer()
        }
    }
}

struct CharDetHeadLineView_Previews: PreviewProvider {
    static var previews: some View {
        CharDetHeadLineView(chara: characterListData[0])
        CharDetHeadLineView(chara: characterListData[0])
            .preferredColorScheme(.dark)
        
    }
}
