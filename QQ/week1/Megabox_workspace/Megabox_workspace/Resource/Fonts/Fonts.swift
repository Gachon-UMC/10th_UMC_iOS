import Foundation
import SwiftUI

extension Font {
    enum Pretend {
        case extraBold
        case bold
        case semibold
        case medium
        case regular
        case light
        
        var value: String {
            switch self {
            case .extraBold:
                return "Pretendard-ExtraBold"
            case .bold:
                return "Pretendard-Bold"
            case .semibold:
                return "Pretendard-SemiBold"
            case .medium:
                return "Pretendard-Medium"
            case .regular:
                return "Pretendard-Regular"
            case .light:
                return "Pretendard-Light"
            }
        }
    }
    
    static func pretend(type: Pretend, size: CGFloat) -> Font {
        return .custom(type.value, size: size)
    }
    
    static var extraBold24: Font{
        return .pretend(type: .extraBold, size: 24)
    }
    
    
    static var Bold18: Font{
        return .pretend(type: .bold, size: 18)
    }
    
    static var Bold22: Font{
        return .pretend(type: .bold, size: 22)
    }
    
    
    static var semiBold12: Font{
        return .pretend(type: .semibold, size: 12)
    }
    
    static var semiBold13: Font{
        return .pretend(type: .semibold, size: 13)
    }
    
    static var semiBold14: Font{
        return .pretend(type: .semibold, size: 14)
    }
    
    static var semiBold16: Font{
        return .pretend(type: .semibold, size: 16)
    }
    
    static var semiBold22: Font{
        return .pretend(type: .semibold, size: 18)
    }
    
    static var semiBold24: Font{
        return .pretend(type: .semibold, size: 24)
    }
    
    static var semiBold38: Font{
        return .pretend(type: .semibold, size: 38)
    }
    
    
    static var Regular9: Font{
        return .pretend(type: .regular, size: 9)
    }
    
    static var Regular12: Font{
        return .pretend(type: .regular, size: 12)
    }
    
    static var Regular13: Font{
        return .pretend(type: .regular, size: 13)
    }
    
    static var Regular18: Font{
        return .pretend(type: .regular, size: 18)
    }
    
    static var Regular20: Font{
        return .pretend(type: .regular, size: 20)
    }
    
    
    static var Medium8: Font{
        return .pretend(type: .medium, size: 8)
    }
    
    static var Medium10: Font{
        return .pretend(type: .medium, size:10)
    }
    
    static var Medium13: Font{
        return .pretend(type: .medium, size:13)
    }
    
    static var Medium14: Font{
        return .pretend(type: .medium, size: 14)
    }
    
    static var Medium16: Font{
        return .pretend(type: .medium, size: 16)
    }
    
    static var Medium18: Font{
        return .pretend(type: .medium, size: 18)
    }
    
    
    static var Light: Font{
        return .pretend(type: .light, size: 14)
    }
    /* 여기에 더 추가해주세요 */
    
}
