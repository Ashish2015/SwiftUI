//
//  OverlayScreen.swift
//  AdvanceSwiftUIDemo
//
//  Created by Ashish Prajapati on 08/11/19.
//  Copyright © 2019 Ashish Prajapati. All rights reserved.
//

import SwiftUI

struct OverlayScreen: View {
   @State private var overlayUIScreen: Bool = false

    var body: some View {
        ZStack {
            if overlayUIScreen {
                Rectangle()
                    .edgesIgnoringSafeArea(.top)
                   // .frame(width: UIScreen.main.bounds.size.width,
                           //height: UIScreen.main.bounds.size.height)
                    .foregroundColor(Color.gray)

                    .transition(.opacity)
            }

            Button("Overlay?") {
                withAnimation {
                    self.overlayUIScreen.toggle()
                }
            }

        }
       .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)

    }
}

struct OverlayScreen_Previews: PreviewProvider {
    static var previews: some View {
        OverlayScreen()
    }
}
