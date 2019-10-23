//
//  GroupViewController.swift
//  UniClass
//
//  Created by Nicholas Audley on 22/10/19.
//  Copyright © 2019 Jobba Inc. All rights reserved.
//

import UIKit

class GroupViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var TableViewGroup: UITableView!
    var groupArray:[cellGroupMessage] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groupArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath) as! GroupViewCell
        
        let menu = groupArray[indexPath.row]
        
        cell.cellImage.image = menu.cellImage
        cell.cellMessenger.text = menu.cellMessenger
        cell.cellMessage.text = menu.cellMessage
        cell.cellTitle.text = menu.cellTitle
        cell.cellTime.text = menu.cellTime
        
        return cell
    }
    
    @IBAction func newGroup(_ sender: Any) {
        performSegue(withIdentifier: "goToGroupSelection", sender: nil)
    }
    
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
        
        self.TableViewGroup.dataSource = self
        self.TableViewGroup.delegate = self

        groupArray.append(cellGroupMessage())
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.performSegue(withIdentifier: "goToGroupChat", sender: nil)
    }
    
}
