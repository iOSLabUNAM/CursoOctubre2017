//
//  ViewController.swift
//  HelloWorld
//
//  Created by Jorge MR on 09/10/17.
//  Copyright © 2017 ios.Lab.Fi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculaEdad(_ sender: UIButton) {
        var edad = Int(textField.text!)!
        edad = edad * 7
        resultLabel.text = String(edad)
    }
    
}

