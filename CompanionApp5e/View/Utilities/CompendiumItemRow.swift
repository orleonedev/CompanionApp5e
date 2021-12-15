//
//  CompendiumItemRow.swift
//  CompanionApp5e
//
//  Created by Oreste Leone on 15/12/21.
//

import SwiftUI

struct CompendiumItemRow: View {
    var label: String
    var sysNameIcon: String
    var body: some View {
        HStack(alignment:.center, spacing: 12){
            Image(systemName: sysNameIcon)
                .font(.system(size: 48))
                .foregroundColor(.secondary)
            Text(label)
                .font(.title2)
                .lineLimit(1)
            
            Spacer()
            //Image(systemName: "chevron.right")
        }
    }
}

struct CompendiumItemRow_Previews: PreviewProvider {
    static var previews: some View {
        CompendiumItemRow(label: "Item", sysNameIcon: "pawprint.circle")
    }
}
