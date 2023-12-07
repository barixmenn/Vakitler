//
//  Font.swift
//  Vakitler
//
//  Created by Baris Dilekci on 7.12.2023.
//

import Foundation
import SwiftUI

extension Font {
    static var bigTitle: Font {
        return Font.system(size: 34.0, weight: .regular)
    }
    static var smallTitle: Font {
        return Font.system(size: 18.0, weight: .regular)
    }
    static var captionText: Font {
        return Font.system(size: 14.0, weight: .regular)
    }
    static var mainText: Font {
        return Font.system(size: 18.0, weight: .medium)
    }
}
