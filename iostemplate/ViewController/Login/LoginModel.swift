//
//  SigninModel.swift
//  LoginDemoREactiveX
//
//  Created by Confidosoft iMac on 27/02/19.
//  Copyright © 2019 Confidosoft iMac. All rights reserved.
//

class LoginModel
{
    var email = ""
    var password = ""
    
    convenience init(email : String, password : String)
    {
        self.init()
        self.email = email
        self.password = password
    }
}
