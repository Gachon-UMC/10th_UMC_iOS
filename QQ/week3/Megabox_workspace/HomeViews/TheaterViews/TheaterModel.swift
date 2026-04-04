import Foundation

struct TheaterModel: Identifiable{
    let id: UUID = UUID()
    var theaterLogoImage: String
    var theaterCardImage: String
    var theaterTitle: String
    var theaterDescription: String
}
