//
//  LoginViewController.swift
//  TemplateProject
//
//  Created by apple on 20/08/18.
//  Copyright © 2018 Confidosoft. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class LoginViewController: BaseViewController, BaseViewControllerProtocol {

    @IBOutlet weak var tfUsername: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var btnLogin: CSActiveButton!
    
    let viewModel = LoginViewModel()
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated:false)
        self.navigationItem.title = "Login"
        
        createViewModelBinding();
        createCallbacks()
        
        tfUsername.text = "admin@confidosoft.com"
        tfPassword.text = "Test@123"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
   
    
    func createViewModelBinding(){
        
        tfUsername.rx.text.orEmpty
            .bind(to: viewModel.emailIdViewModel.data)
            .disposed(by: disposeBag)
        
        tfPassword.rx.text.orEmpty
            .bind(to: viewModel.passwordViewModel.data)
            .disposed(by: disposeBag)
        
        btnLogin.rx.tap.do(onNext:  { [unowned self] in
            self.view.endEditing(true)
        }).subscribe(onNext: { [unowned self] in
            if !self.viewModel.emailIdViewModel.validateCredentials() {
                self.showSnackbar("Please enter valid email")
            } else if !self.viewModel.passwordViewModel.validateCredentials() {
                self.showSnackbar("Please enter valid password")
            } else if self.viewModel.validateCredentials() {
                self.viewModel.loginUser()
            }
            
            
        }).disposed(by: disposeBag)
        
    }
    
    func createCallbacks (){
        
        // success
        viewModel.isSuccess.asObservable()
            .bind{ value in
                if value{
                    NSLog("Successfull")
                    self.navigationController?.popViewController(animated: true)
                }
            }.disposed(by: disposeBag)
        
        // errors
        viewModel.errorMsg.asObservable()
            .bind { errorMessage in
                if errorMessage.count > 0 {
                // Show error
                    NSLog("Failure : " + errorMessage)
                    
                }
            }.disposed(by: disposeBag)
        
        viewModel.isLoading.asObservable()
            .bind { value in
                if value {
                    self.showHud()
                } else {
                    self.hideHud()
                }
        }.disposed(by: disposeBag)
        
    }
    
}
