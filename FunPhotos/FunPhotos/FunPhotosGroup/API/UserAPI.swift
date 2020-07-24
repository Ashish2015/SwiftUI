//
//  UserAPI.swift
//  CosmicCamera
//
//  Created by indianic on 04/06/18.
//  Copyright © 2018 indianic. All rights reserved.
//

import UIKit
import Foundation
import Moya

enum UserAPI {
    case photos(param: [String: Any])
    case collections(param: [String: Any])

}

extension UserAPI: TargetType {
    var baseURL: URL {
        guard let url = URL(string: K.baseURL) else { fatalError("baseURL could not be configured") }
        return url
    }

    var path: String {
        switch self {
        case .photos:
            return "photos"
        case .collections:
            return "collections"
        }
        
    }

    var method: Moya.Method {
        switch self {
        case .photos, .collections :
            return .get
        }
    }

    var parameterEncoding: ParameterEncoding {
        return JSONEncoding.default
    }
    var sampleData: Data {
        return Data()
    }

    var task: Task {
        switch self {
        case .photos(let param),
             .collections(param: let param):
             return .requestParameters(parameters: param, encoding: URLEncoding.queryString)
        /*case .profileUpdate(let param), .signUp(let param):
            var formData = fillFormDataSkippingFile(param: param)
            if let image = param["avatar"] as? UIImage {
                let data = UIImageJPEGRepresentation(image, 0.5)
                formData.append(MultipartFormData.init(provider: .data(data!), name: "avatar", fileName: "image.png", mimeType: "image/png"))
            }
            return .uploadMultipart(formData)
        case .feedback(let param):
            var formData = dataSkippingFile(param: param)
            if let arrContent = param["files"] as? [ContentModel] {
                for content in arrContent {
                    
                    if content.type == resourceType.image.rawValue {
                        let data = UIImageJPEGRepresentation(content.img!, 0.5)
                        formData.append(MultipartFormData.init(provider: .data(data!), name: "files", fileName: "image.png", mimeType: "image/png"))
                    } else {
                        do {
                            let data = try Data(contentsOf: content.url!)
                            formData.append(MultipartFormData.init(provider: .data(data), name: "files", fileName: "video.mp4", mimeType: "video/mp4"))
                        } catch {
                            print("Unable to load data: \(error)")
                        }
                    }
                }
            }
            return .uploadMultipart(formData) */
        }
    }

    var headers: [String: String]? {
        switch self {
        default:
            return ["Content-Type": "application/json"]
        }
    }
    
    //    Helper functions
    internal func fillFormDataSkippingFile(param: [String: Any]) -> [Moya.MultipartFormData] {
        var aDictData = param
        aDictData.removeValue(forKey: "avatar")
        var formData = [Moya.MultipartFormData]()
        
        for strKey in aDictData.keys {
            formData.append(MultipartFormData(provider: .data((aDictData[strKey] as! String).data(using: .utf8)!), name: strKey))
        }
        return formData
    }
    
    internal func dataSkippingFile(param: [String: Any]) -> [Moya.MultipartFormData] {
        var aDictData = param
        aDictData.removeValue(forKey: "files")
        var formData = [Moya.MultipartFormData]()
        
        for strKey in aDictData.keys {
            formData.append(MultipartFormData(provider: .data((aDictData[strKey] as! String).data(using: .utf8)!), name: strKey))
        }
        return formData
    }
}
