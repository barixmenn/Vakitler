//
//  PlayerListItem.swift
//  Vakitler
//
//  Created by Baris Dilekci on 7.12.2023.
//

import SwiftUI

struct PrayerListItem: View {
    
     var currentTime : PrayerTimes = .asr
     var  time : PrayerTimes = .dhuhr
    var body: some View {
        let textColor : Color = .textColor(for: currentTime)
        
        HStack{
            Text(time.displayName)
                .font(.mainText)
                .foregroundColor(textColor)
            Spacer()
            Text(time.displayTime)
                .font(.mainText)
                .foregroundColor(textColor)
        }
        .padding(.horizontal,16.0)
        .padding(.vertical, 19.0)
        .overlay(
            RoundedRectangle(
                cornerRadius: 16.0
            ).stroke(
                textColor, 
                lineWidth: currentTime == time ? 2.0 : 0.0
            ))
        .padding(10.0)
        .background(Color.backgroundColor(for: currentTime, target: time))
    }
}

struct PrayerListItem_Previews: PreviewProvider {
    static var previews: some View {
      PrayerListItem()
    }
}
