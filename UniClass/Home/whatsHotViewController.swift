//
//  whatsHotViewController.swift
//  UniClass
//
//  Created by Jason Christian Hailianto on 29/10/19.
//  Copyright © 2019 Jobba Inc. All rights reserved.
//

import UIKit

class whatsHotViewController: UIViewController {

    @IBOutlet weak var whatshotArticleScrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        whatshotArticleScrollView.contentSize = CGSize(width: 414, height: 3300)

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
