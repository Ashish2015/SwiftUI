//
//  SubView.swift
//  AdvanceSwiftUIDemo
//
//  Created by Ashish Prajapati on 06/11/19.
//  Copyright © 2019 Ashish Prajapati. All rights reserved.
//

import SwiftUI

struct SubView: View {
        @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

        var body: some View {
            
            NavigationView {
                List {
                    Text("hello world")
                    Text("hello world")
                    Text("hello world")
                }
                .navigationBarTitle("ToDo List", displayMode: .inline) // 1
                .navigationBarBackButtonHidden(true)
                .navigationBarItems(leading: backButton, trailing: addButton)
            }
        }

        var backButton: some View {
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }, label: {
                HStack {
                    Image(systemName: "chevron.left")
                    Text("Back") // 2
                }
            })
        }

        var addButton: some View {
            Button(action: {
                //self.add = true
            }, label: {
                ZStack(alignment: .trailing) {
                    Rectangle() // 3
                        .fill(Color.red.opacity(0.0001)) // 4
                        .frame(width: 40, height: 40)
                    Image(systemName: "plus")
                }
            })
        }
}

struct SubView_Previews: PreviewProvider {
    static var previews: some View {
        SubView()
    }
}
