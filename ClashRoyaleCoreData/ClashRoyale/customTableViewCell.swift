//
//  customTableViewCell.swift
//  ClashRoyale
//
//  Created by macbookUser on 25/10/17.
//  Copyright © 2017 none. All rights reserved.
//

import UIKit

class customTableViewCell: UITableViewCell {

    @IBOutlet weak var descripcion: UILabel!
    @IBOutlet weak var nombre: UILabel!
    @IBOutlet weak var imagen: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
