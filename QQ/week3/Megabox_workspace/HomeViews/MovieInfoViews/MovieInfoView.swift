import SwiftUI

struct MovieInfoView: View{
    @Environment(\.dismiss) var dismiss
    let movie: MovieCardModel
    
    @State private var selectedSegment: SegmentType = .detail
    
    enum SegmentType{
        case detail
        case review
    }
    
    var body: some View {
        VStack(spacing:0) {
                
            movieInfoNavigation
                .padding(.horizontal, 16)
                
            ScrollView{
                VStack(alignment: .leading, spacing: 0){
                    moviePosterSectioin
                    movieSegmentSection
                        .padding(.top, 9)
                        .padding(.bottom, 14)
                        
                    if selectedSegment == .detail{
                        movieDetailSection
                    } else {
                        movieReviewSection
                        }
                }
            }
            .padding(.top, 9)
        }
        .navigationBarBackButtonHidden(true)
    }
    
    //MARK: -네비게이션바
    private var movieInfoNavigation: some View{
        HStack{

            Button(action: {
                dismiss()
            }) {
                Image(systemName: "chevron.left")
                    .foregroundStyle(Color.black)
                    .frame(width: 44, height: 44)
                    .glassEffect(.regular, in: Circle())
                }
                .buttonStyle(.plain)
            
            Spacer()
            
            Text(movie.movieCardName)
                .font(.semiBold16)
                .foregroundStyle(Color.black)
            
            Spacer()
            
            Color.clear
                .frame(width: 44, height: 44)
            
        }
        .frame(height: 44)
    }
    
    //MARK: -영화 포스터
    private var moviePosterSectioin: some View{
        VStack(alignment: .center, spacing: 12){
            
            Image(.movieInfo)
                .frame(maxWidth: .infinity)
                .frame(height: 248)
            
            Text(movie.movieCardName)
                .font(.bold24)
                .foregroundStyle(Color.black)
                .padding(.top, 9)
            
            Text(movie.movieCardNameEng)
                .font(.semiBold14)
                .foregroundStyle(Color.gray03)
            
            Text("\"나는 이제 어디로 갑니까…\"\n계유정난이 조선을 뒤흔들고 어린 왕 이홍위는 왕위에서 쫓겨나 유배길에 오른다.\n\n\"무슨 수를 쓰더라도 그 대감을 우리 광천골로 오게 해야지\"\n한편, 강원도 영월 산골 마을 광천골의 촌장 엄흥도는 먹고 살기 힘든 마을 사람들을 위해 청령포를 유배지로 만들기 위해 노력한다.\n\n그러나 촌장이 부푼 꿈으로 맞이한 이는 왕위에서 쫓겨난 이홍위였다. 유배지를 지키는 보수주인으로서 그의 모든 일상을 감시해야만 하는 촌장은 삶의 의지를 잃어버린 이홍위가 점점 신경 쓰이는데…\n\n1457년 청령포, 역사가 지우려 했던 이야기.")
                .font(.regular15)
                .foregroundStyle(Color.gray03)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 9)
                .padding(.horizontal, 16)
            Spacer()
            
        }
    }
    
    //MARK: -상세 정보
    private var movieSegmentSection: some View {
        VStack(spacing: 0) {
            HStack(spacing: 0) {
                Button(action: { selectedSegment = .detail }) {
                    Text("상세 정보")
                        .font(.bold18)
                        .foregroundStyle(selectedSegment == .detail ? Color.black : Color.gray02)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 12)
                        .overlay(
                            Rectangle()
                                .frame(height: 2)
                                .foregroundStyle(selectedSegment == .detail ? Color.black : Color.clear),
                            alignment: .bottom
                        )
                }
                
                Button(action: { selectedSegment = .review }) {
                    Text("실관람평")
                        .font(.bold18)
                        .foregroundStyle(selectedSegment == .review ? Color.black : Color.gray02)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 12)
                        .overlay(
                            Rectangle()
                                .frame(height: 2)
                                .foregroundStyle(selectedSegment == .review ? Color.black : Color.clear),
                            alignment: .bottom
                        )
                }
            }
            Divider()
        }
    }

    //MARK: -상세정보.상세정보
    private var movieDetailSection: some View {
        VStack(alignment: .leading, spacing: 15){
            HStack(spacing: 8){
                Image(movie.movieCardImage)
                    .resizable()
                    .frame(width: 50, height: 70)
                    .clipShape(RoundedRectangle(cornerRadius: 6))
                
                VStack(alignment: .leading, spacing: 6) {
                    Text("12세 이상 관람가")
                        .font(.semiBold14)
                        .foregroundStyle(Color.black)
                    Text("2026.02.04. 개봉 · 117분")
                        .font(.semiBold14)
                        .foregroundStyle(Color.black)
                }
            }
            .padding(.top, 15)
            Divider()
            
            VStack(alignment: .leading, spacing: 4) {
                makeInfoRow(label: "장르", value: "드라마, 사극")
                makeInfoRow(label: "타입", value: "2D, 2D ATMOS, 디지털영문자막")
                makeInfoRow(label: "감독", value: "장항준")
                makeInfoRow(label: "출연", value: "유해진, 박지훈, 유지태, 전미도, 김민, 박지환, 이준혁, 안재홍")
            }
        }
        .padding(.horizontal, 16)
    }

       private func makeInfoRow(label: String, value: String) -> some View {
           HStack(alignment: .top, spacing: 11) {
               Text(label)
                   .font(.semiBold13)
                   .foregroundStyle(Color.gray04)
                   .frame(width: 40, alignment: .leading)
               Text(value)
                   .font(.semiBold13)
                   .foregroundStyle(Color.black)
                   .frame(maxWidth: .infinity, alignment: .leading)
           }
       }
    
    //MARK: -상세정보.실관람평
    private var movieReviewSection: some View {
        VStack {
            Text("실관람평이 없습니다.")
                .font(.medium14)
                .foregroundStyle(Color.gray06)
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 16)
    }

}

#Preview {
    MovieInfoView(movie: .init(
        movieCardImage: "kingsWarden", movieCardName: "왕과 사는 남자", movieCardNameEng: "The King's Warden", movieCardAudience: "1122"
    ))
}
