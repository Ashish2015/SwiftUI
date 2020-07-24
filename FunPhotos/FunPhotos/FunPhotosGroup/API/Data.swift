//
//  Data.swift
//  FunPhotos
//
//  Created by Ashish Prajapati on 07/08/19.
//  Copyright © 2019 Ashish Prajapati. All rights reserved.
//

import Foundation
import SwiftUI

let unsplashPhotoViewModel:UnsplashPhotoViewModel = UnsplashPhotoViewModel()

func load<T: Decodable>(_ data: Data, as type: T.Type = T.self) -> T {
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse as \(T.self):\n\(error)")
    }
}
