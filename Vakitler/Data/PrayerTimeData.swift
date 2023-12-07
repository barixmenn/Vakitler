//
//  PrayerTimeData.swift
//  Vakitler
//
//  Created by Baris Dilekci on 7.12.2023.
//

import Foundation

class PrayerTimeData {
    var prayerTimes: [PrayerTime] = [
        PrayerTime(type: .fajr, hour: 6, minute: 1),
        PrayerTime(type: .sun, hour: 7, minute: 25),
        PrayerTime(type: .dhuhr, hour: 13, minute: 21),
        PrayerTime(type: .asr, hour: 16, minute: 32),
        PrayerTime(type: .maghrib, hour: 19, minute: 7),
        PrayerTime(type: .isha, hour: 20, minute: 26),
    ]
}
