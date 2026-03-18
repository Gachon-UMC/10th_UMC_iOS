//
//  LoginView.swift
//  Megabox
//
//  Created by 이준성 on 3/16/26.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack{
            loginHeaderView
            Spacer()
            loginInputSection
            loginActionButton
            signUpLinkView
            socialLoginGroup
            promotionBannerView
        }
    }
        
    
    
    private var loginHeaderView: some View {
        HStack{
            Text("로그인")
                .font(.semiBold24)
                .foregroundStyle(.black)
        }
        .frame(maxWidth: .infinity)
        .padding(.top, 20)
        .padding(.horizontal, 17)
    }
    
    private var loginInputSection: some View {
        VStack{
            VStack{
                TextField("아이디", text: .constant(""))
                    .foregroundStyle(Color.gray03)

                Divider()
                    .background(Color.gray02)
            }
            .padding(.bottom, 24)
            VStack{
                TextField("비밀번호", text: .constant(""))
                    .foregroundStyle(Color.gray03)
                
                Divider()
                    .background(Color.gray02)
            }
        }
        .padding(.horizontal, 17)
    }
    
    private var loginActionButton: some View {
        Button {
            print("login btn clicked")
        } label: {
            Text("로그인")
                .font(.bold18)
                .frame(maxWidth: .infinity)
                .frame(height: 54)
                .background(Color(.purple03))
                .cornerRadius(10)
                .foregroundStyle(Color.white)
        }
        .padding(.horizontal, 17)
        .padding(.top, 74.98)
    }
    
    private var signUpLinkView: some View {
        Button {
            print("signUp btn clicked")
        } label: {
            Text("회원가입")
                .foregroundStyle(.gray04)
        }
        .padding(.top, 17)

    }
    
    private var socialLoginGroup: some View {
        HStack{
            Image("NaverLoginBtn")
                .resizable()
                .frame(width: 40, height: 40)
            
            Spacer()
            
            Image("KakaoLoginBtn")
                .resizable()
                .frame(width: 40, height: 40)
            
            Spacer()
            Image("AppleLoginBtn")
                .resizable()
                .frame(width: 40, height: 40)
        }
        .padding(.horizontal, 71)
        .padding(.vertical, 35)
    }
    
    private var promotionBannerView: some View {
        Image("umc")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(maxWidth: .infinity)
            .padding(.horizontal, 17)
            .padding(.bottom, 210)
    }
    
}


#Preview {
    LoginView()
}
