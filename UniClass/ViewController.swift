//
//  ViewController.swift
//  UniClass
//
//  Created by Jason Christian Hailianto on 18/10/19.
//  Copyright © 2019 Jobba Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ScrollView: UIScrollView!
    @IBAction func ExtButton(_ sender: Any) {
        ScrollView.contentSize = CGSize(width: 414, height: 1500)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print("[DEBUG MESSAGE] View loaded.")
        // Do any additional setup after loading the view.
    }


}

