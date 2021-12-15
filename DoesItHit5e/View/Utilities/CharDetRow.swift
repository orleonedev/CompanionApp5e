//
//  CharDetRow.swift
//  CompanionApp5e
//
//  Created by Oreste Leone on 13/12/21.
//

import SwiftUI

struct CharDetRow: View {
    var label: String
    var value: String
    
    var body: some View {
        HStack(alignment:.center, spacing: 12){
            Text(label)
            Spacer()
            Text(value)
                .foregroundColor(.secondary)
            
            
            
        }
    }
}

struct CharDetRow_Previews: PreviewProvider {
    static var previews: some View {
        CharDetRow(label: "Armor Class" , value: String(characterListData[0].charClassArmor))
        CharDetRow(label: "Armor Class" , value: String(characterListData[0].charClassArmor))
            .preferredColorScheme(.dark)
    }
}
