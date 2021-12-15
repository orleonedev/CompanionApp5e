//
//  CompendiumView.swift
//  DoesItHit5e
//
//  Created by Oreste Leone on 10/12/21.
//

import SwiftUI

struct CompendiumView: View {
    var body: some View {
        List{
            ForEach(compCategories, id: \.self){ item in
                NavigationLink(destination: {} ){
                    CompendiumItemRow(label: item, sysNameIcon: "books.vertical.circle")
                }
            }
        }
        .listStyle(.insetGrouped)
    }
}

struct CompendiumView_Previews: PreviewProvider {
    static var previews: some View {
        CompendiumView()
    }
}
