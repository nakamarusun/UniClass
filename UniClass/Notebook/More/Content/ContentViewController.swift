//
//  ContentViewController.swift
//  UniClass
//
//  Created by Jason Christian Hailianto on 27/10/19.
//  Copyright © 2019 Jobba Inc. All rights reserved.
//

import UIKit
import Cosmos
import CoreData

class ContentViewController: NotebookViewTable {
    
    @IBOutlet weak var navigationTitleController: UINavigationItem!
    var selectedCell: StandardCell!
    @IBOutlet weak var contentViewTableView: UITableView!
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath) as! ContentViewCellController
        
        let menu = cellArray[indexPath.row]
        
        cell.cellTitle.text = menu.cellName
        cell.cellAuthor.text = "By " + menu.cellSubtitle
        cell.cellImage.image = menu.cellImage
        cell.cellStars.rating = menu.cellRating
        cell.cellTitle.sizeToFit()
        cell.cellStars.settings.fillMode = .precise
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 142
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.contentViewTableView.dataSource = self
        self.contentViewTableView.delegate = self
        navigationTitleController.title = selectedCell.cellName
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
