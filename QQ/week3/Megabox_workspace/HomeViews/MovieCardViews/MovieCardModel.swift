import Foundation

struct MovieCardModel: Identifiable{
    let id: UUID = UUID()
    var movieCardImage: String
    var movieCardName: String
    var movieCardNameEng: String
    var movieCardAudience: String
}
