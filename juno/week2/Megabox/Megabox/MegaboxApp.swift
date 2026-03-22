//
//  MegaboxApp.swift
//  Megabox
//
//  Created by 이준성 on 3/16/26.
//

import SwiftUI

@main
struct MegaboxApp: App {
    @State private var showSplash = true
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                if showSplash {
                    SplashView()
                } else {
                    UserInfoView()
                }
            }
            .preferredColorScheme(.light)
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                    showSplash = false
                }
            }
        }
    }
}
