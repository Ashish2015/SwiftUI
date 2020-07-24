//
//  File.swift
//  FunPhotos
//
//  Created by Ashish Prajapati on 06/08/19.
//  Copyright © 2019 Ashish Prajapati. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI


struct K {
   static let baseURL = "https://api.unsplash.com/"
   static let status = "status"
   static let viewOpacity = 0.35
   static let placeHolder = "swift"
   static let sectionHeader = "header"
   static let overlayHeight:CGFloat = 80.0
}

struct App {
    static let fontBold = "OpenSans-Bold"
    static let fontRegular = "OpenSans-Regular"
    static let fontMedium = "OpenSans-Semibold"
    static let fontLight = "OpenSans-Light"
    
}

struct title {
    static let explore = "Explore"
    static let New = "New"
    static let home = "Photos for everyone"
}

struct color {
    static let background = Color.init(red: 17.0/255.0, green: 17.0/255.0, blue: 17.0/255.0)
    static let buttonBackground = Color.init(red: 24.0/255.0, green: 24.0/255.0, blue: 24.0/255.0)
    static let fbButton = Color.init(red: 59.0/255.0, green: 89.0/255.0, blue: 152.0/255.0)
}

func getRatioSize(size: CGSize) -> CGSize {
   let width = UIScreen.main.bounds.size.width
   let ratio = size.width / size.height
   let height = width / ratio
   return .init(width: width, height: height)
}

