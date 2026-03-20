import SwiftUI

//블럭
struct LoginView: View{
    var body: some View{
        VStack{
            loginNavigation
            
            Spacer()
            
            loginEnter
            
            loginButton
                .padding(.top, 74)
            
            signUpButton
                .padding(.top, 17)
            
            socialIcons
                .padding(.top, 75)
                .padding(.horizontal, 86)
            
            umcFoster
                .padding(.top, 39)
            
            Spacer()
        }
    }

    
    //로그인네비게이션
    private var loginNavigation: some View {
        HStack(alignment: .center){
            Text("로그인")
                .font(.semiBold24)
                .foregroundStyle(Color.black)
        }
    }
    
    //로그인엔터
    private var loginEnter: some View {
        VStack(spacing: 63){
            VStack(alignment: .leading){
                Text("아이디")
                    .font(.semiBold22) //폰트 찾지 못함
                    .foregroundStyle(Color.gray03)
                Divider()
                    .overlay(Color.gray02)
            }
            VStack(alignment: .leading){
                Text("비밀번호")
                    .font(.semiBold22) //폰트 찾지 못함
                    .foregroundStyle(Color.gray03)
                Divider()
                    .overlay(Color.gray02)
            }
        }
        .padding(.horizontal, 16)
    }
    
    //로그인 버튼
    private var loginButton: some View{
        Button(action: {
            print("로그인 버튼 클릭")
        }, label: {
            Text("로그인")
                .font(.Bold18)
                .foregroundStyle(Color.white)
                .frame(width: 408)
                .frame(height: 54)
                .background(Color("purple03"))
                .cornerRadius(10)
        })
    }
    
    //회원가입
    private var signUpButton: some View{
        Text("회원가입")
            .font(.Medium13)
            .foregroundStyle(Color.gray04)
            .frame(width: 45, height: 16) //글자짤림으로 인해 너비 수정
    }
            
    //소셜아이콘
    private var socialIcons: some View{
        HStack{
            Image(.naver)
            Spacer()
            Image(.kakao)
            Spacer()
            Image(.apple)
        }
    }
    
    //umc포스터
    private var umcFoster: some View{
        VStack {
            Image(.umc)
                .resizable() //이미지 크기 조절 가능
                .aspectRatio(contentMode: .fill) //.fill비율 유지하면서 꽉 채움 .fit 비율 유지하면서 frame안에 맞춤
                .frame(width: 408, height: 103)
                .clipped() //.fill로 넘친 이미지 잘라냄
        }
    }
    
}

#Preview {
    LoginView()
}

