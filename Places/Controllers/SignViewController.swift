//
//  SignViewController.swift
//  Places
//
//  Created by José Javier Cueto Mejía on 21/10/20.
//

import UIKit

class SignViewController: UIViewController {

    @IBOutlet weak var loginViewButton: UIButton!
    @IBOutlet weak var registerViewButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgotPassword: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginViewButton.borderButtom(color: "Main")
        registerViewButton.borderButtom(color: "Second")
        loginButton.round()
    }
    

    @IBAction func loginAction(_ sender: Any) {
    }
    
}
