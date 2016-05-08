//
//  TestTableViewCell.swift
//  xib_cell_training
//
//  Created by Takahiro Noguchi on 2016/05/07.
//  Copyright © 2016年 Takahiro Noguchi. All rights reserved.
//

import UIKit

class TestTableViewCell: UITableViewCell {

    @IBOutlet weak var Label0: UILabel!
    @IBOutlet weak var Image0: UIImageView!
    @IBOutlet weak var Image1: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
