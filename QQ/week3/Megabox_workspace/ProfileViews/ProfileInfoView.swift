import SwiftUI

struct ProfileInfoView: View{
    
    @AppStorage("savedUserName") private var userName: String = ""
    
    var body: some View{
        NavigationStack{
            VStack{
                
                profileHeader
                    .padding(.top, 59)
                
                clubMembership
                    .padding(.top, 15)
                
                stateInfo
                    .padding(.top, 33)
                
                booking
                    .padding(.top, 33)

                Spacer()
                
            }
            .padding(.horizontal, 16)
        }
    }
    
    //MARK: -이름
    private var profileHeader: some View{
        VStack(alignment: .leading){
                userInfoSection
                
                membershipPoint
            }
        }
        
        private var userInfoSection: some View{
            HStack{
                Text("\(userName)")
                    .font(.bold24)
                    .foregroundStyle(Color.black)
                
                Text("WELCOME")
                    .font(.medium14)
                    .foregroundStyle(Color.white)
                    .frame(width: 81, height: 25)
                    .background(Color.mint00)
                    .clipShape(RoundedRectangle(cornerRadius: 6))
                
                Spacer()
                
                NavigationLink(destination: ProfileEditView()){
                    Text("회원정보")
                        .font(.semiBold14)
                        .foregroundStyle(Color.white)
                        .frame(width: 72, height: 28)
                        .background(Color.gray07)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                }
            }
        }
    
    //MARK: -멤버십 포인트
    private var membershipPoint: some View{
        HStack{
            Text("멤버십 포인트")
                .font(.semiBold14)
                .foregroundStyle(Color.gray04)
            
            Text("포인트 값 입력")
                .font(.medium14)
                .foregroundStyle(Color.black)
        }
    }
    
    //MARK: -클럽 멤버십
    private var clubMembership: some View{
            Button(action: {
                print("버튼 클릭함")
            }, label:{
                Text("클럽 멤버십 >")
                    .font(.semiBold16)
                    .foregroundStyle(Color.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .frame(height: 46)
                    .padding(.leading, 8)
                    .background(
                                LinearGradient(
                                    colors: [
                                        Color.purpleBlue00,  // 보라색
                                        Color.purpleBlue01,  // 파란색
                                        Color.purpleBlue02  // 청록색
                                    ],
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }
            )
        }
    
    //MARK: -쿠폰
    private var stateInfo: some View{
            HStack{
                
                VStack{
                    Text("쿠폰")
                        .font(.semiBold16)
                        .foregroundStyle(Color.gray02)
                    Text("2")
                        .font(.semiBold18)
                        .foregroundStyle(Color.black)
                }
                .frame(maxWidth: .infinity)
                
                Divider()
                    .overlay(Color.gray02)
                    .frame(height: 31)
                
                VStack{
                    Text("스토어 교환권")
                        .font(.semiBold16)
                        .foregroundStyle(Color.gray02)
                    Text("0")
                        .font(.semiBold18)
                        .foregroundStyle(Color.black)
                }
                .frame(maxWidth: .infinity)
                
                Divider()
                    .overlay(Color.gray02)
                    .frame(height: 31)
                
                VStack{
                    Text("모바일 티켓")
                        .font(.semiBold16)
                        .foregroundStyle(Color.gray02)
                    Text("0")
                        .font(.semiBold18)
                        .foregroundStyle(Color.black)
                    
                }
                .frame(maxWidth: .infinity)
            }
            .frame(height: 76)
            .overlay(RoundedRectangle(cornerRadius: 8) .stroke(Color.gray02, lineWidth: 1))
        }

    //MARK: -영화별예매
    private var booking: some View{
            HStack{
                
                VStack{
                    Image(.iconReel)
                    Text("영화별예매")
                        .font(.medium16)
                        .foregroundStyle(Color.black)
                        .padding(.top, 12)
                }
                
                Spacer()
                
                VStack{
                    Image(.iconPin)
                    Text("극장별예매")
                        .font(.medium16)
                        .foregroundStyle(Color.black)
                        .padding(.top, 12)
                }
                
                Spacer()
                
                VStack{
                    Image(.iconSofa)
                    Text("특별관예매")
                        .font(.medium16)
                        .foregroundStyle(Color.black)
                        .padding(.top, 12)
                }
                
                Spacer()
                
                VStack{
                    Image(.iconPopcorn)
                    Text("모바일오더")
                        .font(.medium16)
                        .foregroundStyle(Color.black)
                        .padding(.top, 12)
                    
                }
            }
        }
}

#Preview{
    ProfileInfoView()
}

