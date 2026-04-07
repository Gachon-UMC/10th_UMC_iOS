//
//  LoginView.swift
//  Megabox
//
//  Created by 최윤석 on 3/22/26.
//

import SwiftUI

struct LoginView: View {
    @State private var viewModel = LoginViewModel()
    
    @AppStorage("userId") private var storedId: String = ""
    @AppStorage("userPwd") private var storedPwd: String = ""
    
    var body: some View {
        VStack{
            navigationBar
            Spacer()
            idpw
            loginButton
            signUpButton
            socialLoginSection
            umcPoster
            Spacer()
        }
        .background(Color.white.ignoresSafeArea())

    }
     
//MARK: -하위 뷰
    private var navigationBar: some View {
        HStack {
            Image(systemName: "chevron.left")
            Spacer()
            Text("로그인").font(.semiBold24)
            Spacer()
            Image(systemName: "chevron.left").opacity(0)
        }
        .padding(.horizontal, 16)
        .frame(height: 36)
        .padding(.top, 44)
    }
    
    private var idpw: some View {
        VStack(spacing: 30) {
            
            VStack(alignment: .leading) {
                Text("아이디")
                    .font(.medium16)
                    .foregroundStyle(.gray)
                TextField("아이디를 입력해주세요", text: $viewModel.loginData.id)
                    .font(.medium16)
                
                Divider()
            }
            
            VStack(alignment: .leading) {
                Text("비밀번호")
                    .font(.medium16)
                    .foregroundStyle(.gray)
                SecureField("비밀번호를 입력해주세요", text: $viewModel.loginData.pwd)
                    .font(.medium16)
                
                Divider()
            }
        }
        //.padding(.top, 50)
        .padding(.horizontal, 16)
    }
    
    private var loginButton: some View {
        Button(action: {
            storedId = viewModel.loginData.id
            storedPwd = viewModel.loginData.pwd
            print("AppStorage 저장완료 : \(storedId)")
        }) {
            Text("로그인")
                .font(.bold18)
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 54)
                .background(Color("purple03"))
                .cornerRadius(36)
        }
        .padding(.top, 40)
        .padding(.horizontal, 16)
    }
    
    private var signUpButton: some View {
        Text("회원가입")
            .font(.regular12)
            .foregroundStyle(Color("gray04"))
            .padding(.top, 20)
    }
    
    private var socialLoginSection: some View {
        HStack(spacing: 0) {
            
            Button(action: { print("네이버 클릭") }) {
                Image("naver")
                    .resizable()
                    .frame(width: 40, height: 40)
            }
           // .padding(.leading, 86)

            Spacer()
            
            Button(action: { print("카카오 클릭") }) {
                Image("kakao")
                    .resizable()
                    .frame(width: 40, height: 40)
            }
            
            Spacer()
            
            Button(action: { print("애플 클릭") }) {
                Image("apple")
                    .resizable()
                    .frame(width: 40, height: 40)
            }
           // .padding(.trailing, 86)

        }
        .padding(.horizontal, 86) // 양옆 86 패딩 한번에 (leading/trailing없이) 처리가능
        .padding(.top, 35)
    }
    
    private var umcPoster: some View {
        Image("umc")
        
            .resizable()
            .frame(maxWidth: .infinity)
            .frame(height: 103)
            .padding(.top,39)
            .padding(.horizontal, 16)

    }
    
    
}

#Preview {
    LoginView()
}
