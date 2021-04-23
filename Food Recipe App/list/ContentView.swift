//
//  recipeView.swift
//  Test101
//
//  Created by AndyZett on 19/04/21.
//
import SwiftUI

struct ContentView : View {
    var body : some View {
                    TabView{
                RecipeList()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Recipes")
                    }
                
                RecipeProfile()
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("You")
                    }
            }
            
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



