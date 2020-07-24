//
//  FooterView.swift
//  FunPhotos
//
//  Created by Ashish Prajapati on 14/08/19.
//  Copyright © 2019 Ashish Prajapati. All rights reserved.
//

import SwiftUI



struct FooterView: View {
    
    var favButton: some View {
           Button(action: {
            
           }) {
           Image("ic_fav")
                   .imageScale(.small)
                   .foregroundColor(.white)
                   .padding()
        }
    }
    
    var plusButton: some View {
              Button(action: {
               
              }) {
              Image("ic_plus_white")
                      .imageScale(.small)
                      .foregroundColor(.white)
                      .padding()
        }
    }
    var downloadButton: some View {
           Button(action: {
            
           }) {
           Image("ic_download_black")
                   .imageScale(.small)
                   .foregroundColor(.black)
                   .padding()
        }
    }
    
    var body: some View {
    
        VStack(alignment: .trailing, spacing: 12.0) {
//            Rectangle()
//                .foregroundColor(Color.clear)
            
            Group {
                favButton
                plusButton
            }   .frame(width: 65, height: 65)
                .clipShape(Circle())
                .background(Circle().foregroundColor(color.buttonBackground))
                .overlay(Circle().stroke((color.buttonBackground)))
                .shadow(radius: 3)

            
            downloadButton
            .frame(width: 65, height: 65)
            .clipShape(Circle())
            .background(Circle()
            .foregroundColor(Color.white))
            .overlay(Circle().stroke(Color.black, lineWidth: 1))
            .shadow(radius: 3)
        }
    }
}

#if DEBUG
struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
    }
}
#endif
