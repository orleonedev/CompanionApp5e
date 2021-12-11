//
//  ContentView.swift
//  CompanionApp5e
//
//  Created by Oreste Leone on 10/12/21.
//

import SwiftUI



struct RootView: View {
    @EnvironmentObject var charStore: CharStore
    
    var body: some View {
        
        TabView{
            
           NavigationView {
               
               CharactersView().environmentObject(charStore)
                
                .navigationTitle("Characters")
                .toolbar{
                    ToolbarItem(placement: .navigationBarTrailing){
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Image(systemName: "plus")
                        }
                        
                    }
                    ToolbarItem(placement: .navigationBarTrailing){
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Image(systemName: "ellipsis.circle")
                        }
                    }
                    
                }
           }.tabItem({
               Image(systemName: "person.3")
               Text("Characters")
           }).tag(1)
            
            NavigationView {
                
                EncountersView()
                 
                 .navigationTitle("Encounters")
                 .toolbar{
                     ToolbarItem(placement: .navigationBarTrailing){
                         Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                             Image(systemName: "plus")
                         }
                         
                     }
                     ToolbarItem(placement: .navigationBarTrailing){
                         Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                             Image(systemName: "ellipsis.circle")
                         }
                     }
                     
                 }
            }
                .tabItem({
                    Image(systemName: "pencil.slash")
                    Text("Encounters")
                })
                .tag(2)
            
            NavigationView {
                
                CompendiumView()
                 
                 .navigationTitle("Compendium")
                 .toolbar{
                     ToolbarItem(placement: .navigationBarTrailing){
                         Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                             Image(systemName: "plus")
                         }
                         
                     }
                     ToolbarItem(placement: .navigationBarTrailing){
                         Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                             Image(systemName: "ellipsis.circle")
                         }
                     }
                     
                 }
            }
                .tabItem({
                    Image(systemName: "books.vertical")
                    Text("Compendium")
                })
                .tag(3)
            
        }
        
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RootView().environmentObject(CharStore(list: characterListData))
            RootView().preferredColorScheme(.dark).environmentObject(CharStore(list: characterListData))
        }
    }
}
