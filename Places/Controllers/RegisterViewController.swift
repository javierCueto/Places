//
//  RegisterViewController.swift
//  Places
//
//  Created by José Javier Cueto Mejía on 22/10/20.
//

import UIKit

class RegisterViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var loginViewButton: UIButton!
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var registerViewButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!

    @IBOutlet weak var passTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        registerNotifications()
        loginViewButton.borderButtom(color: "Second")
        registerViewButton.borderButtom(color: "Main")
        registerButton.round()
        userNameTextField.delegate = self
        emailTextField.delegate = self
        passTextField.delegate = self
        self.dismissKey()

        // Do any additional setup after loading the view.
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        emailTextField.resignFirstResponder()
        passTextField.resignFirstResponder()
        userNameTextField.resignFirstResponder()
        return true
    }
    

    @IBAction func registerAction(_ sender: Any) {
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        scrollView.contentInset.bottom = 0
    }

    private func registerNotifications() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    @objc private func keyboardWillShow(notification: NSNotification){
        guard let keyboardFrame = notification.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as? NSValue else { return }
        scrollView.contentInset.bottom = view.convert(keyboardFrame.cgRectValue, from: nil).size.height
    }

    @objc private func keyboardWillHide(notification: NSNotification){
        scrollView.contentInset.bottom = 0
    }

    
}
