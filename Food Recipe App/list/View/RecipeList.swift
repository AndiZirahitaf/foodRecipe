//
//  RecipeList.swift
//  list
//
//  Created by AndyZett on 19/04/21.
//


import SwiftUI

struct RecipeList: View {
    var body: some View{
        Home()
    }
}
struct RecipeList_Previews: PreviewProvider {
    static var previews: some View {
        RecipeList()
    }
}


struct Home: View {
    
    
    
    var body: some View {
        
        NavigationView{
            
        List(recipeData){ recipeList in
            ZStack{
            NavigationLink(destination: RecipeDetail(detail: recipeList)){
            
               
                VStack(alignment: .leading){
                    //gambar barang
                    
                    Image(recipeList.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 330, alignment: .center)
                        .cornerRadius(7)

                    VStack (alignment: .leading){
                        //nama barang
                        Text(recipeList.recipeName)
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                        
                        
                            Text(recipeList.maker)
                            .font(.system(size: 17))
                            .foregroundColor(.blue)
                                .padding(.top, 1)
                            
                            
                            
                            Text(recipeList.category)
                            .font(.system(size: 17))
                                .fontWeight(.semibold)
                                .padding(.top, 1)
                    HStack{
                        Image(systemName: "alarm")
                            .resizable()
                            .frame(width: 15, height: 15)
                        Text(recipeList.time)
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                            .padding(.top, 1)
                        }
                        
                        
                    }
                    
                    .padding(.bottom)
                    
                        
                    .padding()
                }//VStack
                
                
           
            }//Navigation Link
                
        }//Zstack
            
            
            
        }//list
        
        .navigationBarTitle(Text("Recipes"))
        
            
            }//navigationview
        
        }
    
        
    }



