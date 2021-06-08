//
//  ContentView.swift
//  FruitsyApp
//
//  Created by Ahmad Ubaidillah on 07/06/21.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    
    // MARK: - BODY
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()){ item in
                    FruitCellView(fruit: item)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Fruitsy")
        }
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
