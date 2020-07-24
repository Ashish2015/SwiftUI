//
//  AppGlobals.swift
//  FunPhotos
//
//  Created by Ashish Prajapati on 06/08/19.
//  Copyright © 2019 Ashish Prajapati. All rights reserved.
//

import UIKit

///**********************************///
///************  GLOBALS ************///

func printDebug<T>(_ obj : T) {
    print(obj)
}

typealias JsonDictionary = [String:Any]

func delay(seconds: Double, completion: @escaping () -> ()) {
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
        completion()
    }
}

///************  GLOBALS ************///

enum AppConstants {
    static let clientId = "5cbc85eb7d2020c395ee120b8e0b54849638ea6044674f72638be0b241cd8d47"
}


extension AppDelegate {
    static let shared: AppDelegate = UIApplication.shared.delegate as! AppDelegate
}

extension SceneDelegate {
    static var shared: SceneDelegate? {
        guard let scene = UIApplication.shared.connectedScenes.first else {
            fatalError("There is no scene connected to the window. Or You might not using SwiftUI")
        }
        
        return scene.delegate as? SceneDelegate
    }
}
