//
//  Extension.swift
//  labsAMO
//
//  Created by Viktory  on 17.02.2020.
//  Copyright © 2020 Viktory. All rights reserved.
//

import UIKit

extension UIView {
    class var identifier: String {
        return String(describing: self)
    }
}

extension UIViewController {
    
    class var identifier: String {
        return String(describing: self)
    }
}

extension UIViewController {
    func hideKeyboard() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer( target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
