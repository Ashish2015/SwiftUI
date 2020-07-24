//
//  LoginButton.swift
//  FunPhotos
//
//  Created by Ashish Prajapati on 23/08/19.
//  Copyright © 2019 Ashish Prajapati. All rights reserved.
//

import SwiftUI

struct LoginButton: View {
    var loginButton:some View {
        Button(action: {
            
        }) {
            HStack {
                Text("Log In")
                .font(.custom(App.fontMedium, size: 18))
            }.frame(minWidth: 0, maxWidth: .infinity)
            .foregroundColor(color.background)
        }
    }
    
    var body: some View {
        HStack(alignment: .center) {
            self.loginButton
            .padding()
            .frame(height: 50, alignment:.center)
            .background(Color.white)
            .cornerRadius(5.0)
        }.padding()
    }
}

#if DEBUG
struct LoginButton_Previews: PreviewProvider {
    static var previews: some View {
        LoginButton()
    }
}
#endif
