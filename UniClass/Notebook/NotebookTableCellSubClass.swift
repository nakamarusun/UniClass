//
//  NotebookTableCellSubClass.swift
//  UniClass
//
//  Created by Jason Christian Hailianto on 23/10/19.
//  Copyright © 2019 Jobba Inc. All rights reserved.
//

import UIKit

class NotebookCell: NotebookTableViewCell {
    
    @IBOutlet weak var CellSubtitle: UILabel!
    @IBOutlet weak var cellName: UILabel!
    @IBOutlet weak var cellImage: UIImageView!
    
}

class TopicCell: NotebookTableViewCell {
    
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellName: UILabel!
    
}
