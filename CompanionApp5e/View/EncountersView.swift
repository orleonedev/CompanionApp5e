//
//  EncountersView.swift
//  CompanionApp5e
//
//  Created by Oreste Leone on 10/12/21.
//

import SwiftUI

struct EncountersView: View {
    var body: some View {
        
            
            List(0..<15) { i in
                
               HStack {
                   Image("EncountersIcon")
                       .foregroundColor(.secondary)
                       .scaleEffect(x: 1.5, y: 1.5, anchor: .center)
                       .padding()
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
