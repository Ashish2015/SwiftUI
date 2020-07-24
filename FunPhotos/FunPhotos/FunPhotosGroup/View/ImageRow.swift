//
//  ImageRow.swift
//  FunPhotos
//
//  Created by Ashish Prajapati on 07/08/19.
//  Copyright © 2019 Ashish Prajapati. All rights reserved.
//

import SwiftUI

struct ImageRow: View {
    
    var photo: UnsplashPhoto

    var body: some View {
        ZStack(alignment:.bottom){
            ImageViewContainer(photo: photo)            
            HStack(alignment: .top){
                Text(self.photo.user?.name ?? "")
                .foregroundColor(.white)
                .font(.custom(App.fontRegular, size: 18.0))
                .padding()
                Spacer()
            }
        }
    }
}





