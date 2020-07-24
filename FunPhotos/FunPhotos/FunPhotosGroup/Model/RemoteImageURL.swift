//
//  RemoteImageURL.swift
//  FunPhotos
//
//  Created by Ashish Prajapati on 07/08/19.
//  Copyright © 2019 Ashish Prajapati. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

class RemoteImageURL: ObservableObject {
            
    @Published var data = Data()
    
    init(imageURL:String) {
        guard let url = URL(string: imageURL) else { return }
        
        URLSession.shared.dataTask(with: url){ (data, response, error) in
            guard let data = data else { return }
            DispatchQueue.main.async {
                self.data = data
            }
        }.resume()
    }
}
