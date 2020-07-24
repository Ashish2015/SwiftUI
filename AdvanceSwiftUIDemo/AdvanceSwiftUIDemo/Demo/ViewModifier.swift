//
//  ViewModifier.swift
//  AdvanceSwiftUIDemo
//
//  Created by Ashish Prajapati on 05/11/19.
//  Copyright © 2019 Ashish Prajapati. All rights reserved.
//

import SwiftUI

struct ViewModifierDemo: View {
    var body: some View {
        Text("Hello World!")
        .modifier(SubheadlineModifier())
    }
}

struct ViewModifierDemo_Previews: PreviewProvider {
    static var previews: some View {
        ViewModifierDemo()
    }
}


struct SubheadlineModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.secondary)
            .font(.subheadline)
    }
}
