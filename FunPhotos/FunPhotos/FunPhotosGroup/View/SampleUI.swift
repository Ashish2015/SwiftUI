//
//  SampleUI.swift
//  FunPhotos
//
//  Created by Ashish Prajapati on 23/08/19.
//  Copyright © 2019 Ashish Prajapati. All rights reserved.
//

import SwiftUI

struct SampleUI: View {
    
    @State var offset: CGFloat = 0.0

    var body: some View {

        return
            GeometryReader { parentGeometry in
                VStack {
                    ScrollView() {
                        VStack {
                            GeometryReader { geometry -> Text in
                                let newOffset = geometry.frame(in: .global).minY
                                if self.offset != newOffset {
                                    self.offset = newOffset
                                }
                                return Text("")
                                // return EmptyView() // don't know why EmptyView doesn't work, it is not rendered when debugging with UI Debugger
                            }
                            
                            ForEach(0..<5, id:\.self ) { index in
                                CellView(index: index)
                            }
                        }
                        .frame(width: parentGeometry.size.width)
                    }
                    Text("Offset: \(self.offset)")
                }
            }
    }
}

struct CellView: View {

    let index: Int

    var body: some View {
        VStack {
            Text("Text \(index)")
            Divider()
        }
    }
    
    //                    HStack {
    //                        Spacer()
    //                        Text("Login")
    //                            .font(.custom(App.fontRegular, size: 16))
    //                            .foregroundColor(.white)
    //                            .padding(.leading, -40)
    //                        Spacer()
    //                    }.frame(height:30)
    //                        .padding(.top, 10)
    //                        .padding(.leading, 10)
    //                     .foregroundColor(color.buttonBackground)
    //
    //                    Divider()
}

#if DEBUG
struct SampleUI_Previews: PreviewProvider {
    static var previews: some View {
        SampleUI()
    }
}
#endif
