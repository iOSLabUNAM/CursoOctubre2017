//
//  ViewController.swift
//  WebFishes
//
//  Created by macbookUser on 30/10/17.
//  Copyright © 2017 macbookUser. All rights reserved.
//

import UIKit
import Kingfisher

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableview: UITableView!
    
    var fishes : [Fish] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let jsonString = "https://plasticfishes.herokuapp.com/api/fishes"
        guard let url = URL(string: jsonString) else { return }
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            guard let data = data else { return }
            do {
                let fish = try JSONDecoder().decode([Fish].self, from: data)
                self.fishes.append(contentsOf: fish)
                DispatchQueue.main.sync(execute: {
                    self.tableview.reloadData()
                })
            }catch let error {
                print(error)
            }
        }.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fishes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomTableViewCell
        cell.nombreEtiqueta.text = fishes[indexPath.row].name
        
        /*if let imageURL = URL(string: fishes[indexPath.row].image_url){
            let dataImage = NSData(contentsOf: imageURL)
            cell.imageview.image = UIImage(data: dataImage! as Data)
        }*/
        
        let url = URL(string: fishes[indexPath.row].image_url )
        cell.imageview.kf.setImage(with: url)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

}

