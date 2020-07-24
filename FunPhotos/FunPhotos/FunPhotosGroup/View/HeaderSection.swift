//
//  HeaderSection.swift
//  FunPhotos
//
//  Created by Ashish Prajapati on 08/08/19.
//  Copyright © 2019 Ashish Prajapati. All rights reserved.
//

import SwiftUI

struct HeaderSection: View {
    @State private var search: String = ""
    
    var body: some View {
        ZStack (alignment: .top) {
            Image(K.sectionHeader)
                .resizable()
                .frame(height:UIScreen.main.bounds.width)
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.clear)
                VStack {
                   overlayView(height:UIScreen.main.bounds.width)
                }
                SearchBar(text: $search)
                    .blur(radius: 0.2)
                    .shadow(radius: 0.2)
                    .padding(.top, 140)

            }.listRowInsets(EdgeInsets())
            .background(color.background)
        }
    }

#if DEBUG
struct HeaderSection_Previews: PreviewProvider {
    static var previews: some View {
        HeaderSection()
    }
}
#endif
