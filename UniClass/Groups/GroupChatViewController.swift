//
//  GroupChatViewController.swift
//  UniClass
//
//  Created by Nicholas Audley on 23/10/19.
//  Copyright © 2019 Jobba Inc. All rights reserved.
//

import UIKit

class GroupChatViewController: UIViewController {
    
    @IBAction func moreButton(_ sender: Any) {
        performSegue(withIdentifier: "showModalMore", sender: nil)
    }

    @IBAction func addButton(_ sender: Any) {
        performSegue(withIdentifier: "showModalAdd", sender: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }


}
