//
//  UIViewController+Extensions.swift
//  OmnieCommerceAdmin
//
//  Created by msm72 on 02.02.17.
//  Copyright © 2017 Omniesoft. All rights reserved.
//

import UIKit

extension UIViewController {
    func displayAlert(title: String, message: String) {
        let alertVC = UIAlertController.init(title: title, message: message, preferredStyle: .alert)
        
        let actionOk = UIAlertAction.init(title: "Ok", style: .default) { action in
            print("Button Ok pressed")
        }
        
        alertVC.addAction(actionOk)

        present(alertVC, animated: true, completion: nil)
    }
}
