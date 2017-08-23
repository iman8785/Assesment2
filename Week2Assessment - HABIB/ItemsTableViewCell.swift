//
//  ItemsTableViewCell.swift
//  Week2Assessment - HABIB
//
//  Created by Habib Zarrin Chang Fard on 18/08/2017.
//  Copyright © 2017 Habib Zahrrin Chang Fard. All rights reserved.
//

import UIKit

class ItemsTableViewCell: UITableViewCell {

   
    
    @IBOutlet weak var itemImageView: UIImageView!
    
    
    @IBOutlet weak var detailsLabel: UILabel!
    
    @IBOutlet weak var titileLable: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
