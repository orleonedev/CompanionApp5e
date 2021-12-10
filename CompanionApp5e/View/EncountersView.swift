//
//  EncountersView.swift
//  CompanionApp5e
//
//  Created by Oreste Leone on 10/12/21.
//

import SwiftUI

struct EncountersView: View {
    var body: some View {
        
            
            List(0..<20) { i in
                
               HStack {
                   Image(systemName: "pencil.slash")
                   Text("Encounter \(i)")
                   
               }
            }
            .listStyle(.insetGrouped)
}
}

struct EncountersView_Previews: PreviewProvider {
    static var previews: some View {
        EncountersView()
    }
}
