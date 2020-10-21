//
//  UIButtonExtension.swift
//  Places
//
//  Created by José Javier Cueto Mejía on 21/10/20.
//

import UIKit

extension UIButton{
    
    func round(){
        layer.cornerRadius = bounds.height / 2
        clipsToBounds = true
    }
    
    func bounce() {
        UIView.animate(withDuration: 0.3 ,animations: {
            self.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        }) { (completion)  in
            UIView.animate(withDuration: 0.3, animations :{
                self.transform = .identity
            })
        }
    }
    
    func shine(){
        print("here brillo")
        UIView.animate(withDuration: 0.1 ,animations: {
            self.alpha = 0.5
        }) { (completion)  in
            UIView.animate(withDuration: 0.1, animations :{
                self.alpha = 1
            })
        }
    }
    
    
    func jump(){
        UIView.animate(withDuration: 0.1 ,animations: {
            self.transform = CGAffineTransform(translationX: 10, y: 0)
        }) { (completion)  in
            UIView.animate(withDuration: 0.1, animations :{
                self.transform = .identity
            })
        }
    }
    
    func borderButtom(color: String){
        let lineView = UIView(frame: CGRect(x: 0, y: self.frame.size.height, width: self.frame.size.width, height: 3))
        lineView.backgroundColor = UIColor(named: color)
        self.addSubview(lineView)
    }
    

    
}
