//
//  Child.swift
//  AdvanceSwiftUIDemo
//
//  Created by Ashish Prajapati on 23/10/19.
//  Copyright © 2019 Ashish Prajapati. All rights reserved.
//

import SwiftUI

struct Child: View {
    @Environment(\.presentationMode) var presentation
    var body: some View {
        Text("Hello, World!")
            .navigationBarItems(
                leading: Button(
                    action: {
                        self.presentation.wrappedValue.dismiss()
                    },
                    label: { Text("Back") }
                )
            )
    }
}

struct Child_Previews: PreviewProvider {
    static var previews: some View {
        Child()
    }
}
