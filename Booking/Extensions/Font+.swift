//
//  Font+.swift
//  Booking
//
//  Created by Kirill Ponomarenko on 22.12.23.
//

import SwiftUI

extension Font {
    static func customFont(size: CGFloat, weight: Font.Weight = .regular) -> Font {
        return Font.custom("SF Pro Display", size: size).weight(weight)
    }
}
