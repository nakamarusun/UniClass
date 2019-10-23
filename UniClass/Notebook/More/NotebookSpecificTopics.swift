//
//  NotebookSpecificTopics.swift
//  UniClass
//
//  Created by Jason Christian Hailianto on 22/10/19.
//  Copyright © 2019 Jobba Inc. All rights reserved.
//

import UIKit

class NotebookSpecificTopics: NotebookViewTable {

    
    @IBOutlet weak var TopicsController: UITableView!
    @IBOutlet weak var NavigationBar: UINavigationItem!
    var selectedCell: StandardCell!

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath) as! TopicCell
        
        let menu = cellArray[indexPath.row]
        
        cell.cellName.text = menu.cellName
        cell.cellImage.image = menu.cellImage
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 83
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.TopicsController.dataSource = self
        self.TopicsController.delegate = self
        
        NavigationBar.title = "\(selectedCell.cellName)"
        
        switch selectedCell.cellName {
            case "Matematika":
                cellArray.append(StandardCell(cellName: "Integral", cellSubtitle: "Non", cellImage: UIImage(named: "Untitled-1")!))
            
            default:
                cellArray.append(StandardCell())
                print("SELECTED TOPIC NULL")
        }
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
