//
//  LoginView.swift
//  Megabox
//
//  Created by 최윤석 on 3/22/26.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack(spacing: 0) {
            navigationBar
            
            ScrollView {
                VStack(spacing: 0) {
                    
                    VStack(spacing: 30) {
                        
                        VStack(alignment: .leading, spacing: 12) {
                            Text("아이디")
                                .font(.medium16)
                                .foregroundColor(.gray)
                            Divider()
                        }
                        
                        VStack(alignment: .leading, spacing: 12) {
                            Text("비밀번호")
                                .font(.medium16)
                                .foregroundColor(.gray)
                            Divider()
                        }
                    }
                    .padding(.top, 50)
                    .padding(.horizontal, 16)

                    loginButton
                    signUpButton
                    socialLoginSection
                    umcPoster
                }
            }
        }
        .background(Color.white.ignoresSafeArea())
    }

// 하위뷰
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

    private var loginButton: some View {
        Button(action: {print("로그인 클릭")}) {
            Text("로그인")
                .font(.bold18)
                .foregroundColor(.white)
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
            .foregroundColor(Color("gray04"))
            .padding(.top, 20)
    }

    private var socialLoginSection: some View {
        HStack(spacing: 0) {
            
            Spacer().frame(width: 86)
            
            Button(action: { print("네이버 클릭") }) {
                Image("naver")
                    .resizable()
                    .frame(width: 40, height: 40)
            }
            
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
                    .frame(width: 44, height: 44)
            }
                        Spacer().frame(width: 86)
        }
        .padding(.top, 35)
    }
    
    private var umcPoster: some View {
        Image("umc")
            .resizable()
            .scaledToFit()
            .frame(width: 408, height: 103)
            .padding(.top, 39)
    }
}

#Preview {
    LoginView()
}
