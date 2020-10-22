//
//  SignViewController.swift
//  Places
//
//  Created by José Javier Cueto Mejía on 21/10/20.
//

import UIKit

class SignViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var loginViewButton: UIButton!
    @IBOutlet weak var registerViewButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgotPassword: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginViewButton.borderButtom(color: "Main")
        registerViewButton.borderButtom(color: "Second")
        loginButton.round()
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
        self.dismissKey()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        emailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        return true
    }
    
    @IBAction func loginAction(_ sender: Any) {
        performSegue(withIdentifier: "goHome", sender: nil)
    }
    
}
