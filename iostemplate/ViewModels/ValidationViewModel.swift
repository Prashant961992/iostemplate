//
//  VSFieldViewModel.swift
//  LoginDemoREactiveX
//
//  Created by Confidosoft iMac on 27/02/19.
//  Copyright © 2019 Confidosoft iMac. All rights reserved.
//
import RxSwift
import Foundation
import RxCocoa
protocol ValidationViewModel

{
    
    var errorMessage: String { get }
    
    // Observables
    var data: BehaviorRelay<String> { get set }
    var errorValue: BehaviorRelay<String?> { get}
    
    // Validation
    func validateCredentials() -> Bool
}
