//
//  RowTableViewCell.swift
//  Day 3(Pull to refresh)
//
//  Created by Sonali on 1/30/18.
//  Copyright © 2018 Sonali. All rights reserved.
//

import UIKit

class RowTableViewCell: UITableViewCell {
    @IBOutlet weak var rowLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
