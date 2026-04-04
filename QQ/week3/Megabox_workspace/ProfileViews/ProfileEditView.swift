import SwiftUI

struct ProfileEditView: View{
    
    @AppStorage("savedUserId") private var userId: String = ""
    @AppStorage("savedUserName") private var userName: String = ""
    @State private var viewModel = LoginViewModel()
    @Environment(\.dismiss) var dismiss
    
    var body: some View{
        VStack{
            
            profileEditNavigation
            
            profileEdit
                .padding(.top, 53)
            
            profileEditEnter
                .padding(.top, 26)
            
            Spacer()
            
        }
        .padding(.horizontal, 16)
        .navigationBarBackButtonHidden(true)
    }
    
    //MARK: -회원정보 관리
    private var profileEditNavigation: some View{
        HStack{

            Button(action:{
                dismiss()
            }, label:{
                Image(systemName: "arrow.left")
                    .foregroundStyle(Color.black)
            })
            
            Spacer()
            
            Text("회원정보 관리")
                .font(.medium16)
                .foregroundStyle(Color.black)
            
            Spacer()
            
            Image(systemName: "arrow.left")
                .foregroundStyle(Color.clear)
            
        }
        .frame(maxWidth: .infinity)
        .frame(height: 44)
    }
    
    //MARK: -기본정보
    private var profileEdit: some View{
        Text("기본정보")
            .font(.bold18)
            .foregroundStyle(Color.black)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    //MARK: -프로필 설정
    private var profileEditEnter: some View{
        VStack{
            VStack(alignment: .leading){
                Text("\(userId)")
                    .font(.medium18)
                    .foregroundStyle(Color.black)
                
                Divider()
                    .overlay(Color.gray02)
                
                HStack{
                    
                    TextField("이름을 입력하세요", text: $viewModel.loginModel.name)
                        .font(.medium18)
                        .foregroundStyle(Color.black)
                    
                    Button(action:{
                        userName = viewModel.loginModel.name
                        print("이름 변경됨")
                    }, label:{
                        Text("변경")
                            .font(.medium10)
                            .foregroundStyle(Color.gray03)
                            .frame(width: 38, height: 20)
                            .clipShape(RoundedRectangle(cornerRadius: 36))
                        
                    })
                    .overlay(RoundedRectangle(cornerRadius: 16) .stroke(Color.gray03, lineWidth: 1))
                }
                .padding(.top, 24)
                
                Divider()
                    .overlay(Color.gray02)
            }
        }
    }
    
}
    
#Preview{
    ProfileEditView()
}
