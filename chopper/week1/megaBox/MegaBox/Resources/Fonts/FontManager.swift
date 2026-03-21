//
//  FontManager.swift
//  MegaBox
//
//  Created by 한지민 on 3/20/26.
//

import SwiftUI

extension Font {
    enum Pretendard {
        case extra
        case bold
        case semi
        case regular
        case medium
        case light
        case custom(String)
        
        var value: String {
            switch self {
            case .extra:
                return "Pretendard-ExtraBold"
            case .bold:
                return "Pretendard-Bold"
            case .semi:
                return "Pretendard-SemiBold"
            case .regular:
                return "Pretendard-Regular"
            case .medium:
                return "Pretendard-Medium"
            case .light:
                return "Pretendard-Light"
            case .custom(let name):
                return name
            }
        }
    }
    static func pretendard(_ type: Pretendard, size: CGFloat) -> Font {
        return .custom(type.value, size: size)
    }
}
