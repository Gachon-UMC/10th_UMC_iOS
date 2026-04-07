//
//  Fonts.swift
//  Megabox
//
//  Created by 최윤석 on 3/24/26.
//
import SwiftUI

extension Font {
    // 1. 폰트 타입 정의 (한 번만!)
    enum Pretend {
        case extraBold, bold, semibold, medium, regular, light
        
        var value: String {
            switch self {
            case .extraBold: return "Pretendard-ExtraBold"
            case .bold: return "Pretendard-Bold"
            case .semibold: return "Pretendard-SemiBold"
            case .medium: return "Pretendard-Medium"
            case .regular: return "Pretendard-Regular"
            case .light: return "Pretendard-Light"
            }
        }
    }
    
    // 2. 공용 생성 함수 (한 번만!)
    static func pretend(type: Pretend, size: CGFloat) -> Font {
        return .custom(type.value, size: size)
    }
    
    // 3. 폰트 스타일 리스트 (여기서부터 중복 없이 쭉!)
    static var extraBold24: Font { .pretend(type: .extraBold, size: 24) }

    static var bold18: Font { .pretend(type: .bold, size: 18) }
    static var bold22: Font { .pretend(type: .bold, size: 22) }
    static var bold24: Font { .pretend(type: .bold, size: 24) }
    static var bold28: Font { .pretend(type: .bold, size: 28) }

    static var semiBold38: Font { .pretend(type: .semibold, size: 38) }
    static var semiBold24: Font { .pretend(type: .semibold, size: 24) }
    static var semiBold18: Font { .pretend(type: .semibold, size: 18) }
    static var semiBold16: Font { .pretend(type: .semibold, size: 16) }
    static var semiBold14: Font { .pretend(type: .semibold, size: 14) }
    static var semiBold13: Font { .pretend(type: .semibold, size: 13) }
    static var semiBold12: Font { .pretend(type: .semibold, size: 12) }

    static var regular18: Font { .pretend(type: .regular, size: 18) }
    static var regular15: Font { .pretend(type: .regular, size: 15) }
    static var regular13: Font { .pretend(type: .regular, size: 13) }
    static var regular12: Font { .pretend(type: .regular, size: 12) }
    static var regular9: Font { .pretend(type: .regular, size: 9) }

    static var medium18: Font { .pretend(type: .medium, size: 18) }
    static var medium16: Font { .pretend(type: .medium, size: 16) }
    static var medium14: Font { .pretend(type: .medium, size: 14) }
    static var medium13: Font { .pretend(type: .medium, size: 13) }
    static var medium10: Font { .pretend(type: .medium, size: 10) }
    static var medium8: Font { .pretend(type: .medium, size: 8) }

    static var light14: Font { .pretend(type: .light, size: 14) }
}
