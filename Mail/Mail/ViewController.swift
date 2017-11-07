//
//  ViewController.swift
//  Mail
//
//  Created by macbookUser on 18/10/17.
//  Copyright © 2017 macbookUser. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var correos = [["remitente":"mm.dracos@gmail.com","asunto":"curso Swift","contenido":"estamos haciendo una app para iphone"],["remitente":"mm.dracos@gmail.com","asunto":"curso Swift","contenido":"estamos haciendo una app para iphone"],["remitente":"mm.dracos@gmail.com","asunto":"curso Swift","contenido":"estamos haciendo una app para iphone"],["remitente":"mm.dracos@gmail.com","asunto":"curso Swift","contenido":"estamos haciendo una app para iphone"],["remitente":"mm.dracos@gmail.com","asunto":"curso Swift","contenido":"estamos haciendo una app para iphone"],["remitente":"mm.dracos@gmail.com","asunto":"curso Swift","contenido":"estamos haciendo una app para iphone"],["remitente":"mm.dracos@gmail.com","asunto":"curso Swift","contenido":"estamos haciendo una app para iphone"]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return correos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.remitente.text = correos[indexPath.row]["remitente"]
        cell.asunto.text = correos[indexPath.row]["asunto"]
        cell.contenido.text = correos[indexPath.row]["contenido"]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let deleteAction = UITableViewRowAction(style: .default, title: "Borrar") { (action, indexPath) in
            self.correos.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
        
        let shareAction = UITableViewRowAction(style: .default, title: "Compartir") { (action, indexPath) in
            let deafultText = "Estamos en el ios lab"
            let shareActivity = UIActivityViewController(activityItems: [deafultText], applicationActivities: [])
            self.present(shareActivity, animated: true, completion: nil)
        }
        
        shareAction.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        return [deleteAction,shareAction]
    }


}













