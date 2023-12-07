//
//  Color.swift
//  Vakitler
//
//  Created by Baris Dilekci on 7.12.2023.
//

import Foundation
import SwiftUI

extension Color {
    static func backgroundColor(for current: PrayerTimes, target: PrayerTimes) -> Color {
        let colorName = "\(current.rawValue)-\(target)"
        return Color(colorName)
    }
    
    static func textColor(for current: PrayerTimes) -> Color {
        let colorName = "\(current.rawValue)-text"
        return Color(colorName)
    }
}
