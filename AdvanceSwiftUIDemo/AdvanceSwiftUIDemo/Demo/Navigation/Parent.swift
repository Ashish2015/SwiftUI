//
//  Parent.swift
//  AdvanceSwiftUIDemo
//
//  Created by Ashish Prajapati on 23/10/19.
//  Copyright © 2019 Ashish Prajapati. All rights reserved.
//

import SwiftUI

struct Parent: View {
    var body: some View {
        NavigationView {
            Text("Hello World")
                .navigationBarItems(
                    trailing: NavigationLink(destination: Child(), label: { Text("Next") })
                )
        }
    }
}

struct Parent_Previews: PreviewProvider {
    static var previews: some View {
        Parent()
    }
}
