//
//  UINavigationController.swift
//  Places
//
//  Created by José Javier Cueto Mejía on 22/10/20.
//

import UIKit

extension UINavigationController{
    
    func colorText(){
        self.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor(named: "Main")!]
    }
}

