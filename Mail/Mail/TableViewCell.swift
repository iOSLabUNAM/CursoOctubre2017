//
//  TableViewCell.swift
//  Mail
//
//  Created by macbookUser on 18/10/17.
//  Copyright © 2017 macbookUser. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var remitente: UILabel!
    @IBOutlet weak var asunto: UILabel!
    @IBOutlet weak var contenido: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
