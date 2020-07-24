//
//  TextFiled.swift
//  AdvanceSwiftUIDemo
//
//  Created by Ashish Prajapati on 23/10/19.
//  Copyright © 2019 Ashish Prajapati. All rights reserved.
//

import SwiftUI

struct TextFiled: View {
     @State private var x = 0.0
       @State private var y = 0.0

       private var numberFormatter: NumberFormatter {
           let numFormatter = NumberFormatter()
           numFormatter.usesSignificantDigits = true
           return numFormatter
       }

       var body: some View {

           VStack(spacing: 20) {
               HStack {
//                   TextField("Enter X", value: $x, formatter: numberFormatter)
//                       .frame(width: 120)
                TextField("Enter X", value: $x, formatter: numberFormatter, onEditingChanged: { _ in
                    self.y = self.x + 3
                })
                   Text("X where X = Y / 2")
                       .frame(alignment: .leading)
               }
               HStack {
                
//                   TextField("Enter Y", value: $y, formatter: numberFormatter)
//                       .frame(width: 120)
                
                TextField("Enter Y", value: $y, formatter: numberFormatter, onEditingChanged: { _ in
                                   self.x = self.y / 2
                               })
                   Text("Y where Y = X + 3")
                       .frame(alignment: .leading)
               }
           }
           .padding()
           .frame(width: 400)

       }
}

struct TextFiled_Previews: PreviewProvider {
    static var previews: some View {
        TextFiled()
    }
}
