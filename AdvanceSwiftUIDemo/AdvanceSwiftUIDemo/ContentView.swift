//
//  ContentView.swift
//  AdvanceSwiftUIDemo
//
//  Created by Ashish Prajapati on 23/10/19.
//  Copyright © 2019 Ashish Prajapati. All rights reserved.
//

import SwiftUI

struct ContentView: View {

  @State private var showModal = false

  var body: some View {
    
    VStack {
        TextField("Title", text: .constant("text"))
        .background(Color.red)
        .cornerRadius(5)
        
        Button(action: {
               self.showModal = true
           }) {
               Text("Show modal")
           }.sheet(isPresented: self.$showModal) {
               ModalView()
           }
        
            List(0..<10){index in
                ListItem(title: index).animation(.default)
            }
    }
   
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
