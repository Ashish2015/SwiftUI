//
//  RegisterView.swift
//  FunPhotos
//
//  Created by Ashish Prajapati on 26/08/19.
//  Copyright © 2019 Ashish Prajapati. All rights reserved.
//

import SwiftUI

struct RegisterView: View {
    
    @State var strFirstName = ""
    @State var strLastName = ""
    @State var strUserName = ""
    @State var strEmail = ""
    @State var strPassword = ""
    
    @State var strFirstNameText = "First Name"
    @State var strLastNameText = "Last Name"
    @State var strUserNameText = "User Name"
    @State var strEmailText = "Email"
    @State var strPasswordText = "Password"
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    
    var btnBack : some View { Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            HStack {
                Image("ic_back")
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.white)
                Text("Login")
                    .foregroundColor(.white)
            }
        }
    }
    
    var btnTermsNCondition:some View {
        Button(action: {
            
        }) {
            HStack {
                Text("By joining, you agree to the")
                .font(.custom(App.fontMedium, size: 13))
                .foregroundColor(.gray)
                Text("Terms")
                .font(.custom(App.fontMedium, size: 13))
                .foregroundColor(.white)
                Text("and")
                .font(.custom(App.fontMedium, size: 13))
                .foregroundColor(.gray)
                Text("Privacy Policy.")
                .font(.custom(App.fontMedium, size: 13))
                .foregroundColor(.white)
                }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,  maxHeight: 40.0, alignment: .center)
        }
    }

    var body: some View {
        ZStack() {
            Rectangle()
             .foregroundColor(color.background)
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center){
                        FacebookButton()
                            .padding(.top, 20)
                        Text("or").font(.custom(App.fontMedium, size: 16))
                               .foregroundColor(.white)
                            .padding(.top, 16)
                            .padding(.bottom, 20)

                        Group {
                            CustomTextFiled(textPlaceHolder: $strFirstNameText, text: $strFirstName)
                            Divider().padding(.bottom, 6)
                            CustomTextFiled(textPlaceHolder: $strLastNameText, text: $strLastName)
                            Divider().padding(.bottom, 6)
                            CustomTextFiled(textPlaceHolder: $strUserNameText, text: $strUserName)
                            Divider().padding(.bottom, 6)
                            CustomTextFiled(textPlaceHolder: $strEmailText, text: $strEmail)
                            Divider().padding(.bottom, 6)
                            CustomTextFiled(textPlaceHolder: $strPasswordText, text: $strPassword)
                            Divider().padding(.bottom, 6)
                        }

                        SignUpButton()
                        btnTermsNCondition
                            .padding(.bottom, 20)
                }.padding()
            }
            .navigationBarTitle(Text("Join Unsplash"))
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: btnBack)
        }
    }
}

#if DEBUG
struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
#endif
