//
//  UIViewController.swift
//  Places
//
//  Created by José Javier Cueto Mejía on 22/10/20.
//
import UIKit

extension UIViewController {
    
    func dismissKey(){
        let tap: UITapGestureRecognizer = UITapGestureRecognizer( target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }
}
