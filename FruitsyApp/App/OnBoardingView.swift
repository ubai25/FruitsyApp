//
//  OnBoardingView.swift
//  FruitsyApp
//
//  Created by Ahmad Ubaidillah on 08/06/21.
//

import SwiftUI

struct OnBoardingView: View {
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        TabView {
            ForEach(fruits.shuffled()[0..<5]) { item in
                FruitCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
