//
//  ContentDetailsView.swift
//  FunPhotos
//
//  Created by Ashish Prajapati on 14/08/19.
//  Copyright © 2019 Ashish Prajapati. All rights reserved.
//

import SwiftUI

struct ContentDetailsView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @ObservedObject var remoteImageURL: RemoteImageURL
    var photo: UnsplashPhoto
    
    init(photo: UnsplashPhoto) {
        self.photo = photo
        remoteImageURL =  RemoteImageURL(imageURL: photo.urls?.full ?? "")
    }
    
    var closeButton: some View {
                Button(action: {
                     self.presentationMode.wrappedValue.dismiss()
                }) {
                Image("ic_close")
                        .imageScale(.small)
                        .foregroundColor(.white)
                }
      }

    var shareButton: some View {
                 Button(action: {
//                    self.presentationMode.wrappedValue.dismiss()
                 }) {
                 Image("ic_share")
                         .imageScale(.small)
                         .foregroundColor(.white)
                 }
       }
    
    var detailsButton: some View {
                Button(action: {
                     self.presentationMode.wrappedValue.dismiss()
                }) {
                Image("ic_details")
                        .imageScale(.small)
                        .foregroundColor(.white)
                }
      }
      
    var body: some View {
        
        ZStack {
            Rectangle()
                .frame(height:UIScreen.main.bounds.height)
                .edgesIgnoringSafeArea(.all)
                .foregroundColor(color.background)
            VStack(alignment:.leading) {
                    HStack {
                        closeButton
                            .frame(width:60)
                            .padding(.leading, 12.0)
                            .padding(.top, 5.0)

                            Spacer()
                        Text("\(photo.user?.name ?? "")")
                            .font(.custom(App.fontMedium, size: 22.0))
                            .foregroundColor(.white)
                            .padding(.top, 5)
                            .multilineTextAlignment(.center)
                        Spacer()
                        shareButton
                            .frame(width:60)
                            .padding(.trailing, 12.0)
                    }
                    .frame(height:60)
                    .listRowInsets(EdgeInsets())
                    .padding(.top, 20)
                    
                ZStack {
                        VStack {
                            Image(uiImage: (remoteImageURL.data.isEmpty) ? UIImage(imageLiteralResourceName: K.placeHolder) : UIImage(data: remoteImageURL.data)!)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                        }
                        VStack(alignment: .leading){
                            Spacer()
                            HStack(alignment: .bottom){
                                detailsButton
                                .padding(.leading, 15)
                                Spacer()
                                FooterView()
                                    .padding(.trailing, 15)
                            }
                        }
                        
                    } .listRowInsets(EdgeInsets())
                        .frame(height: UIScreen.main.bounds.height - (84+40+34))
            }
            
        }
    }
}

#if DEBUG
struct ContentDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        
        //"iPhone SE"
        ForEach(["iPhone XS Max"], id: \.self) { deviceName in
            
             ContentDetailsView(photo: UnsplashPhoto(id: "1", createdAt: "", updatedAt: "", width: 300, height: 300, color: "", unsplashPhotoDescription: "", altDescription: "", urls: nil, links: nil, categories: nil, likes: 12, likedByUser: true, currentUserCollections: nil, user: nil, sponsorship: nil))
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
            
        }
       
    }
}
#endif
