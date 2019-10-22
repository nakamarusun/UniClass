//
//  AccountView.swift
//  UniClass
//
//  Created by Bertalvaro Athooya on 22/10/19.
//  Copyright © 2019 Jobba Inc. All rights reserved.
//

import UIKit

class AccountView: UIViewController {

    @IBOutlet weak var ScrollView: UIScrollView!

    override func viewDidLoad() {
        
        ScrollView.contentSize = CGSize(width: 414, height: 1029)
        
        super.viewDidLoad()
        
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
