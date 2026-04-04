import SwiftUI

struct LoginView: View{
    
    @AppStorage("savedUserId") private var userId: String = ""
    @AppStorage("savedUserPwd") private var userPwd: String = ""
    @AppStorage("isLoggedIn") private var isLoggedIn: Bool = false
    
    @State private var viewModel = LoginViewModel()
    
    var body: some View{
        VStack{
    
            loginNavigation
            
            Spacer()
            
            loginEnter
            
            loginButton
                .padding(.top, 75)
            
            signUpButton
                .padding(.top, 17)
            
            socialIcons
                .padding(.top, 35)
                .padding(.horizontal, 71)
            
            umcFoster
                .padding(.top, 39)
                .padding(.bottom, 220)

        }
        .padding(.horizontal, 16)
    }

    
    //MARK: -로그인
    private var loginNavigation: some View {
        HStack(alignment: .center){
            Text("로그인")
                .font(.semiBold24)
                .foregroundStyle(Color.black)
        }
    }
    
    //MARK: -아이디
    private var loginEnter: some View {
        VStack{
            VStack(alignment: .leading){
                TextField("아이디", text: $viewModel.loginModel.id)
                    .font(.medium18)
                    .foregroundStyle(Color.gray03)
                Divider()
                    .overlay(Color.gray02)
            }
            
            VStack(alignment: .leading){
                SecureField("비밀번호", text: $viewModel.loginModel.pwd)
                    .font(.medium18)
                    .foregroundStyle(Color.gray03)
                Divider()
                    .overlay(Color.gray02)
            }
            .padding(.top, 40)
        }
    }
    
    //MARK: -로그인 버튼
    private var loginButton: some View{
        Button(action: {
            userId = viewModel.loginModel.id
            userPwd = viewModel.loginModel.pwd
            
            print("로그인 버튼 클릭")
            
            isLoggedIn = true
        }, label: {
            Text("로그인")
                .font(.bold18)
                .foregroundStyle(Color.white)
                .frame(maxWidth: .infinity)
                .frame(height: 54)
                .background(Color.purple03)
                .clipShape(RoundedRectangle(cornerRadius: 36))
        })
    }
    
    //MARK: -회원가입
    private var signUpButton: some View{
        Text("회원가입")
            .font(.medium13)
            .foregroundStyle(Color.gray04)
            .frame(maxWidth: .infinity)
    }
            
    //MARK: -네이버
    private var socialIcons: some View{
        HStack{
            
            Image(.naver)
            
            Spacer()
            
            Image(.kakao)
            
            Spacer()
            
            Image(.apple)
        }
    }
    
    //MARK: -umc포스터
    private var umcFoster: some View{
        VStack {
            Image(.umc)
                .frame(maxWidth: .infinity)
                .frame(height: 103)
        }
    }
    
}

#Preview {
    LoginView()
}

