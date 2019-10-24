//
//  AccountViewController.swift
//  UniClass
//
//  Created by Jason Christian Hailianto on 24/10/19.
//  Copyright © 2019 Jobba Inc. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBAction func AccountSettingButton(_ sender: Any) {
        performSegue(withIdentifier: "goToChangeAccountDetail", sender: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = CGSize(width: 414, height: 1229)
        profileImage.layer.cornerRadius = 75.0
        profileImage.layer.masksToBounds = true

        
        // Do any additional setup after loading the view.
    }

}
