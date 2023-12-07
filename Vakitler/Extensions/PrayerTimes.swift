//
//  PrayerThems.swift
//  Vakitler
//
//  Created by Baris Dilekci on 7.12.2023.
//

import Foundation
import SwiftUI

enum PrayerTimes: String {
    case fajr
    case sun
    case dhuhr
    case asr
    case maghrib
    case isha
    
    
    var displayName: String {
        switch self {
            
        case .fajr:
            return NSLocalizedString("PRAYER_DISPLAY_FAJR", comment: "Fajr time display name")
        case .sun:
            return NSLocalizedString("PRAYER_DISPLAY_SUN", comment: "Sun time display name")
        case .dhuhr:
            return NSLocalizedString("PRAYER_DISPLAY_DHUHR", comment: "Dhuhr time display name")
        case .asr:
            return NSLocalizedString("PRAYER_DISPLAY_ASR", comment: "Asr time display name")
        case .maghrib:
            return NSLocalizedString("PRAYER_DISPLAY_MAGHRIB", comment: "Maghrib time display name")
        case .isha:
            return NSLocalizedString("PRAYER_DISPLAY_ISHA", comment: "Isha time display name")
        }
    }
    
    var icons : Image {
        switch self {
        case .fajr:
            return Image("fajr")
        case .sun:
            return Image("sun")
        case .dhuhr:
            return Image("dhuhr")
        case .asr:
            return Image("asr")
        case .maghrib:
            return Image("maghrib")
        case .isha:
            return Image("isha")
        }
}
    
    var displayTime: String {
        switch self {
        case .fajr:
            return "06:01"
        case .sun:
            return "07:25"
        case .dhuhr:
            return "13:21"
        case .asr:
            return "16:32"
        case .maghrib:
            return "19:07"
        case .isha:
            return "20:26"
        }
    }
}
