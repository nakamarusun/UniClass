//
//  NotebookViewTable.swift
//  UniClass
//
//  Created by Jason Christian Hailianto on 21/10/19.
//  Copyright © 2019 Jobba Inc. All rights reserved.
//

import UIKit

class NotebookViewTable: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var cellArray:[StandardCell]!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return cellArray.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath) as! NotebookTableViewCell
                
        return cell
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        cellArray = []
    }
    
}
