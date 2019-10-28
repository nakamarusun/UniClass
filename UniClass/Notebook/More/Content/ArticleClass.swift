//
//  ArticleClass.swift
//  UniClass
//
//  Created by Jason Christian Hailianto on 28/10/19.
//  Copyright © 2019 Jobba Inc. All rights reserved.
//

import UIKit

class ArticlePlaceholder {
    
    var articleThumbnail: UIImage
    var articleImage: UIImage
    var articleTitle: String
    var articleAuthor: String
    var articleRating: Double
    var articleRatingCount: Int
    var articleDate: Date
    var articleBody: String //BIG STRING
    
    init() {
        
        articleThumbnail = UIImage(named: "Nyes")!
        articleImage = UIImage(named: "Nyes")!
        articleTitle = "SampleText"
        articleAuthor = "Jeff Doe"
        articleRating = 2.5
        articleRatingCount = 2
        articleDate = Date()
        articleBody = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda."
        
    }
}
