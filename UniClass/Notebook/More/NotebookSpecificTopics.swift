//
//  NotebookSpecificTopics.swift
//  UniClass
//
//  Created by Jason Christian Hailianto on 22/10/19.
//  Copyright © 2019 Jobba Inc. All rights reserved.
//

import UIKit

class NotebookSpecificTopics: UIViewController {

    @IBOutlet weak var NavigationBar: UINavigationItem!
    var selectedCell: StandardCell!

    override func viewDidLoad() {
        
        super.viewDidLoad()
        NavigationBar.title = "\(selectedCell.cellName)"
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
