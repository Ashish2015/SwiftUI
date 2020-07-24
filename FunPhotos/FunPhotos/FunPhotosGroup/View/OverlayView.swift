//
//  OverlayView.swift
//  FunPhotos
//
//  Created by Ashish Prajapati on 13/08/19.
//  Copyright © 2019 Ashish Prajapati. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

struct overlayView: View {
    
    var height:CGFloat
    
    var body: some View {
    
        ZStack(alignment:.top){
        Rectangle()
            .frame(height: height)
            .foregroundColor(.black)
            .opacity(K.viewOpacity)
            .blur(radius:20)
        }
    }
}
