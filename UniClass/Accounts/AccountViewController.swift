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
    
    @IBOutlet weak var usernameBio: UILabel!
    @IBOutlet weak var emailBio: UILabel!
    @IBOutlet weak var bioBio: UILabel!
    @IBOutlet weak var academicBio: UILabel!
    @IBOutlet weak var classBio: UILabel!
    @IBOutlet weak var favSubjectBio: UILabel!
    @IBOutlet weak var favGroupBio: UILabel!
    
    @IBAction func AccountSettingButton(_ sender: Any) {
        performSegue(withIdentifier: "goToChangeAccountDetail", sender: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = CGSize(width: 414, height: 1229)
        profileImage.layer.cornerRadius = 75.0
        profileImage.layer.masksToBounds = true
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        usernameBio.text = UserData.username
        emailBio.text = UserData.email
        bioBio.text = UserData.bio
        print("display username: \(UserData.username)")
    }

}
