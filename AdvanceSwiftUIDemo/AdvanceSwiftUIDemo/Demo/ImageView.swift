//
//  ImageView.swift
//  Landmarks
//
//  Created by Ashish Prajapati on 23/10/19.
//  Copyright © 2019 Apple. All rights reserved.
//

// Note: ScrollView Demo

import SwiftUI

struct ImageView: View {
    
    init() {
//        //Use this if NavigationBarTitle is with Large Font
        UINavigationBar.appearance().backgroundColor = .red
    }
    var body: some View {
        NavigationView {
            VStack {
                ScrollView([.vertical], showsIndicators: true) {
                    VStack {
                        ForEach(0...50, id: \.self) { _ in
                            HStack {
                                Spacer()
                                 Text("Text text")
                                Spacer()
                            }
                        }
                    }
                    .background(Color.red)
                } .edgesIgnoringSafeArea(.top)
            }
            .navigationBarTitle(Text("Title") , displayMode: .large)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}

// Create your own SwiftUI Color with Color extension

extension Color {
    public static let myCustomColor: Color = Color(UIColor(red: 219/255, green: 175/255, blue: 15/255, alpha: 1.0))
}
