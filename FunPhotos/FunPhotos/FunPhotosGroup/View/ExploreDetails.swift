//
//  ExploreDetails.swift
//  FunPhotos
//
//  Created by Ashish Prajapati on 20/08/19.
//  Copyright © 2019 Ashish Prajapati. All rights reserved.
//

import SwiftUI

struct ExploreDetails: View {

    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    @ObservedObject var viewModel = UnsplashPhotoViewModel()
    var photo:UnsplashPhoto

    var btnBack : some View { Button(action: {
        self.presentationMode.wrappedValue.dismiss()
        }) {
            Image("ic_back")
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.white)
        }
    }
    
    var body: some View {
        
            List {
                ForEach(self.viewModel.photos) { relatedPhoto in
                    ImageRow(photo: relatedPhoto)
                        .onTapGesture {
    //                        self.showModal.toggle()
    //                        self.selectedPhoto = photo
                    }

                }.listRowInsets(EdgeInsets())
                    .edgesIgnoringSafeArea(.all)
        }
            .navigationBarTitle(Text(verbatim: photo.user?.instagramUsername ?? "")
            .font(.custom(App.fontMedium, size: 32.0))
            .foregroundColor(.white), displayMode: .inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: btnBack)
    }
}

//#if DEBUG
//struct ExploreDetails_Previews: PreviewProvider {
//
//    static var previews: some View {
//        ExploreDetails()
//    }
//
//}
//#endif

   

