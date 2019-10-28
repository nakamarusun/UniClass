//
//  addGroupViewController.swift
//  UniClass
//
//  Created by Jason Christian Hailianto on 29/10/19.
//  Copyright © 2019 Jobba Inc. All rights reserved.
//

import UIKit

class addGroupViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableViewController: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewController.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath) as! addGroupViewCell
        
        cell.cellImage.image = UIImage(named: "math5")
        cell.cellTitle.text = "Algebra United"
        cell.cellDesc.text = "We can do it !"
        cell.cellDesc.sizeToFit()
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        GlobalVariables.groupCreated = true
        performSegue(withIdentifier: "goBackToGroup", sender: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableViewController.dataSource = self
        self.tableViewController.delegate = self

        // Do any additional setup after loading the view.
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
