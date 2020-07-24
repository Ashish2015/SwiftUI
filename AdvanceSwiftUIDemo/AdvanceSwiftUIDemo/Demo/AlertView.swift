//
//  AlertView.swift
//  AdvanceSwiftUIDemo
//
//  Created by Ashish Prajapati on 23/10/19.
//  Copyright © 2019 Ashish Prajapati. All rights reserved.
//

import SwiftUI

struct AlertView: View {
     @State private var showingAlert = false
       var body: some View {
           Button(action: {
               self.showingAlert = true
           }) {
               Text("Show Alert")
           }
           .alert(isPresented: $showingAlert) {
              Alert(title: Text("Important message"), message: Text("Alert message gose here"), dismissButton: .default(Text("Got it!")))
           }
       }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}
