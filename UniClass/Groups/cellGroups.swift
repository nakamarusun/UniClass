//
//  cellGroups.swift
//  UniClass
//
//  Created by Nicholas Audley on 22/10/19.
//  Copyright © 2019 Jobba Inc. All rights reserved.
//

import UIKit

class cellGroupMessage {
    
    var cellImage: UIImage
    var cellTitle: String
    var cellMessenger: String
    var cellMessage: String
    var cellTime: String
    
    init() {
        
        self.cellImage = UIImage(named: "Nyes")!
        self.cellTitle = "NULL"
        self.cellMessenger = "NULL"
        self.cellMessage = "NULL"
        self.cellTime = "NULL"
    }
    
    init(cellImage: UIImage, cellTitle: String, cellMessage: String, cellMessenger: String, cellTime: String) {
        
        self.cellImage = cellImage
        self.cellTitle = cellTitle
        self.cellMessenger = cellMessage
        self.cellMessage = cellMessenger
        self.cellTime = cellTitle
        
    }
}
