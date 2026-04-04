import Foundation

@Observable
class TheaterViewModel{
    var theaters: [TheaterModel] = [
        
        .init(theaterLogoImage: "Dolby Cinema 로고",
              theaterCardImage: "Dolby Cinema",
              theaterTitle: "DOLBY CINEMA",
              theaterDescription: "완벽한 영화 관람을 완성하는\n하이엔드 시네마"),
        
        .init(theaterLogoImage: "Dolby Vision+Atmos 로고",
              theaterCardImage: "Dolby Vision+Atmos",
              theaterTitle: "DOLBY VISION+ATMOS",
              theaterDescription: "돌비 시네마의 선명한 영상과 압도적인 사운드,\n리얼리티너를 다른 프리미엄 클래스"),
        
        .init(theaterLogoImage: "MX4D 로고",
              theaterCardImage: "MX4D",
              theaterTitle: "MEGA | MX4D",
              theaterDescription: "다이나믹 색채도가 선사하는\n새로운 영화 체험"),
        
        .init(theaterLogoImage: "Dolby Atmos 로고",
              theaterCardImage: "Dolby Atmos",
              theaterTitle: "MEGA | DOLBY ATMOS",
              theaterDescription: "차원이 다른 공간감과\n다채로운 사운드"),
        
        .init(theaterLogoImage: "LED 로고",
              theaterCardImage: "LED",
              theaterTitle: "MEGA | LED",
              theaterDescription: "무한대의 명암비,\n완벽한 입체 재현"),
        
        .init(theaterLogoImage: "Boutique Private 로고",
              theaterCardImage: "Boutique Private",
              theaterTitle: "BOUTIQUE PRIVATE by MEGA",
              theaterDescription: "오직 나와 소중한 사람들을 위한\n프라이빗한 극장 경험"),
        
        .init(theaterLogoImage: "Boutique Suite 로고",
              theaterCardImage: "Boutique Suite",
              theaterTitle: "BOUTIQUE SUITE by MEGA",
              theaterDescription: "완벽 패키지가 더해진\n특서러운 공간 경험"),
        
        .init(theaterLogoImage: "Boutique 로고",
              theaterCardImage: "Boutique",
              theaterTitle: "BOUTIQUE by MEGA",
              theaterDescription: "섬세하게 디자인된 감각적인\n극장 경험"),
        
        .init(theaterLogoImage: "Le Recliner 로고",
              theaterCardImage: "Le Recliner",
              theaterTitle: "LE RECLINER by MEGA",
              theaterDescription: "일등칸 리클라이너 시스템이 구현하는\n극강의 편안함"),
        
        .init(theaterLogoImage: "Comfort 로고",
              theaterCardImage: "Comfort",
              theaterTitle: "COMFORT by MEGA",
              theaterDescription: "업포트 체어로 누리는\n더 간편한 영화 경험"),
        
    ]
}
