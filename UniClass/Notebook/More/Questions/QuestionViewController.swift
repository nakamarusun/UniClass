//
//  QuestionViewController.swift
//  UniClass
//
//  Created by Jason Christian Hailianto on 29/10/19.
//  Copyright © 2019 Jobba Inc. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        GlobalVariables.choicesArray[0].count-1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath) as! QuestionCellController
        
        cell.cellText.text = GlobalVariables.choicesArray[GlobalVariables.onQuestion][indexPath.row]
        
        return cell
    }
    

    @IBOutlet weak var answerTableController: UITableView!
    @IBOutlet weak var questionTextView: UITextView!
    static var rightQuestion = 0
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(answerTableController.indexPathForSelectedRow!.row + 1)")
            print("\(GlobalVariables.choicesArray[GlobalVariables.onQuestion][5])")
        if answerTableController.indexPathForSelectedRow!.row + 1 == Int(GlobalVariables.choicesArray[GlobalVariables.onQuestion][5])! {
            QuestionViewController.rightQuestion += 1
        }
    }

    @IBAction func nextButton(_ sender: Any) {
        if GlobalVariables.onQuestion != 2 {
            GlobalVariables.onQuestion += 1
            questionTextView.text = GlobalVariables.questionsArray[GlobalVariables.onQuestion]
            answerTableController.reloadData()
            print("\(GlobalVariables.onQuestion)")
        } else {
            performSegue(withIdentifier: "goToResults", sender: nil)
        }
    }
    @IBAction func backButton(_ sender: Any) {
        if GlobalVariables.onQuestion != 0 {
            GlobalVariables.onQuestion -= 1
            questionTextView.text = GlobalVariables.questionsArray[GlobalVariables.onQuestion]
            print("\(GlobalVariables.onQuestion)")
            answerTableController.reloadData()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.answerTableController.delegate = self
        self.answerTableController.dataSource = self
        questionTextView.text = GlobalVariables.questionsArray[GlobalVariables.onQuestion]

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
