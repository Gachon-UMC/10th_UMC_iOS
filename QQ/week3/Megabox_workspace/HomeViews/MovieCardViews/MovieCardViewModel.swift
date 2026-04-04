import Foundation

@Observable
class MovieCardViewModel{
    var movies: [MovieCardModel]=[
        
        MovieCardModel(movieCardImage: "kingsWarden",
                       movieCardName: "왕과 사는 남자",
                       movieCardNameEng: "The King's Warden",
                       movieCardAudience: "1122"),
        
        MovieCardModel(movieCardImage: "project",
                       movieCardName: "프로젝트 헤일메리",
                       movieCardNameEng: "Project Hail Marry",
                       movieCardAudience: "1122"),
        
        MovieCardModel(movieCardImage: "hoppers",
                       movieCardName: "호퍼스",
                       movieCardNameEng: "Hoppers",
                       movieCardAudience: "1122"),
        
        MovieCardModel(movieCardImage: "humint",
                       movieCardName: "휴민트",
                       movieCardNameEng: "Humint",
                       movieCardAudience: "1122"),
        
        MovieCardModel(movieCardImage: "madDance",
                       movieCardName: "매드댄스 오피스",
                       movieCardNameEng: "Maddance Office",
                       movieCardAudience: "1122"),
        
        MovieCardModel(movieCardImage: "method",
                       movieCardName: "메소드 연기",
                       movieCardNameEng: "Method perform",
                       movieCardAudience: "1122"),
        
        MovieCardModel(movieCardImage: "years",
                       movieCardName: "28년후",
                       movieCardNameEng: "28years",
                       movieCardAudience: "1122")
        
    ]
}
