import SwiftUI

struct LoginEnterView: View{
    @AppStorage("isLoggedIn") private var isLoggedIn: Bool = false
    
    var body: some View{
        if isLoggedIn{
            MainTabView()
        }
        else {
            LoginView()
        }
    }
}
