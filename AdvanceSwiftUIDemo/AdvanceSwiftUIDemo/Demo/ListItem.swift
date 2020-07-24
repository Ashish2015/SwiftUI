//
//  ListItems.swift
//  AdvanceSwiftUIDemo
//
//  Created by Ashish Prajapati on 06/11/19.
//  Copyright © 2019 Ashish Prajapati. All rights reserved.
//

import SwiftUI

struct ListItem: View {
    @State var title: Int
    @State var bOpen = false

    var body: some View {
        VStack{
            Text("\(title+2) items")
                self.bOpen ? Options() : nil
        }
        .onTapGesture {
            self.bOpen.toggle()
        }
    }
}

struct Options: View {
    var body: some View {
        HStack {
            Image(systemName:"circle.fill")
            Image(systemName:"star")
        }

    }
}
