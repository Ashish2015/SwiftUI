//
//  FromPickerView.swift
//  PickerDemoApp
//
//  Created by Ashish Prajapati on 18/09/19.
//  Copyright © 2019 Ashish Prajapati. All rights reserved.
//

import SwiftUI

struct FromPickerView: View {
    
    var colors = ["Red", "Green", "Blue", "Balck", "White"]
    @State var isSelectedColor = 0
    var body: some View {
            NavigationView {
                    Form {
                        Section {
                           Picker(selection: $isSelectedColor, label: Text("Strength")) {
                               ForEach(0 ..< colors.count) {
                                   Text(self.colors[$0])
                               }
                           }
                        }
                    }.navigationBarTitle("Select your cheese")
             }
        }
}

#if DEBUG
struct FromPickerView_Previews: PreviewProvider {
    static var previews: some View {
        FromPickerView()
    }
}
#endif
