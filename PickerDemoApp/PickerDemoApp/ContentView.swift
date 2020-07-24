//
//  ContentView.swift
//  PickerDemoApp
//
//  Created by Ashish Prajapati on 18/09/19.
//  Copyright © 2019 Ashish Prajapati. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var colors = ["Red", "Green", "Blue", "Balck", "White"]
    @State var isSelectedColor = 0
    
    var body: some View {

        VStack {
            Text("Please choose a color")
            Picker(selection: $isSelectedColor, label: Text("")) {
                ForEach(0..<colors.count){
                    Text(self.colors[$0])
                }
            }
             Text("You selected: \(colors[isSelectedColor])")
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
