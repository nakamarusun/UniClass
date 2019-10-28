//
//  favoriteController.swift
//  UniClass
//
//  Created by Jason Christian Hailianto on 28/10/19.
//  Copyright © 2019 Jobba Inc. All rights reserved.
//

import UIKit
import Cosmos

class favoriteController: NotebookViewTable {

    @IBOutlet weak var favoriteTableView: UITableView!
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath) as! favoriteViewCell
        let menu = cellArray[indexPath.row]
        
        cell.cellTitle.text = menu.cellName
        cell.cellAuthor.text = "By " + menu.cellSubtitle
        cell.cellImage.image = menu.cellImage
        cell.cellStars.rating = menu.cellRating
        cell.cellStars.text = "(\(menu.cellRatingCount))"
        cell.cellTitle.sizeToFit()
        cell.cellStars.settings.fillMode = .precise
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 142
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.favoriteTableView.dataSource = self
        self.favoriteTableView.delegate = self
        cellArray = []
        
        for favorites in GlobalVariables.favoritedArticle {
            cellArray.append(StandardCell(cellName: favorites.title!, cellSubtitle: favorites.author!, cellImage: UIImage(data: favorites.thumbnail!)!, cellRating: Double(favorites.rating), cellRatingCount: Int(favorites.ratingCount)))
        }
        favoriteTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "goToArticleFavorites", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToArticleFavorites" {
            
            let articleView = segue.destination as! ArticleViewController
            articleView.article = GlobalVariables.favoritedArticle[favoriteTableView.indexPathForSelectedRow!.row]
        }
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
