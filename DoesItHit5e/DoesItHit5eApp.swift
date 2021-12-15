//
//  CompanionApp5eApp.swift
//  CompanionApp5e
//
//  Created by Oreste Leone on 10/12/21.
//

import SwiftUI

@main
struct DoesItHit5eApp: App {
    
    @StateObject var charStore = CharStore(list: characterListData )
    @StateObject var compendium = Compendium()
    
    var body: some Scene {
        WindowGroup {
            RootView().environmentObject(charStore).environmentObject(compendium)
        }
    }
}
