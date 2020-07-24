//
//  ListEdit.swift
//  AdvanceSwiftUIDemo
//
//  Created by Ashish Prajapati on 08/11/19.
//  Copyright © 2019 Ashish Prajapati. All rights reserved.
//

import SwiftUI

struct ListEdit: View {
    @State private var users = ["Paul", "Taylor", "Adele"]

    var body: some View {
        NavigationView {
            List {
                ForEach(users, id: \.self) { user in
                    Text(user)
                    .gesture(
                       TapGesture()
                           .onEnded { _ in                           }
                    )      
                }
                //.onDelete(perform: delete)
                .onMove(perform: relocate)
            }
            .navigationBarItems(trailing: EditButton())
            .navigationBarTitle("Users", displayMode: .inline)

        }

    }

    func delete(at offsets: IndexSet) {
        users.remove(atOffsets: offsets)
    }
    
    func relocate(from source: IndexSet, to destination: Int) {
        users.move(fromOffsets: source, toOffset: destination)
    }
}

struct ListEdit_Previews: PreviewProvider {
    static var previews: some View {
        ListEdit()
    }
}
