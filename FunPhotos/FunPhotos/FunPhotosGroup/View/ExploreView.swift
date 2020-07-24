//
//  ExploreView.swift
//  FunPhotos
//
//  Created by Ashish Prajapati on 08/08/19.
//  Copyright © 2019 Ashish Prajapati. All rights reserved.
//

import SwiftUI

struct ExploreView: View {
    
    var photo: UnsplashPhoto
    @ObservedObject var remoteImageURL: RemoteImageURL
    
    init(photo: UnsplashPhoto) {
          self.photo = photo
          remoteImageURL =  RemoteImageURL(imageURL: photo.urls?.thumb ?? "")
      }

    var body: some View {
       
        ZStack(alignment: .center) {
            Image(uiImage: (remoteImageURL.data.isEmpty) ? UIImage(imageLiteralResourceName: K.placeHolder) : UIImage(data: remoteImageURL.data)!)
                       .resizable()
                       .renderingMode(.original)
                        .aspectRatio(contentMode: .fill)
                       .frame(width: 300, height: 170)
                       .cornerRadius(10)
                       .shadow(radius: 10)
                .padding(.trailing)
            
            
            overlayView(height:CGFloat(170))
            
            HStack(alignment: .center){
                Text(self.photo.user?.name ?? "")
                .foregroundColor(.white)
                .font(.custom(App.fontMedium, size: 18.0))
                .padding()
            }
            
        }
        
    }   
}

