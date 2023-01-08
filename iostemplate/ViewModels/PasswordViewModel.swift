//
//  PasswordFieldViewModel.swift
//  LoginDemoREactiveX
//
//  Created by Confidosoft iMac on 27/02/19.
//  Copyright © 2019 Confidosoft iMac. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
class PasswordViewModel : ValidationViewModel {
    
    var errorMessage: String = "Please enter a valid Password"
    
    var data: BehaviorRelay<String> = BehaviorRelay(value: "")
    var errorValue: BehaviorRelay<String?> = BehaviorRelay(value: "")
    
    func validateCredentials() -> Bool {
        
        guard validateLength(text: data.value, size: (6,15)) else{
            errorValue.accept(errorMessage)
            return false;
        }
        
        errorValue.accept("")
        return true
    }
    
    func validateLength(text : String, size : (min : Int, max : Int)) -> Bool{
        print("ullu")
        return (size.min...size.max).contains(text.count)
    }
}
