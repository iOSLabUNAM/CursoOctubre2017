//
//  ViewController.swift
//  login
//
//  Created by macbookUser on 11/10/17.
//  Copyright © 2017 macbookUser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 5
        loginButton.layer.borderWidth = 1
        loginButton.layer.borderColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

