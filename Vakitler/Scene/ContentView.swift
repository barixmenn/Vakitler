//
//  ContentView.swift
//  Vakitler
//
//  Created by Baris Dilekci on 7.12.2023.
//

import SwiftUI
struct ContentView: View {
    let currentPreviewTime: PrayerTimes = .sun
    
    var body: some View {
        let textColor: Color = .textColor(for: currentPreviewTime)
        
        VStack {
            VStack {
                Text("Kütahya, Kütahya, Türkiye")
                    .font(.caption)
                    .foregroundColor(textColor)
                    .padding()
                
                VStack(spacing: 16) {
                    currentPreviewTime.icons
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50,height: 50)
                    Text(currentPreviewTime.displayName)
                        .font(.title)
                        .foregroundColor(textColor)
                    
                    Text("1 saat 20 dakika")
                        .font(.subheadline)
                        .foregroundColor(textColor)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 16.0).fill(textColor.opacity(0.2)))
                }
            }
            .padding()


            VStack(spacing: 0) {
                PrayerListItem(currentTime: currentPreviewTime, time: .fajr)
                PrayerListItem(currentTime: currentPreviewTime, time: .sun)
                PrayerListItem(currentTime: currentPreviewTime, time: .dhuhr)
                PrayerListItem(currentTime: currentPreviewTime, time: .asr)
                PrayerListItem(currentTime: currentPreviewTime, time: .maghrib)
                PrayerListItem(currentTime: currentPreviewTime, time: .isha)
            }
        }
        .edgesIgnoringSafeArea(.all) // Güvenli bölgeyi yoksayarak, içeriği ekranın kenarlarına kadar genişletmek için
    }
}


#Preview {
    ContentView()
}
