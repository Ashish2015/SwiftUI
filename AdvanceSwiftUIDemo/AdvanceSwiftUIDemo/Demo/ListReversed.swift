//
//  ContentView.swift
//  Landmarks
//
//  Created by Ashish Prajapati on 23/10/19.
//  Copyright © 2019 Apple. All rights reserved.
//

// Note: List reversed in SwiftUI

import SwiftUI

struct ListReversed: View {
    @State private var ids = [String]()

    init() {
        UITableView.appearance().tableFooterView = UIView()
        UITableView.appearance().separatorStyle = .none
    }

    var body: some View {
        ZStack {
            List(ids, id: \.self) { id in
                Text(id).scaleEffect(x: 1, y: -1, anchor: .center)
            }
            .offset(x: 0, y: -1) // remove extra header/footer space
            .scaleEffect(x: 1, y: -1, anchor: .center)

            Button("Touch") {
                self.ids.append(UUID().uuidString)
            }
        }
//        .edgesIgnoringSafeArea(.all)

    }
}

struct ListReversed_Previews: PreviewProvider {
    static var previews: some View {
        ListReversed()
    }
}
