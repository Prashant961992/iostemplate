//
//  BaseViewController.swift
//  TemplateProject
//
//  Created by apple on 20/08/18.
//  Copyright © 2018 Confidosoft. All rights reserved.
//

import UIKit
import KRProgressHUD

protocol BaseViewControllerProtocol {
    func createViewModelBinding()
    func createCallbacks()
}

class BaseViewController: UIViewController {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showSnackbar(_ message : String) {
//        let snackbar = TTGSnackbar.init(message: message, duration: .long)
//        snackbar.containerView = self.view
//        snackbar.animationType = .slideFromTopBackToTop
//        snackbar.show()
    }
    
    func showHud(message : String = "Please wait...")  {
        KRProgressHUD.set(style: .custom(background: .black, text: .white, icon: nil)).show(withMessage: message)
    }
    
    func hideHud() {
        KRProgressHUD.dismiss()
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
