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
    
    @IBAction func favoriteButton(_ sender: Any) {
        GlobalVariables.favoritedArticle.append(article!)
        print("YESK")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.title = article!.title
        imageArticle.image = UIImage(data: article!.image!)
        dateArticle.text = "\(article!.date ?? Date())"
        bodyArticle.text = article!.body
        let bodySize = bodyArticle.contentSize.height
        if bodySize > 310 {
            bodyArticle.frame.size.height += bodySize - 310
            scrollView.contentSize.height = bodySize + 310
        }
        navigationBar.backBarButtonItem?.title = "Articles"
        
        GlobalVariables.historyArticle.append(article!)
        print("yosk")
        
    }
    @IBAction func rateButton(_ sender: Any) {
        let message = UIAlertController(title: "Thank you!", message: "Thank you for your contribution !", preferredStyle: .alert)
        message.addAction(UIAlertAction(title: "Dismiss", style: .default))
        self.present(message, animated: true, completion: nil)
    }
}
