//
//  whatshotClass.swift
//  UniClass
//
//  Created by Jason Christian Hailianto on 22/10/19.
//  Copyright © 2019 Jobba Inc. All rights reserved.
//

import UIKit

class whatshotClass {
    
    var cellImage: UIImage!
    var cellData: String
    
    init() {
        
        cellImage = UIImage(named: "Nyes")
        cellData = "Null"
    }
    
    init(cellImage: UIImage, cellData: String) {
        
        self.cellImage = cellImage
        self.cellData = cellData
    }
    
}
