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
    @IBOutlet weak var ScrollHorizontal: UIScrollView!
    @IBOutlet weak var ScrollOffset: UILabel!

    @IBAction func buttonFavorite(_ sender: Any) {
        
        performSegue(withIdentifier: "ViewFavorites", sender: nil)
    }
    
    @IBAction func ExtButton(_ sender: Any) {
        ScrollHorizontal.contentOffset = CGPoint(x: 100, y: 0)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print("[DEBUG MESSAGE] View loaded.")
        ScrollHorizontal.contentSize = CGSize(width: 900, height: 182)
        //Set the horizontal scroll
        // Do any additional setup after loading the view.
    }


}

