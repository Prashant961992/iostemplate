//
//  CSUsernameTextField.swift
//  TemplateProject
//
//  Created by apple on 20/08/18.
//  Copyright © 2018 Confidosoft. All rights reserved.
//

import UIKit

class CSPasswordTextField: UITextField {

//    @IBInspectable var isEmail : Bool = false
    
    override func awakeFromNib() {
        self.isSecureTextEntry = true
        //self.delegate = self
    }
        
    override func layoutSubviews() {
        
    }
    
    func isValid() -> Bool{
        if let value = self.text {
            
                return value.isValidPassword()
            
        }
        return false
    }

}

extension CSPasswordTextField : UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        /*if let value = textField.text {
            if isEmail{
                return value.isValidEmail()
            } else {
                return value.isValidUsername()
            }
        }
        return false*/
        
        return true
    }
    
    
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if let value = textField.text {
            
                if value.isValidPassword() {
                    print(value + " is valied password")
                    
                } else {
                    print(value + " is invalid password")
                    if let vc = findViewController() {
                        vc.showSnackbar("Invalid Password\nMinimum 8 characters at least 1 Alphabet and 1 Number")
                    }
                }
            
        }
    }
}
