//
//  ResultViewController.swift
//  UniClass
//
//  Created by Jason Christian Hailianto on 29/10/19.
//  Copyright © 2019 Jobba Inc. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var scoreText: UILabel!
    @IBOutlet weak var benarText: UILabel!
    @IBOutlet weak var salahText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let right = Float(QuestionViewController.rightQuestion)
        let wrong = Float(GlobalVariables.questionsArray.count)
        
        let score = (right/wrong) * 100
        print(score)
        scoreText.text = "\(Int(score))"
        benarText.text = "\(QuestionViewController.rightQuestion)"
        salahText.text = "\(GlobalVariables.questionsArray.count-QuestionViewController.rightQuestion)"

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
