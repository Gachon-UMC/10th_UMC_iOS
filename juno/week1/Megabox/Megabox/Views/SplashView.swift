//
//  SplashView.swift
//  Megabox
//
//  Created by 이준성 on 3/16/26.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack{
            Color(.white)
                .ignoresSafeArea()
            
            Image("megaboxLogo")
        }
    }
}

#Preview {
    SplashView()
}
