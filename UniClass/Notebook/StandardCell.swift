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
    var cellRating: Float
    
    init() {
        cellName = "NULL"
        cellSubtitle = "NULL"
        cellImage = UIImage(named: "Nyes")!
        cellRating = 2.5
    }
    
    init(cellName: String, cellSubtitle: String, cellImage: UIImage, cellRating: Float) {
        self.cellName = cellName
        self.cellSubtitle = cellSubtitle
        self.cellImage = cellImage
        self.cellRating = cellRating
    }
    
    init(cellName: String, cellSubtitle: String, cellImage: UIImage) {
        self.cellName = cellName
        self.cellSubtitle = cellSubtitle
        self.cellImage = cellImage
        self.cellRating = 2.5
    }
    
    init(cellName: String, cellSubtitle: String) {
        self.cellName = cellName
        self.cellSubtitle = cellSubtitle
        self.cellImage = UIImage(named: "Nyes")!
        self.cellRating = 2.5
    }
    
}

class TopicClass {
    
    var cellImage: UIImage
    var cellName: String
    
    init() {
        
        cellImage = UIImage(named: "Nyes")!
        cellName = "NULL"
    }
    
    init(cellImage: UIImage, cellName: String) {
        
        self.cellImage = cellImage
        self.cellName = cellName
        
    }
    
    init(cellName: String) {
        
        self.cellImage = UIImage(named: "Nyes")!
        self.cellName = cellName
    }
}
