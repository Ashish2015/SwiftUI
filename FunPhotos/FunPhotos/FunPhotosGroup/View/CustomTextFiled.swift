//
//  CustomTextFiled.swift
//  FunPhotos
//
//  Created by Ashish Prajapati on 26/08/19.
//  Copyright © 2019 Ashish Prajapati. All rights reserved.
//

import SwiftUI

struct CustomTextFiled: View {
    
    @Binding var textPlaceHolder:String
    @Binding var text:String
    
    var body: some View {
         TextField(textPlaceHolder, text: $text)
                                          .foregroundColor(.white)
                                          .textContentType(.emailAddress)
                                          .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,  maxHeight: 40.0, alignment: .bottom)
    }
}

#if DEBUG
struct CustomTextFiled_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextFiled(textPlaceHolder: .constant("Email"), text: .constant(""))
    }
}
#endif
