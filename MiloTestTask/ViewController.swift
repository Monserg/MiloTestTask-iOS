//
//  ViewController.swift
//  MiloTestTask
//
//  Created by msm72 on 02.02.17.
//  Copyright © 2017 Omniesoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Properties
    

    // MARK: - Class Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    // MARK: - Actions
    @IBAction func handlerRunButtonTap(_ sender: UIButton) {
        sender.isEnabled = false
        var result = 0
        print("Hello dear user!")
        
        DispatchQueue.global(qos: .userInitiated).async {
            for x in 1...99999 {
                result += x
                print(x)
            }
            
            DispatchQueue.main.async {
                self.displayAlert(title: "Title", message: "We have a result for you! \(result)")
                sender.isEnabled = true
            }
        }
        
        print("How are you today?")
    }
}

