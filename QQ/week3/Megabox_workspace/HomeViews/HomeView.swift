import SwiftUI

struct HomeView: View {
    @State private var viewModel = MovieCardViewModel()
    @State private var selectedTab: String = "홈"
    
    @State private var selectedChart: ChartType = .nowPlaying

    enum ChartType {
        case nowPlaying
        case comingSoon
    }
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    if selectedTab == "홈"{
                        
                        movieChartSection
                            .padding(.horizontal, 16)
                            .padding(.top, 9)
                        
                        switch selectedChart {
                        case .nowPlaying:
                            movieCardScrollSection
                        case .comingSoon:
                            comingSoonSection
                        }

                        TheaterView()
                            .padding(.horizontal, 16)
                            .padding(.top, 25)
                        
                    }
                }
            }
            
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(.meboxLogoHome)
                        .padding(.leading, -8)
                }
                .sharedBackgroundVisibility(.hidden)
            }
            
            .safeAreaBar(edge: .top){
                HStack(spacing: 0) {
                    ForEach(["홈", "이벤트", "스토어", "선호극장"], id: \.self) { tab in
                        Button {
                            selectedTab = tab
                        } label: {
                            Text(tab)
                                .font(.semiBold24)
                                .foregroundStyle(selectedTab == tab ? Color.black : Color.gray)
                        }
                        if tab != "선호극장" {
                            Spacer()
                        }
                    }
                    Spacer().frame(width: 104)
                }
                .padding(.horizontal, 16)
                .padding(.top, 8)
            }
        }
    }
    
    //MARK: -무비차트
    private var movieChartSection: some View {
        HStack(spacing: 23) {
            Button(action: { selectedChart = .nowPlaying }) {
                Text("무비차트")
                    .font(.semiBold16)
                    .foregroundStyle(selectedChart == .nowPlaying ? Color.white : Color.gray04)
                    .frame(width: 84, height: 38)
            }
            .glassEffect(.regular.tint(selectedChart == .nowPlaying ? Color.gray08 : Color.gray02))
            
            Button(action: { selectedChart = .comingSoon }) {
                Text("상영예정")
                    .font(.semiBold16)
                    .foregroundStyle(selectedChart == .comingSoon ? Color.white : Color.gray04)
                    .frame(width: 84, height: 38)
            }
            .glassEffect(.regular.tint(selectedChart == .comingSoon ? Color.gray08 : Color.gray02))
            Spacer()
        }
    }
    
    //MARK: -무비차트.무비카드
    private var movieCardScrollSection: some View{
        ScrollView(.horizontal, showsIndicators: false){
            LazyHStack(spacing: 24){
                ForEach(viewModel.movies){movie in
                    MovieCardView(movie: movie)
                }
            }
            .padding(.leading, 16)
            .padding(.top, 25)
        }
    }
    
    //MARK: -상영예정.무비카드
    private var comingSoonSection: some View {
        Text("상영예정 목록")
    }

}

#Preview {
    HomeView()
}
