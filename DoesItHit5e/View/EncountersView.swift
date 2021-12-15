//
//  EncountersView.swift
//  DoesItHit5e
//
//  Created by Oreste Leone on 10/12/21.
//

import SwiftUI

struct EncountersView: View {
    var body: some View {
        
        
        List(0..<15) { i in
            NavigationLink(destination: {} ){
                HStack {
                    Image("EncountersIcon")
                        .resizable()
                        .foregroundColor(.secondary)
                        .scaledToFill()
                        .padding(8)
                        .frame(width: 48, height: 48, alignment: .center)
                    Text("Encounter \(i)")
                        .font(.title2)
                    
                }
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
