import SwiftUI

struct SplashView: View {
    var body: some View {

        ZStack {

            Color.white
                .ignoresSafeArea()
            Image("meboxLogo 1")
                .resizable()
                .frame(width: 249, height: 84)
        }
    }
}

#Preview {
    SplashView()
}
