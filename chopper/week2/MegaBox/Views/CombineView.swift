//
//  CombineView.swift
//  MegaBox
//
//  Created by 한지민 on 3/27/26.
//

import SwiftUI

struct CombineView: View {
    
    var body: some View {
        VStack(spacing: 59) {
            
            HeaderView()
            
            MembershipView()
            
            StatusView()
            
            ReservationView()
            
            Spacer()
        }
        .padding(.top, 20)
        .background(Color.white)
    }
}

#Preview {
    CombineView()
}
