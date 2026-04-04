import SwiftUI

struct MovieCardView: View{
    let movie: MovieCardModel
    
    var body: some View{
        NavigationLink(destination: MovieInfoView(movie: movie)){
            VStack(alignment: .leading){
                
                Image(movie.movieCardImage)
                    .resizable()
                    .frame(width: 148, height: 209)
                
                Button(action: {}){
                    Text("바로 예매")
                        .font(.medium16)
                        .foregroundStyle(Color.purple03)
                        .frame(width: 148, height: 36)
                        .overlay(
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(Color.purple03, lineWidth: 1)
                        )
                }
                .padding(.top, 11)
                
                Text(movie.movieCardName)
                    .font(.bold22)
                    .foregroundStyle(Color.black)
                    .frame(width: 148, alignment: .leading)
                    .padding(.top, 8)
                    
                Text("누적 관객수 \(movie.movieCardAudience)만")
                    .font(.medium18)
                    .foregroundStyle(Color.black)
                    .frame(width: 148, alignment: .leading)
                
            }
        }
    }
}
