//
//  ChoiceController.swift
//  UniClass
//
//  Created by Jason Christian Hailianto on 24/10/19.
//  Copyright © 2019 Jobba Inc. All rights reserved.
//

import UIKit

class ChoiceController: UIViewController {

    @IBOutlet weak var studiesImage: UIImageView!
    @IBOutlet weak var quizzesImage: UIImageView!
    
    @IBAction func studiesButton(_ sender: Any) {
        
        performSegue(withIdentifier: "goToTopics", sender: nil)
    }
    
    @IBAction func quizzesButton(_ sender: Any) {
        
        performSegue(withIdentifier: "goToTopics", sender: nil)
    }
    
    
    override func viewDidLoad() {
        
        studiesImage.layer.cornerRadius = 80.0
        quizzesImage.layer.cornerRadius = 80.0
        
        super.viewDidLoad()

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
