//
//  CustomCell.swift
//  MovieCinema
//
//  Created by RainSea on 11/13/14.
//  Copyright (c) 2014 RainSea. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet weak var thumb: UIImageView!

    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var title: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
