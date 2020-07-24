//
//  ColorPalette.swift
//  TranslateSky
//
//  Created by Joseph Mambwe on 09/06/2020.
//  Copyright © 2020 Ruvix. All rights reserved.
//

import Foundation
import SwiftUI



struct ColorPalette {
       
    static var colors: [Color] = [heavy, primaryColor, light, medium]
    
    static var primaryColor: Color {
        return Color(red: 83/255, green: 179/255, blue: 203/255)
    }
    
    static var heavy: Color {
      return Color(red: 0/255, green: 162/255, blue: 203/255)
    }
    static var medium: Color {
      return Color(red: 113/255, green: 207/255, blue: 231/255)
    }
    static var light: Color {
              return Color(red: 83/255, green: 179/255, blue: 203/255)
       }
    static var secondaryColor: Color {
        return Color(UIColor(red: 83/255, green: 179/255, blue: 203/255, alpha: 0.35))
    }
    static var sectionHeader: Color {
        return Color(UIColor(red: 241/255, green: 241/255, blue: 241/255, alpha: 1))
    }
    static var lightGray: Color {
        return Color(UIColor(red: 211/255, green: 211/255, blue: 211/255, alpha: 1))
    }
    static var silverGray: Color {
           return Color(UIColor(red: 192/255, green: 192/255, blue: 192/255, alpha: 1))
    }
}
