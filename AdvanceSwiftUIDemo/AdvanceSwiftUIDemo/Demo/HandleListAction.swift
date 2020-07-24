//
//  HandleListAction.swift
//  AdvanceSwiftUIDemo
//
//  Created by Ashish Prajapati on 23/10/19.
//  Copyright © 2019 Ashish Prajapati. All rights reserved.
//

import SwiftUI

struct HandleListAction: View {
    
    var body: some View {
        NavigationView {
            List {
                ForEach(0...5, id: \.self) { id_sec in
                    Section(header: Text("Header")) {
                        ForEach(0...5, id: \.self) { id in
                            HStack {
                                Text("movieName")
                                    .onTapGesture {
                                        return
                                }.frame(width: 150, height: 30, alignment: .leading)
                                Spacer()

                                Button(action: {}, label: {
                                    Text("Rate us")
                                        .background(Color.red)
                                        .onTapGesture {
                                            print("Rate us \(id_sec) : \(id)")
                                    }
                                    }).padding()

                                Spacer()
                                Button(action: {}, label: {                                 Text("Watch")
                                        .background(Color.red)
                                    .onTapGesture {
                                        print("Watch \(id_sec) : \(id)")
                                    }
                                    }).padding()
                            }

                        }
                    }
                }
            }.navigationBarTitle("Heros List")
        }
    }
}

struct HandleListAction_Previews: PreviewProvider {
    static var previews: some View {
        HandleListAction()
    }
}
