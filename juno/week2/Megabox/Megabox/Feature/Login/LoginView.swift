//
//  LoginView.swift
//  Megabox
//
//  Created by 이준성 on 3/16/26.
//

import SwiftUI

struct LoginView: View {
    @AppStorage("saved_id") var savedId: String = ""
    @AppStorage("saved_pwd") var savedPwd: String = ""
    
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
        .padding(.horizontal, 17)
    }
        
    private var loginHeaderView: some View {
        HStack{
            Text("로그인")
                .font(.semiBold24)
                .foregroundStyle(.black)
        }
        .frame(maxWidth: .infinity)
        .padding(.top, 20)
    }
    
    @State private var loginViewModel = LoginViewModel()
    
    private var loginInputSection: some View {
        VStack{
            VStack{
                TextField("아이디", text: $loginViewModel.loginModel.id)
                    .foregroundStyle(Color.gray03)

                Divider()
                    .background(Color.gray02)
            }
            .padding(.bottom, 24)
            VStack{
                SecureField("비밀번호", text: $loginViewModel.loginModel.pwd)
                    .foregroundStyle(Color.gray03)
                
                Divider()
                    .background(Color.gray02)
            }
        }
    }
    
    private var loginActionButton: some View {
        Button {
            savedId = loginViewModel.loginModel.id
            savedPwd = loginViewModel.loginModel.pwd
        } label: {
            Text("로그인")
                .font(.bold18)
                .frame(maxWidth: .infinity)
                .frame(height: 54)
                .background(Color(.purple03))
                .clipShape(RoundedRectangle(cornerRadius: 46))
                .foregroundStyle(Color.white)
        }
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
            Button {
                print("naver btn clicked")
            } label : {
                Image("NaverLoginBtn")
                    .resizable()
                    .frame(width: 40, height: 40)
            }
            
            Spacer()
            
            Button {
                print("kakao btn clicked")
            } label : {
                Image("KakaoLoginBtn")
                    .resizable()
                    .frame(width: 40, height: 40)
            }
            
            Spacer()
            
            Button {
                print("apple btn clicked")
            } label : {
                Image("AppleLoginBtn")
                    .resizable()
                    .frame(width: 40, height: 40)
            }
            
        }
        .padding(.horizontal, 71)
        .padding(.vertical, 35)
    }
    
    private var promotionBannerView: some View {
        Image("umc")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(maxWidth: .infinity)
            .padding(.bottom, 210)
    }
    
}


#Preview {
    LoginView()
}
