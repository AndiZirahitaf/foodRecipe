//
//  RecipeDetail.swift
//  list
//
//  Created by AndyZett on 19/04/21.
//
import SwiftUI

struct RecipeDetail: View {
    
    let detail : recipe
    
    var body: some View {
        
        ScrollView{
            VStack(alignment: .leading){
                Image(detail.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipped()
                    .ignoresSafeArea()
                
                VStack(alignment: .leading){
                    Text(detail.recipeName)
                        .font(.title)
                        .fontWeight(.bold)
                    
                    
                    Text("By \(detail.maker)")
                        .foregroundColor(.gray)
                        .font(.callout)
                        .padding(.top, 2)
                    
                    
                    
                    
                    Spacer()
                    
                    VStack{
                        Text("Estimated Time: \(detail.time)")
                            .font(.system(size: 20))
                            
                            .fontWeight(.bold)
                            .padding(.top, 10)
                            
                            
                    }
                    
                    
                    Spacer()
                    Text(detail.description)
                        .frame(width: 342, height: 100,  alignment: .topLeading)
                        .padding(.top, 10)
                        .padding(.bottom, 20)
                    
                    
                    Text("Ingredients")
                        .font(.title3)
                        .fontWeight(.bold)
                    
                    
                    Text(detail.ingredients)
                        .padding(.top)
                        .frame(height: 400, alignment: .top)
                    
                    Text("Steps")
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.top, 10)
                    Text(detail.steps)
                        .padding(.top)
                        .frame(height: 1000, alignment: .top)
                    
                    
                        
                }.padding()
                
            }
        }
        .ignoresSafeArea()
    }
}

struct RecipeDetail_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetail(detail: recipe(id: 0, image: "", recipeName: "", category: "", maker: "", time: "", ingredients: "", steps: "", description: ""))
    }
}
