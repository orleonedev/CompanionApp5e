//
//  CharStore.swift
//  DoesItHit5e
//
//  Created by Oreste Leone on 10/12/21.
//

import Foundation
import SwiftUI

class CharStore: ObservableObject {
    
    @Published var charList: [Character]
    
    init(list: [Character]){
        self.charList = list
    }
    
    func addCharToList(character: Character){
        self.charList.insert(character, at: 0)
    }
    
    
}
