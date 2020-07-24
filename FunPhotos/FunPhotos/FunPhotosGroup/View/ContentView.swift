//
//  ContentView.swift
//  FunPhotos
//
//  Created by Ashish Prajapati on 06/08/19.
//  Copyright © 2019 Ashish Prajapati. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State var showingProfile = false
    @State var showModal: Bool = false
    @State var showLogin: Bool = false

    @ObservedObject var viewModel = UnsplashPhotoViewModel()

    @State var selectedPhoto:UnsplashPhoto? = nil

    var unsplashButton: some View {
           Button(action: {
            
           }) {
           Image("ic_logo")
                   .imageScale(.medium)
                   .foregroundColor(.white)
           }
       }
    
    var profileButton: some View {
        Button(action: { self.showLogin.toggle() }) {
                Image("ic_account")
                        .imageScale(.large)
                        .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 1.5))
                        .foregroundColor(.white)
        }
    }
    
    var detailsButton: some View {
        Button(action: {
        }) {
        Image("ic_details")
                .imageScale(.small)
                .foregroundColor(.white)
        }
    }

    var body: some View {
        
        NavigationView {
//            List{
            ZStack {
                    ScrollView(.vertical, showsIndicators: false)  {
                            HeaderSection()
                            VStack(alignment: .leading) {
                                Text(title.explore)
                                    .font(.custom(App.fontBold, size: 21.0))
                                    .fontWeight(.medium)
                                    .foregroundColor(.white)
                                    .padding(.leading, 15)
                                    ScrollView(.horizontal, showsIndicators: false) {
                                         HStack {
                                            ForEach(self.viewModel.photos) { photo in
                                                GeometryReader { geometry in
                                                    NavigationLink(destination: ExploreDetails(photo: photo)) {
                                                        ExploreView(photo: photo)
                                                }
                                                    //.rotation3DEffect(Angle(degrees: 5.0), axis: (x: 0, y: 0, z: -50.0))
                                               }
                                            }.frame(width: 300, height: 280)
                                            .padding()
                                         }.padding(.all)
                                    }
                                Text(title.New)
                                  .font(.custom(App.fontBold, size: 21.0))
                                  .fontWeight(.medium)
                                  .foregroundColor(.white)
                                  .padding(.leading, 15)
                            }

                            ForEach(viewModel.photos) { photo in
                                    ImageRow(photo: photo)
                                        .onTapGesture {
                                            self.showModal.toggle()
                                            self.selectedPhoto = photo
                                }
                                .listRowInsets(EdgeInsets())
                            }
                        }
                        .navigationBarItems(leading: unsplashButton, trailing: profileButton)
                        .edgesIgnoringSafeArea(.all)
                        .navigationBarTitle(Text(verbatim: title.home)
                            .font(.custom(App.fontBold, size: 28.0))
                            .foregroundColor(.white), displayMode: .automatic)
                        .sheet(isPresented: self.$showModal) {
                           ContentDetailsView(photo: self.selectedPhoto!)
                        }
                
                    if (showLogin) {
                        LoginView(isPresent:$showLogin)
                            .transition(.slide)
                    }
                }
        }.colorScheme(.dark)
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
