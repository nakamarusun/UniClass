//
//  ArticleRealmClass.swift
//  UniClass
//
//  Created by Jason Christian Hailianto on 28/10/19.
//  Copyright © 2019 Jobba Inc. All rights reserved.
//

import Foundation
import UIKit
import RealmSwift

class ArticleRealm: Object {
    
    @objc dynamic var articleThumbnail: UIImage?
    @objc dynamic var articleImage: UIImage?
    @objc dynamic var articleTitle: String?
    @objc dynamic var articleAuthor: String?
    @objc dynamic var articleRating: Float = 0
    @objc dynamic var articleDate: Calendar?
    @objc dynamic var articleBody: String? //BIG STRING
    
    
}
