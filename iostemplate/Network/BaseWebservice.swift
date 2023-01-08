//
//  BaseWebservice.swift
//  TemplateProject
//
//  Created by apple on 12/11/18.
//  Copyright © 2018 Confidosoft. All rights reserved.
//

import UIKit
import Alamofire

class BaseWebservice: NSObject {
    
    
    let baseUrl = "https://onliacore.azurewebsites.net/api/"
    var token = ""
    var headers : HTTPHeaders = [
        "Accept": "application/json"
    ]
    
    init(aToken : String) {
        token = aToken
        headers.update(name: "Authorization", value: "Bearer " + aToken)
//        headers.updateValue("Bearer " + aToken, forKey: "Authorization")
    }
    
    func call(url : String, isdictionaryRequired : Bool = true , method : HTTPMethod, parameters :  Any, result : @escaping (_ value: Any?, _ error: NSError?) -> Void)  {
        
        var data : Data? = nil
        
        let tempURL = URL(string: baseUrl + url)!
        var finalURL : URL? = nil
        
        if method == HTTPMethod.get || method == HTTPMethod.delete {
            var urlComponents = URLComponents(url: tempURL, resolvingAgainstBaseURL: false)
            if let peram = parameters as? [String : Any] {
                let queryItems = peram.map{
                    return URLQueryItem(name: "\($0)", value: "\($1)")
                }
                urlComponents?.queryItems = queryItems
                finalURL = urlComponents?.url
            }
        } else {
            finalURL = tempURL
            data = try! JSONSerialization.data(withJSONObject: parameters)
        }
        
        print("finalURL : " + (finalURL?.absoluteString ?? ""))
        print("Token" + "\(token)")
        var request = URLRequest(url: finalURL!)
        request.httpMethod = method.rawValue
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("Bearer " + token, forHTTPHeaderField: "Authorization")
        //let values = ["06786984572365", "06644857247565", "06649998782227"]
        
        request.httpBody = data
       
        let aRequest = AF.request(request)
        
        
        aRequest.responseData { response in
                switch response.result {
                case .success(let value):
                    print(String(data: value, encoding: .utf8)!)
                    result(data, nil)
                case .failure(let error):
                    print(error)
                    let responseCode = error.responseCode ?? -1
                    let errorTemp = NSError(domain: error.localizedDescription, code:responseCode, userInfo:nil)
                    result(nil, errorTemp)
                }
            }
        }
    
    
    
    func upload(url : String, imgData : Data, parameters :  Any, result : @escaping (_ value: Any?, _ error: NSError?) -> Void)  {
        
        var data : Data? = nil
        
        let tempURL = URL(string: baseUrl + url)!
        
        
        var request = URLRequest(url: tempURL)
        request.httpMethod = HTTPMethod.post.rawValue
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        do {
            data = try JSONSerialization.data(withJSONObject: parameters, options: [])
        } catch {
            print(error)
            return
        }
        
        request.setValue("Bearer " + token, forHTTPHeaderField: "Authorization")
       
        AF.upload(multipartFormData: { multipartFormData in
            multipartFormData.append(imgData, withName: "invoiceimg",fileName: "file.jpg", mimeType: "image/jpg")
            multipartFormData.append(data!, withName: "uploadDto")
        }, with: request).uploadProgress(queue: .main, closure: { progress in
            //Current upload progress of file
            print("Upload Progress: \(progress.fractionCompleted)")
        })
        .responseString { response in
            switch response.result {
            case .success(let value):
//                print(String(data: value, encoding: .utf8)!)
                result(data, nil)
            case .failure(let error):
                print(error)
                let responseCode = error.responseCode ?? -1
                let errorTemp = NSError(domain: error.localizedDescription, code:responseCode, userInfo:nil)
                result(nil, errorTemp)
            }
        }
        
//        AF.upload(multipartFormData: { multipartFormData in
//            multipartFormData.append(imgData, withName: "invoiceimg",fileName: "file.jpg", mimeType: "image/jpg")
//            multipartFormData.append(data!, withName: "uploadDto")
//        },with: request,encodingCompletion: { encodingResult in
//
//
//
//            switch encodingResult {
//
//            case .success(let upload, _, _):
//
//                upload.responseString { response in
//                    print("Response :" + response.result.value!)
//                    let data = self.convertToDictionary(text: response.result.value ?? "")
//                    result(data, nil)
//                }
//            case .failure(let error):
//                var message = ""
//                var tCode = -1
//                print(error)
//                if let error = error as? AFError {
//                    switch error {
//                    case .invalidURL(let url):
//                        message = "Invalid URL: \(url) - \(error.localizedDescription)"
//                        print(message)
//                    case .parameterEncodingFailed(let reason):
//                        message = "Parameter encoding failed: \(error.localizedDescription)"
//                        print(message)
//                        print("Failure Reason: \(reason)")
//                    case .multipartEncodingFailed(let reason):
//                        message = "Multipart encoding failed: \(error.localizedDescription)"
//                        print(message)
//                        print("Failure Reason: \(reason)")
//                    case .responseValidationFailed(let reason):
//                        message = "Response validation failed: \(error.localizedDescription)"
//                        print(message)
//                        print("Failure Reason: \(reason)")
//
//                        switch reason {
//                        case .dataFileNil, .dataFileReadFailed:
//                            message = "Downloaded file could not be read"
//                            print(message)
//                        case .missingContentType(let acceptableContentTypes):
//                            message = "Content Type Missing: \(acceptableContentTypes)"
//                            print(message)
//                        case .unacceptableContentType(let acceptableContentTypes, let responseContentType):
//                            message = "Response content type: \(responseContentType) was unacceptable: \(acceptableContentTypes)"
//                            print(message)
//                        case .unacceptableStatusCode(let code):
//                            message = "Response status code was unacceptable: \(code)"
//
//                            print(message)
//                        }
//                    case .responseSerializationFailed(let reason):
//                        message = "Response serialization failed: \(error.localizedDescription)"
//                        print(message)
//                        print("Failure Reason: \(reason)")
//                    }
//                    tCode = error.responseCode ?? -1
//                    print("Underlying error: \(String(describing: error.underlyingError))")
//                } else if let error = error as? URLError {
//                    message = "Please check your Internet connection OR try after some time"
//                    print("URLError occurred: \(error)")
//                } else {
//                    print("Unknown error: \(error)")
//                }
//                let errorTemp = NSError(domain:message, code:tCode, userInfo:nil)
//                result(nil, errorTemp)
//            }
//        })
        
    }
    
    public func convertToDictionary(text: String) -> Any? {
        if let data = text.data(using: .utf8) {
            do {
                let pd = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
                
                if pd == nil {
                    
                    let pa = try JSONSerialization.jsonObject(with: data, options: []) as? [[String: Any]]
                    if pa == nil {
                        return text
                    }
                    return pa
                    
                }
                return pd
            } catch {
                
                print(error.localizedDescription)
                return text
            }
        }
        return nil
    }
}
