//
//  LoginView.swift
//  FunPhotos
//
//  Created by Ashish Prajapati on 23/08/19.
//  Copyright © 2019 Ashish Prajapati. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    
    @State var strEmail = ""
    @State var strPassword = ""
    
    @Binding var isPresent: Bool
    @State var showRegister: Bool = false


    var btnCancel:some View {
        Button(action: {
            self.isPresent.toggle()
        }) {
            Text("Cencel")
                .font(.custom(App.fontRegular, size: 16))
                .foregroundColor(.white)
        }
    }
    
    var btnForgot:some View {
        Button(action: {
            
        }) {
            Text("Forgot your password?")
                .font(.custom(App.fontRegular, size: 16))
                .foregroundColor(.white)
        }
    }
    
    var btnJoin:some View {
        Button(action: {
            self.showRegister.toggle()
        }) {
            Text("Don't have an account? Join")
                .font(.custom(App.fontMedium, size: 18))
                .foregroundColor(.white)
        }
    }
    
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(color.background)
                .cornerRadius(15)
                .padding(.top, 50)
                .padding(.bottom, 50)
                .padding(.leading, 10)
                .padding(.trailing, 10)

            
            NavigationView {
                ZStack {
                    Rectangle()
                        .foregroundColor(color.background)
                    HStack(alignment: .top) {
                        VStack(alignment: .center){
                                FacebookButton()
                                
                                Text("or").font(.custom(App.fontMedium, size: 16))
                                       .foregroundColor(.white)
                                    .padding(.top, 16)
                                    .padding(.bottom, 20)
                                
                                Group {
                                    TextField("Email", text: $strEmail)
                                               .foregroundColor(.white)
                                               .textContentType(.emailAddress)
                                               .keyboardType(.emailAddress)
                                               .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,  maxHeight: 40.0, alignment: .bottom)
                                    

                                    Divider()
                                        .padding(.bottom, 6)
                                   
                                    TextField("Password", text: $strPassword)
                                        .textContentType(.password)
                                        .keyboardType(.alphabet)
                                        .foregroundColor(.white)
                                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,  maxHeight: 40.0, alignment: .bottom)
                                    
                                    Divider()
                                        .padding(.bottom, 6)
                                    
                                }.padding(.leading, 16)
                                 .padding(.trailing, 16)
                       
                                LoginButton()
                                btnForgot
                                    .padding(.top, 20)
                            
                                NavigationLink(destination: RegisterView()){
                                    Text("Don't have an account? Join")
                                    .font(.custom(App.fontMedium, size: 18))
                                    .foregroundColor(.white)
                                    .padding(.top, 25)
                                    .padding(.bottom, 20)
                                }
                            }
                            .cornerRadius(10)
                            .navigationBarTitle(Text(verbatim: "Login")
                            .font(.custom(App.fontMedium, size: 18.0))
                            .foregroundColor(.white), displayMode: .inline)
                            .navigationBarItems(leading: btnCancel)
                            .edgesIgnoringSafeArea(.all)
                            .padding(.all, 15)
                    }
                }
            }
            .padding(.top, 60)
            .padding(.bottom, 60)
            .padding(.leading, 15)
            .padding(.trailing, 15)
        }
    }
}


#if DEBUG
struct LoginView_Previews: PreviewProvider {

    static var previews: some View {
        
        LoginView(isPresent: .constant(true))
    }
}
#endif
 
