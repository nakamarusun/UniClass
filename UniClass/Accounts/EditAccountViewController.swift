//
//  EditAccountViewController.swift
//  UniClass
//
//  Created by Jason Christian Hailianto on 26/10/19.
//  Copyright © 2019 Jobba Inc. All rights reserved.
//

import UIKit

class EditAccountViewController: UIViewController {

    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var bioText: UITextField!
    
    @IBAction func acceptChangeButton(_ sender: Any) {
        var changeMade = false
        
        if usernameText.text != "" {
            UserData.username = usernameText.text!
            changeMade = true
        }
        if emailText.text != "" {
            UserData.email = emailText.text!
            changeMade = true
        }
        if bioText.text != "" {
            UserData.bio = bioText.text!
            changeMade = true
        }
        
        if changeMade {
            let message = UIAlertController(title: "Success", message: "Change successfully made !", preferredStyle: .alert)
            message.addAction(UIAlertAction(title: "Dismiss", style: .default))
            self.present(message, animated: true, completion: nil)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

}
