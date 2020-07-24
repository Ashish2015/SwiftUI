//
//  File.swift
//  FunPhotos
//
//  Created by Ashish Prajapati on 20/08/19.
//  Copyright © 2019 Ashish Prajapati. All rights reserved.
//

import Foundation

import Foundation
import Combine
import SwiftUI
import UIKit



class UnsplashCollectionsViewModel:ObservableObject {
    
    var totalPages = 0
   
    @Published var relatedPhotos:[UnsplashPhoto] = []
   
    init(_ id:String) {
        fetchRelatedPhotos(id, success: {
            print("Get all related unsplash Photos")
        }, error: {
            print("Error: can't get Unsplash Photos")
        })
    }

    private func fetchRelatedPhotos(_ id:String = "", _ isLoading:Bool = false, success successCallback: @escaping () -> Void, error errorCallback: @escaping () -> Void) {
        
        let param: [String: Any] = ["client_id": AppConstants.clientId,
                                    "id":id]
        
        if isLoading == true {}
        
        API.request(target: .collections(param: param), success: { (jsonData) in
            self.relatedPhotos = load(jsonData)
            successCallback()

        }, error: { (error) in
            errorCallback()
        }, failure: { (error) in
            errorCallback()
        })
    }
}
