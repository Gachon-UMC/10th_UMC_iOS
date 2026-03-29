//
//  MemberManagementView.swift
//  Megabox
//
//  Created by 최윤석 on 3/29/26.
//

import SwiftUI

struct MemberManagementView: View {
    @AppStorage("userId") private var storedId: String = ""
    @AppStorage("userName") private var storedName: String = "이예지"
    
    @State private var inputName: String = ""
    
    var body: some View {
        VStack(spacing: 0) {
            navigationBar
            
            VStack(alignment: .leading, spacing: 0) {
                basicInfoTitle
                
                userInfoSection
            }
            .padding(.horizontal, 16)
            
            Spacer()
        }
        .background(Color.white.ignoresSafeArea())
        .onAppear {
            if storedId.isEmpty {
                storedId = "yejilee0406"}
            inputName = storedName
            
        }
    }
    
    // MARK: - 1. 상단 네비게이션 바
    private var navigationBar: some View {
        HStack {
            Button(action: { print("뒤로가기 클릭") }) {
                Image(systemName: "arrow.left")
                    .font(.system(size: 17))
                    .foregroundStyle(.black)
            }
            
            Spacer()
            
            Text("회원정보 관리")
                .font(.medium16)
            
            Spacer()
            
        }
        .padding(.horizontal, 16)
        .frame(height: 56)
    }
    
    // MARK: - 2. 기본 정보 텍스트
    private var basicInfoTitle: some View {
        Text("기본정보")
            .font(.bold18)
            .foregroundColor(.black)
            .padding(.top, 30)
            .padding(.bottom, 26)
    }
    
    
    // MARK: - 3. 회원 아이디 및 이름 뷰
    private var userInfoSection: some View {
        VStack(alignment: .leading) {

            VStack(alignment: .leading, spacing: 3) {
                Text(storedId.isEmpty ? "아이디 정보 없음" : storedId)
                    .font(.medium18)
                    .foregroundStyle(.black)
                Divider()
            }
            .padding(.bottom, 24)

            VStack(spacing: 3) {
                HStack {
                    TextField("이름을 입력하세요", text: $inputName)
                        .font(.medium18)
                    
                    Spacer()
                    
                    Button(action: {
                        storedName = inputName
                        print("이름 변경 완료: \(storedName)")
                    }) {
                        Text("변경")
                            .font(.medium10)
                            .foregroundStyle(.gray03)
                            .padding(.horizontal, 10)
                            .padding(.vertical, 5)
                            .overlay(
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(Color.gray03, lineWidth: 1)
                            )
                    }
                }
                
                Divider()
            }
        }
    }
    
}
#Preview {
    MemberManagementView()
}
