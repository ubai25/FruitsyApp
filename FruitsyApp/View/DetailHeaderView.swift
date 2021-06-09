//
//  DetailHeaderView.swift
//  FruitsyApp
//
//  Created by Ahmad Ubaidillah on 08/06/21.
//

import SwiftUI

struct DetailHeaderView: View {
    var fruit: Fruit
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimating ? 1.0 : 0.6)
        }
        .frame(height : 440)
        .onAppear(){
            withAnimation(.easeOut(duration: 0.5)){
                isAnimating = true
            }
        }
    }
}

struct DetailHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        DetailHeaderView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
