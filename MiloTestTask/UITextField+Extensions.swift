//
//  UITextField+Extensions.swift
//  MiloTestTask
//
//  Created by msm72 on 02.02.17.
//  Copyright © 2017 Omniesoft. All rights reserved.
//

import UIKit

extension UITextField {
    func addCancelButton() {
        let clearButton = UIButton(type: .custom)
        clearButton.setImage(UIImage.init(named: "textfield-cancel-button"), for: .normal)
        clearButton.frame = CGRect.init(x: 0, y: 0, width: 15, height: 15)
        clearButton.imageEdgeInsets = UIEdgeInsets.init(top: 0, left: -8, bottom: 0, right: 8)
        clearButton.contentMode = .scaleAspectFit
        
        clearButton.addTarget(self, action: #selector(clear), for: .touchUpInside)
        
        rightView = clearButton
        clearButtonMode = .whileEditing
    }
    
    func clear(sender: AnyObject) {
        text = ""
    }
}
