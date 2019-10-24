//
//  EditProfileViewController.swift
//  UniClass
//
//  Created by Bertalvaro Athooya on 23/10/19.
//  Copyright © 2019 Jobba Inc. All rights reserved.
//

import UIKit

class EditProfileViewController: UIViewController {
    
    @IBOutlet weak var profilePictureImageView: UIImageView!
    @IBOutlet weak var UsernameTextField: UITextField!
    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var BioTextField: UITextField!
    @IBOutlet weak var AcademicLevelTextField: UITextField!
    @IBOutlet weak var CurriculumTextField: UITextField!
    @IBOutlet weak var ClassTextField: UITextField!
    
    var nameText = ""
    var emailText = ""
    var bioText = ""
    var academicLevelText = ""
    var curriculumText = ""
    var classText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func doneButtonTapped(_ sender: Any) {
        self.nameText = UsernameTextField.text!
        self.emailText = EmailTextField.text!
        self.bioText = BioTextField.text!
        self.academicLevelText = AcademicLevelTextField.text!
        self.curriculumText = CurriculumTextField.text!
        self.classText = ClassTextField.text!
        performSegue(withIdentifier: "EditMode", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! AccountView
        vc.finalName = self.nameText
        vc.finalEmail = self.emailText
        vc.finalBio = self.bioText
        vc.finalAcademicLevel = self.academicLevelText
        vc.finalCurriculum = self.curriculumText
        vc.finalClass = self.classText
    }
    
}
