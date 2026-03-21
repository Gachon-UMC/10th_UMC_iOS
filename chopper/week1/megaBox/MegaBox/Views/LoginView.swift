//
//  LoginView.swift
//  MegaBox
//
//  Created by 한지민 on 3/20/26.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            
            Spacer().frame(height: 0)
            
            titleGroup
            
            Spacer().frame(height: 157)
            
            inputGroup
            
            Spacer().frame(height: 75)
            
            buttonGroup
            
            Spacer().frame(height: 17)
            
            joinGroup
            
            Spacer().frame(height:35)
            
            socialGroup
            
            Spacer().frame(height:39)
            
            umcGroup
            
            Spacer()
        }
    }
    
    //로그인
    private var titleGroup: some View {
        HStack {
            Spacer()
            
            Text("로그인")
                .font(.pretendard(.semi, size: 24))
            
            Spacer()
        }
    }
    
    // 아이디 / 비밀번호
    private var inputGroup: some View {
        VStack(alignment: .leading, spacing: 16) {
            
            Text("아이디")
                .font(.pretendard(.medium, size: 16))
                .foregroundStyle(Color.gray)
            
            Divider()
            
            Text("비밀번호")
                .font(.pretendard(.medium, size: 16))
                .foregroundStyle(Color.gray)
            
            Divider()
        }
        .padding(.horizontal, 15)
    }
    
    // 로그인 버튼
    private var buttonGroup: some View {
        Text("로그인")
                .font(.pretendard(.bold, size: 18))
                .foregroundStyle(Color.white)
                .frame(height: 54)
                .frame(width: 408)
                .background(Color.mainPurple)
                .cornerRadius(10) //모퉁이 동그란 느낌
                .padding() //로그인 위 아래 간격 조절 어떻게 하지?
    }
    
    //회원가입
    private var joinGroup: some View{
        Text("회원가입")
            .font(.pretendard(.medium, size: 13))
            .foregroundStyle(Color.gray)
    }
    
    //소셜 로그인
    private var socialGroup: some View{
        HStack(alignment: .center, spacing: 73){
            Image("naver")
            Image("kakao")
            Image("apple")
        }
    }
    
    //umc 홍보 사진
    private var umcGroup: some View{
        Image("umc")
    }
}

#Preview("iPhone 11") {
    LoginView()
}

#Preview("iPhone 17 Pro") {
    LoginView()
}

