//
//  ModalView.swift
//  AdvanceSwiftUIDemo
//
//  Created by Ashish Prajapati on 05/11/19.
//  Copyright © 2019 Ashish Prajapati. All rights reserved.
//

import SwiftUI

struct ModalView: View {

  @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

  var body: some View {
    Group {
      Text("Modal view")
      Button(action: {
         self.presentationMode.wrappedValue.dismiss()
      }) {
        Text("Dismiss")
      }
       
    }
  }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}
