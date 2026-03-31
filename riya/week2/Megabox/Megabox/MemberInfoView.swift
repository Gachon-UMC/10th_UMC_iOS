//
//  MemberInfoView.swift
//  Megabox
//
//  Created by 최윤석 on 3/29/26.
//

import SwiftUI

struct MemberInfoView: View {
    @AppStorage("userId") private var userId: String = ""
    @AppStorage("userName") private var userName: String = ""
    
    var body: some View {
        VStack(spacing: 24) {
            profileHeader
            
            clubMembershipButton
            
            statusInfoView
            
            reservationView
            
            Spacer()
        }
        .padding(.top, 20)
        .background(Color.white.ignoresSafeArea())
    }

    // MARK: - 1. 프로필 헤더 (HStack)
    private var profileHeader: some View {
        HStack {
            VStack(alignment: .leading) {
                HStack(spacing: 5) {
                    Text("\(userName)님")
                        .font(.bold24)
                    
                    Text("WELCOME")
                        .font(.medium14)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 4)
                        .background(Color(red: 0.28, green: 0.8, blue: 0.82))
                        .foregroundStyle(.white)
                        .cornerRadius(6)
                    
                    Spacer()
                    
                    Button(action: { print("회원정보 클릭") }) {
                        Text("회원정보")
                            .font(.semiBold14)
                            .padding(.horizontal, 12)
                            .padding(.vertical, 4)
                            .background(.gray07)
                            .foregroundStyle(.white)
                            .cornerRadius(16)
                    }
                }
                
                HStack(spacing: 4) {
                    Text("멤버십 포인트")
                        .font(.semiBold14)
                        .foregroundStyle(.gray04)
                    Text("포인트 값 입력")
                        .font(.medium14)
                }
            }
        }
        .padding(.horizontal, 16)
    }

    // MARK: - 2. 클럽 멤버십 버튼 (LinearGradient 사용)
    private var clubMembershipButton: some View {
        Button(action: { print("클럽 멤버십 클릭") }) {
            HStack(spacing: 3) {
                Text("클럽 멤버십")
                    .font(.semiBold16)
                
                Image(systemName: "chevron.right")
                    .font(.system(size: 16))
                
                Spacer()
            }
            .foregroundStyle(.white)
            .padding(.leading, 8)
            .padding(.vertical, 12)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(
                // 피그마 수치값 그대로 적용
                LinearGradient(
                    stops: [
                        Gradient.Stop(color: Color(red: 0.67, green: 0.55, blue: 1), location: 0.00),
                        Gradient.Stop(color: Color(red: 0.56, green: 0.68, blue: 0.95), location: 0.53),
                        Gradient.Stop(color: Color(red: 0.36, green: 0.8, blue: 0.93), location: 1.00),
                    ],
                    startPoint: UnitPoint(x: 0, y: 0.5),
                    endPoint: UnitPoint(x: 1, y: 0.5)
                )
            )
            .cornerRadius(8)
        }
        .padding(.horizontal, 16)
    }

    // MARK: - 3. 상태정보 뷰
    private var statusInfoView: some View {
        HStack(spacing: 43){
            statusItem(title: "쿠폰", count: "2")
            
            //divider 역할
            Rectangle()
            .foregroundColor(.clear)
            .frame(width: 1, height: 31)
            .background(Color.gray02)

            statusItem(title: "스토어 교환권", count: "0")

            //divider 역할
            Rectangle()
            .foregroundColor(.clear)
            .frame(width: 1, height: 31)
            .background(Color.gray02)
            
            statusItem(title: "모바일 티켓", count: "0")
        }
        .padding(.vertical, 12)
        .padding(.horizontal, 24)
        .frame(maxWidth: .infinity, alignment: .leading)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray02, lineWidth: 1)
        )
        .padding(.horizontal, 16)
    }

    private func statusItem(title: String, count: String) -> some View {
        VStack(spacing: 12) {
            Text(title)
                .font(.semiBold12)
                .foregroundStyle(.gray02)
            Text(count)
                .font(.semiBold18)
        }
    }

    // MARK: - 4. 예매 뷰
    private var reservationView: some View {
        HStack{
            reservationItem(imageName: "film-real1", title: "영화별예매")
            Spacer()
            reservationItem(imageName: "free-icon-pin-map", title: "극장별예매")
            Spacer()
            reservationItem(imageName: "free-icon-sofa", title: "특별관예매")
            Spacer()
            reservationItem(imageName: "free-icon-cinema", title: "모바일오더")
        }
        .padding(.horizontal, 16)
        .padding(.top, 33)
    }
    
    private func reservationItem(imageName: String, title: String) -> some View {
        VStack(spacing: 12) {
            Image(imageName)
                .resizable()
                .frame(width: 36, height: 36)
            
            Text(title)
                .font(.medium16)
        }
    }
}

#Preview {
    MemberInfoView()
}
