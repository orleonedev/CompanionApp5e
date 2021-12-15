//
//  AddCharModalRowInt.swift
//  CompanionApp5e
//
//  Created by Oreste Leone on 14/12/21.
//

import SwiftUI

struct AddCharModalRowInt: View {
    var label: String
    @Binding var value : Int?
    var body: some View {
        HStack{
            Text(label)
            Spacer()
            TextField(label, value: $value, format: .number )
                .foregroundColor(.secondary)
                .multilineTextAlignment(.trailing)
                .disableAutocorrection(true)
                .keyboardType(.numberPad)
                
        }
    }
}

struct AddCharModalRowInt_Previews: PreviewProvider {
    static var previews: some View {
        AddCharModalRowInt(label: "Label", value: .constant(nil))
    }
}
