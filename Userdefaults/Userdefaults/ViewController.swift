//
//  ViewController.swift
//  Userdefaults
//
//  Created by macbookUser on 23/10/17.
//  Copyright © 2017 macbookUser. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var emojiTextField: UITextField!
    @IBOutlet weak var descripcionTextField: UITextField!
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var descripionLabel: UILabel!
    
    var indice = 0
    var nuestrosEmojis : [[String]]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiTextField.delegate = self
        //emojiLabel.alpha = 0.0
        //descripionLabel.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func guardar(_ sender: UIButton) {
        if emojiTextField.text != "" && descripcionTextField.text != "" {
            if var arrEmojis = UserDefaults.standard.object(forKey: "emojis") as? [[String]]{
                let nuevoEmoji = [emojiTextField.text!, descripcionTextField.text!]
                arrEmojis.append(nuevoEmoji)
                UserDefaults.standard.set(arrEmojis, forKey: "emojis")
            }else {
                let nuevoEmoji = [emojiTextField.text!, descripcionTextField.text!]
                UserDefaults.standard.set([nuevoEmoji], forKey: "emojis")
            }
            print("se guardo correctamente")
            //guardar el arreglo en memoria
            //Si no existe el arreglo en memoria
            //creamos un arreglo nuevo
            //Guardamos en memoria
        }else  {
            let alertController = UIAlertController(title: "Faltaron datos", message: "Ingresa todos los campos", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
            let cancelAction = UIAlertAction(title: "Cancelar", style: .destructive, handler: nil)
            alertController.addAction(alertAction)
            alertController.addAction(cancelAction)
            self.present(alertController, animated: true, completion: nil)
        }
        
        
    }
    
    @IBAction func Obtener(_ sender: UIButton) {
        if let arrEmojis = UserDefaults.standard.object(forKey: "emojis") as? [[String]]{
            indice = 0
            emojiLabel.text = arrEmojis[indice][0]
            descripionLabel.text = arrEmojis[indice][1]
            nuestrosEmojis = arrEmojis
        }else {
            print("no se pudo obtener")
        }
    }
    
    @IBAction func anterior(_ sender: UIButton) {
        if indice > 0 {
            indice -= 1
            emojiLabel.text = nuestrosEmojis[indice][0]
            descripionLabel.text = nuestrosEmojis[indice][1]
        }
    }
    
    @IBAction func siguiente(_ sender: UIButton) {
        if indice < nuestrosEmojis.count - 1 {
            indice += 1
            emojiLabel.text = nuestrosEmojis[indice][0]
            descripionLabel.text = nuestrosEmojis[indice][1]
        }
    }
    
    @IBAction func borrar(_ sender: UIButton) {
        UserDefaults.standard.removeObject(forKey: "emojis")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        emojiTextField.resignFirstResponder()
        return true
    }
    
    
    
    
    
    
    
    
    
    

}

