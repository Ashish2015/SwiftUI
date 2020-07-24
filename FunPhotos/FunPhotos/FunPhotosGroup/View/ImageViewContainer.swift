//
//  ImageViewContainer.swift
//  FunPhotos
//
//  Created by Ashish Prajapati on 07/08/19.
//  Copyright © 2019 Ashish Prajapati. All rights reserved.
//

import SwiftUI

struct ImageViewContainer: View {
   
    @ObservedObject var remoteImageURL: RemoteImageURL
    var photo: UnsplashPhoto

    init(photo: UnsplashPhoto) {
        self.photo = photo
        remoteImageURL =  RemoteImageURL(imageURL: photo.urls?.thumb ?? "")
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(uiImage: (remoteImageURL.data.isEmpty) ? UIImage(imageLiteralResourceName: K.placeHolder) : UIImage(data: remoteImageURL.data)!)
                .resizable()
                .aspectRatio(getRatioSize(size: CGSize(width: photo.width ?? 0, height: photo.height ?? 0)), contentMode: .fit)
            overlayView(height: K.overlayHeight)

        }
        .frame(width: UIScreen.main.bounds.width, height: getRatioSize(size: CGSize(width: photo.width ?? 0, height: photo.height ?? 0)).height)
    }
}







