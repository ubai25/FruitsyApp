//
//  FruitsyAppApp.swift
//  FruitsyApp
//
//  Created by Ahmad Ubaidillah on 07/06/21.
//

import SwiftUI

@main
struct FruitsyApp: App {
    @AppStorage("isOnBoarding") var isOnBoarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnBoarding{
                OnBoardingView()
            }else{
                ContentView()
            }
        }
    }
}
