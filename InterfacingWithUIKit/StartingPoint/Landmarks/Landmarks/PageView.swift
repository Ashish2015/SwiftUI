//
//  PageView.swift
//  Landmarks
//
//  Created by Ashish Prajapati on 04/10/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI

struct PageView <Page:View>: View {
    
    var viewControllers:[UIHostingController<Page>]
    @State var currentPage = 0
    
    init(_ views:[Page]) {
        self.viewControllers = views.map { UIHostingController(rootView:$0)}
    }
    
    var body: some View {
       
        VStack {
            PageViewController(currentPage: $currentPage, controllers: viewControllers)
            Text("Current Page: \(currentPage)")
                .foregroundColor(.black)
        }
    }
}

#if DEBUG
struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(features.map {FeatureCard(landmark: $0)})
            .aspectRatio(3/4, contentMode: .fit)
    }
}
#endif
