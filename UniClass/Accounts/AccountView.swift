//
//  AccountView.swift
//  UniClass
//
//  Created by Bertalvaro Athooya on 22/10/19.
//  Copyright © 2019 Jobba Inc. All rights reserved.
//

import UIKit

class AccountView: UIViewController {
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userEmail: UILabel!
    @IBOutlet weak var userBio: UILabel!
    @IBOutlet weak var userAcademicLevel: UILabel!
    @IBOutlet weak var userCurriculum: UILabel!
    @IBOutlet weak var userClass: UILabel!
    
    var finalName = ""
    var finalEmail = ""
    var finalBio = ""
    var finalAcademicLevel = ""
    var finalCurriculum = ""
    var finalClass = ""
    
    @IBOutlet weak var ScrollView: UIScrollView!

    override func viewDidLoad() {
        
        ScrollView.contentSize = CGSize(width: 414, height: 1229)
        
        super.viewDidLoad()
        
        userName.text = finalName
        userEmail.text = finalEmail
        userBio.text = finalBio
        userAcademicLevel.text = finalAcademicLevel
        userCurriculum.text = finalCurriculum
        userClass.text = finalClass
        
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
