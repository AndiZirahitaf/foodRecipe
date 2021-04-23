//
//  RecipeProfile.swift
//  list
//
//  Created by AndyZett on 19/04/21.
//


import SwiftUI

struct RecipeProfile: View {
    
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false, content:{
        VStack(alignment: .center, spacing: 30){
            Text("Profile")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top, 20)
            Image("minecraft")
                .resizable()
                .clipShape(Circle())
                .frame(width: 150, height: 150)
                .padding(.top, 30)
            
            Text("Umar Andika")
                .font(.title2)
                .fontWeight(.bold)
            
            HStack(spacing: 50){
                VStack{
                    Text("Followers")
                    Text("4k")
                        .fontWeight(.bold)
                }
                VStack{
                    Text("Following")
                    Text("100")
                        .fontWeight(.bold)
                }
                VStack{
                    Text("Recipes")
                    Text("50")
                        .fontWeight(.bold)
                }
            }
            .padding(.top, 30)
            
            
            
            Text("Your Recipes")
                .font(.title)
                .padding(.top, 50)
            
            VStack(alignment: .center, spacing: 18){
                ForEach(0..<3){ posts in
                    HStack(alignment: .center, spacing: 17){
                    ForEach(0..<3){ post in
                        Image("meatballs")
                            .resizable()
                            .frame(width: 90, height: 90)
                    }
                }
                }
            }
            .padding(.bottom, 100)
        }
        })
            .navigationBarHidden(true)
        }
    }
}

struct RecipeProfile_Previews: PreviewProvider {
    static var previews: some View {
        RecipeProfile()
    }
}
