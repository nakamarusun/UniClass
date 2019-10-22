//
//  ViewController.swift
//  UniClass
//
//  Created by Jason Christian Hailianto on 18/10/19.
//  Copyright © 2019 Jobba Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainScrollView: UIScrollView!
    @IBOutlet weak var whatshotScrollView: UIScrollView!
    
    @IBAction func buttonFavorite(_ sender: Any) {
        
        performSegue(withIdentifier: "ViewFavorites", sender: nil)
    }
    

    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("[DEBUG MESSAGE] View loaded.")
        mainScrollView.contentSize = CGSize(width: 412, height: 1200)
        whatshotScrollView.contentSize = CGSize(width: 600, height: 153)

    }


}

