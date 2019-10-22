//
//  NotebookViewTable.swift
//  UniClass
//
//  Created by Jason Christian Hailianto on 21/10/19.
//  Copyright © 2019 Jobba Inc. All rights reserved.
//

import UIKit

class NotebookViewTable: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var NotebookController: UITableView!
    var cellArray:[StandardCell]!

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath) as! NotebookTableViewCell
        
        let menu = cellArray[indexPath.row]
        
        cell.cellName.text = menu.cellName
        cell.CellSubtitle.text = menu.cellSubtitle
        cell.cellImage.image = menu.cellImage
        
        return cell
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.NotebookController.dataSource = self
        self.NotebookController.delegate = self
        
        cellArray = []
        cellArray.append(StandardCell())
    }
    

}
