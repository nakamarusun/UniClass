//
//  StandardCell.swift
//  UniClass
//
//  Created by Jason Christian Hailianto on 21/10/19.
//  Copyright © 2019 Jobba Inc. All rights reserved.
//

import UIKit

class StandardCell {

    var cellName: String
    var cellSubtitle: String
    var cellImage: UIImage
    
    init() {
        cellName = "NULL"
        cellSubtitle = "NULL"
        cellImage = UIImage(named: "Nyes")!
    }
    
    init(cellName: String, cellSubtitle: String, cellImage: UIImage) {
        self.cellName = cellName
        self.cellSubtitle = cellSubtitle
        self.cellImage = cellImage
    }
    
    init(cellName: String, cellSubtitle: String) {
        self.cellName = cellName
        self.cellSubtitle = cellSubtitle
        self.cellImage = UIImage(named: "Nyes")!
    }
    
}
