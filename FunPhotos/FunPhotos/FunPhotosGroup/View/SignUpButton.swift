//
//  SignUpButton.swift
//  FunPhotos
//
//  Created by Ashish Prajapati on 26/08/19.
//  Copyright © 2019 Ashish Prajapati. All rights reserved.
//

import SwiftUI


struct SignUpButton: View {
    var signUpButton:some View {
        Button(action: {
            
        }) {
            HStack {
                Text("Sign Up")
                .font(.custom(App.fontMedium, size: 18))
            }.frame(minWidth: 0, maxWidth: .infinity)
            .foregroundColor(color.background)
        }
    }
    
    var body: some View {
        HStack(alignment: .center) {
            self.signUpButton
            .padding()
            .frame(height: 50, alignment:.center)
            .background(Color.white)
            .cornerRadius(5.0)
        }
    }
}

#if DEBUG
struct SignUpButton_Previews: PreviewProvider {
    static var previews: some View {
        SignUpButton()
    }
}
#endif
