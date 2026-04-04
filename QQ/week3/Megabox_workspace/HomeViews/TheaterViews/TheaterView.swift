import SwiftUI

struct TheaterView: View{
    @State private var viewModel = TheaterViewModel()
    @State private var selectedIndex = 0
    
    var body: some View{
        VStack(alignment: .leading, spacing: 14) {
            theaterTitleSection
            theaterLogoSection
            theaterCardTabView
        }
    }
    
    //MARK: -메가박스의 모든 특별관
    private var theaterTitleSection: some View{
        HStack{
            Text("메가박스의 모든 특별관")
                .font(.bold24)
                .foregroundStyle(Color.black)
            Spacer()
            Button(action: {
                
            }){
                Image(systemName: "chevron.right")
                    .foregroundStyle(Color.black)
                    .frame(width: 48, height: 48)
                    .glassEffect(.regular, in: Circle())
            }
        }
    }
    
    //MARK: -특별관 스크롤 로고
    private var theaterLogoSection: some View{
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 10){
                ForEach(viewModel.theaters.indices, id: \.self){index in
                    
                    let isSelected = selectedIndex == index
                    
                    Button(action: {
                        selectedIndex = index
                    }) {
                        Image(viewModel.theaters[index].theaterLogoImage)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 56, height: 56)
                            .foregroundStyle(Color.black)
                            .frame(width: 70, height: 70)
                            .glassEffect(.regular.tint(isSelected ? Color.clear : Color.gray02).interactive(), in: Circle())
                    }
                    .contentShape(Circle())
                }
            }
            
        }
    }
    
    //MARK: -특별관 카드
    private var theaterCardTabView: some View{
        TabView(selection: $selectedIndex){
            ForEach(viewModel.theaters.indices, id: \.self){ index in
                let theater = viewModel.theaters[index]
                ZStack(alignment: .topLeading){
                    Image(theater.theaterCardImage)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 408, height: 408)
                        .clipped()
                    VStack(alignment: .leading, spacing: 11){
                        Text(theater.theaterTitle)
                            .font(.bold28)
                            .foregroundStyle(Color.white)
                        Text(theater.theaterDescription)
                            .font(.medium18)
                            .foregroundStyle(Color.white)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 31)
                    .padding(.top, 43)
                }
                .tag(index)
                .frame(maxWidth: .infinity)
                .frame(height: 408)
                .clipShape(RoundedRectangle(cornerRadius: 36))
            }
        }
        .frame(height: 408)
        .tabViewStyle(.page(indexDisplayMode: .never))
    }
    
}
