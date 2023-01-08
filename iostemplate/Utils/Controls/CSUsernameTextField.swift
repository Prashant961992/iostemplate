//
//  CSUsernameTextField.swift
//  TemplateProject
//
//  Created by apple on 20/08/18.
//  Copyright © 2018 Confidosoft. All rights reserved.
//

import UIKit

class CSUsernameTextField: UITextField {

    @IBInspectable var isEmail : Bool = false
    @IBInspectable var placeholder1: String?
    
    override func awakeFromNib() {
        self.keyboardType = .emailAddress
        self.autocorrectionType = .no
        //self.delegate = self
    }
        
    override func layoutSubviews() {
        
    }
    func isValid() -> Bool{
        if let value = self.text {
            if isEmail{
                return value.isValidEmail()
            } else {
                return value.isValidUsername()
            }
        }
        return false
    }
}

extension CSUsernameTextField : UITextFieldDelegate {
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
            if isEmail{
                if value.isValidEmail() {
                    print(value + " is valied email")
                } else {
                    print(value + " is invalid email")
                    if let vc = findViewController() {
                        vc.showSnackbar("Invalid email")
                    }
                }
            } else {
                if value.isValidUsername() {
                    print(value + " is valied username")
                } else {
                    print(value + " is invalid username")
                    if let vc = findViewController() {
                        vc.showSnackbar("Invalid username")
                    }
                }
            }
        }
    }
}
