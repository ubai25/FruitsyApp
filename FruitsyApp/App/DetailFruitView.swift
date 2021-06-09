//
//  DetailFruitView.swift
//  FruitsyApp
//
//  Created by Ahmad Ubaidillah on 08/06/21.
//

import SwiftUI

struct DetailFruitView: View {
    var fruit: Fruit
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 20) {
                    // HEADER
                    DetailHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        //TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //NUTRITIONS
                        FruitNutrientsView(fruit: fruit)
                        
                        //SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //DESCRIPTIONS
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //LINK
                        SourceLinkView()
                            .padding(.top, 20)
                            .padding(.bottom, 10)
                        
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }
//                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct DetailFruitView_Previews: PreviewProvider {
    static var previews: some View {
        DetailFruitView(fruit: fruitsData[0])
    }
}
