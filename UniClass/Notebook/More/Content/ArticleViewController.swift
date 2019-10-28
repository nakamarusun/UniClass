//
//  ArticleViewController.swift
//  UniClass
//
//  Created by Jason Christian Hailianto on 28/10/19.
//  Copyright © 2019 Jobba Inc. All rights reserved.
//

import UIKit

class ArticleViewController: UIViewController {
    
    var article: Article?
    
    @IBOutlet weak var navigationBar: UINavigationItem!
    @IBOutlet weak var imageArticle: UIImageView!
    @IBOutlet weak var bodyArticle: UITextView!
    @IBOutlet weak var dateArticle: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.title = article!.title
        imageArticle.image = UIImage(data: article!.image!)
        dateArticle.text = "\(article!.date ?? Date())"
        bodyArticle.text = article!.body
        let bodySize = bodyArticle.contentSize.height
        print(bodySize)
        if bodySize > 310 {
            print(bodyArticle.frame.size.height)
            bodyArticle.frame.size.height += bodySize - 310
            scrollView.contentSize.height = bodySize + 310
            print("yes")
        }
        
    }

}
