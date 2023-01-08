//
//  ForgotPassowrdViewController.swift
//  TemplateProject
//
//  Created by apple on 20/08/18.
//  Copyright © 2018 Confidosoft. All rights reserved.
//

import UIKit

class ForgotPassowrdViewController: BaseViewController {

    @IBOutlet weak var tfEmail: CSUsernameTextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "Forgot Password"
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
    @IBAction func btnSubmitTapped(_ sender: UIButton) {
        if tfEmail.isValid() {
            self.navigationController?.popViewController(animated: true)
        } else {
            showSnackbar("Please enter valid email")
        }
    }
    
}
