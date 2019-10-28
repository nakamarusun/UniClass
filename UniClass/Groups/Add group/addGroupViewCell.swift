//
//  addGroupViewCell.swift
//  UniClass
//
//  Created by Jason Christian Hailianto on 29/10/19.
//  Copyright © 2019 Jobba Inc. All rights reserved.
//

import UIKit

class addGroupViewCell: UITableViewCell {

    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellTitle: UILabel!
    @IBOutlet weak var cellDesc: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
