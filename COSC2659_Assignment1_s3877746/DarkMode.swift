//
//  DarkMode.swift
//  COSC2659_Assignment1_s3877746
//
//  Created by mai chieu thuy on 01/08/2023.
//

import Foundation
import SwiftUI

enum Theme: Int {
    case light
    case dark
    
    var colorScheme: ColorScheme {
        switch self {
        case .light:
            return .light
        case .dark:
            return .dark
        }
    }
}

class AppSettings: ObservableObject {

    static let shared = AppSettings()
    
    @AppStorage("current_theme") var currentTheme: Theme = .light
}
