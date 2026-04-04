import Foundation

struct MovieInfoModel: Identifiable{
    let id: UUID = UUID()
    var movieCardImage: String
    var movieCardName: String
    var movieCardNameEng: String
}

