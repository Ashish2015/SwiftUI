//
//  UnsplashPhotoViewModel.swift
//  FunPhotos
//
//  Created by Ashish Prajapati on 06/08/19.
//  Copyright © 2019 Ashish Prajapati. All rights reserved.
//

import Foundation
import Combine
import SwiftUI
import UIKit



final class UnsplashPhotoViewModel: ObservableObject {
    
    var totalPages = 0
    @Published var photos:[UnsplashPhoto] = []
   
    init() {
        fetchAllTopPhotos(success: {
            print("Get all Unsplash Photos")
        }, error: {
            print("Error: can't get Unsplash Photos")
        })
    }
    
    
    private func fetchAllTopPhotos(_ pageNum:String = "", _ isLoading:Bool = false, success successCallback: @escaping () -> Void, error errorCallback: @escaping () -> Void) {
            
        let param: [String: Any] = ["client_id": AppConstants.clientId]
            
            if isLoading == true {}
            
            API.request(target: .photos(param: param), success: { (jsonData) in
                self.photos = load(jsonData)
                successCallback()

            }, error: { (error) in
                errorCallback()
            }, failure: { (error) in
                errorCallback()
            })
        }
    
}
