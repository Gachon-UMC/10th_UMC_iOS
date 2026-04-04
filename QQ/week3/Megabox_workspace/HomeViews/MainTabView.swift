import SwiftUI

struct MainTabView: View{
    @State private var selectedTab: TabSelection = .home
    
    enum TabSelection: Hashable{
        case home
        case booking
        case order
        case myPage
    }
    
    var body: some View{
        TabView(selection: $selectedTab){
            Tab("홈", systemImage: "house", value: .home){
                HomeView()
            }
            
            Tab("바로 예매", systemImage: "play.laptopcomputer", value: .booking){
                HomeView()
            }
            
            Tab("모바일 오더", systemImage: "popcorn", value: .order){
                HomeView()
            }
            
            Tab("마이 페이지", systemImage: "person", value: .myPage){
                ProfileInfoView()
            }
        }
    }
}

#Preview{
    MainTabView()
}
