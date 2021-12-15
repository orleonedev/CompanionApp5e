//
//  AddCharModalRow.swift
//  DoesItHit5e
//
//  Created by Oreste Leone on 14/12/21.
//

import SwiftUI

struct AddCharModalRowString: View {
    var label: String
    @Binding var value : String
    var body: some View {
        HStack{
            Text(label)
            Spacer()
            TextField(label, text: $value )
                .foregroundColor(.secondary)
                .multilineTextAlignment(.trailing)
                .disableAutocorrection(true)
                
        }
    }
}

struct AddCharModalRowString_Previews: PreviewProvider {
    static var previews: some View {
        AddCharModalRowString(label: "label", value: .constant("Beledros del Clan Mereth Utah"))
    }
}
