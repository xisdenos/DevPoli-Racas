//
//  UIViewController+Extensions.swift
//  DezRacas
//
//  Created by Lucas Pinto on 26/10/22.
//

import UIKit

extension UIViewController {
    
    func showMessage(withTitle title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
