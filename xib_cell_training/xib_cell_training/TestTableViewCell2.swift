//
//  TestTableViewCell2.swift
//  xib_cell_training
//
//  Created by Takahiro Noguchi on 2016/05/08.
//  Copyright © 2016年 Takahiro Noguchi. All rights reserved.
//

import UIKit

class TestTableViewCell2: UITableViewCell {

    @IBOutlet weak var Label1: UILabel!
    @IBOutlet weak var Image2: UIImageView!
    @IBOutlet weak var Image3: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
