//
//  FacebookButton.swift
//  FunPhotos
//
//  Created by Ashish Prajapati on 23/08/19.
//  Copyright © 2019 Ashish Prajapati. All rights reserved.
//

import SwiftUI

struct FacebookButton: View {
    
    var fbButton:some View {
        Button(action: {
            
        }) {
            HStack {
                Image("ic_fb")
                    .aspectRatio(contentMode:.fit)
                    .foregroundColor(color.fbButton)
                    .background(Color.white)
                Spacer()
                Text("Continue with Facebook")
                    .font(.custom(App.fontMedium, size: 17))
                    .foregroundColor(.white)
                Spacer()

                }.frame( minWidth: 0, maxWidth: .infinity)
        }
    }
    
    var body: some View {
        HStack(alignment: .center) {
            self.fbButton
            .padding()
            .frame(height: 50, alignment:.center)
            .background(color.fbButton)
            .cornerRadius(5.0)

        }
    }
}

#if DEBUG
struct FacebookButton_Previews: PreviewProvider {
    static var previews: some View {
        FacebookButton()
    }
}
#endif
