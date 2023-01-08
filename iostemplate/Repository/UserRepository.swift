//
//  UserWebservice.swift
//  TemplateProject
//
//  Created by apple on 12/11/18.
//  Copyright © 2018 Confidosoft. All rights reserved.
//

import UIKit
import Alamofire

class UserRepository: NSObject {
    var ws : BaseWebservice?
    init(token : String) {
        ws  = BaseWebservice(aToken: token)
    }
    
    func login(parameters : [String : Any], result : @escaping (_ value: CSLoginResonse?, _ error: Error?) -> Void)  {
        
        ws?.call(url: "Auth/login", method: HTTPMethod.post , parameters: parameters, result: { (value, error) in
            if value != nil {
                let response : CSLoginResonse = CSLoginResonse.init(fromDictionary: value as! [String : Any])
                result(response, error)
            } else {
                result(nil, error)
            }
            
        })
    }
    
    func renewToken(parameters : [String : Any], result : @escaping (_ value: CSLoginResonse?, _ error: Error?) -> Void)  {
        
        ws?.call(url: "Auth/renew-token", method: HTTPMethod.post , parameters: parameters, result: { (value, error) in
            if value != nil {
                let response : CSLoginResonse = CSLoginResonse.init(fromDictionary: value as! [String : Any])
                result(response, error)
            } else {
                result(nil, error)
            }
            
        })
    }
    
}
