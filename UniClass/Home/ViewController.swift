//
//  ViewController.swift
//  UniClass
//
//  Created by Jason Christian Hailianto on 18/10/19.
//  Copyright © 2019 Jobba Inc. All rights reserved.
//

import UIKit
import CoreData

class ViewController: NotebookViewTable, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    @IBOutlet weak var labelHistory: UILabel!
    @IBOutlet weak var homeTableView: UITableView!
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath) as! historyViewCell
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
    
    @IBAction func whatshotButton(_ sender: Any) {
        performSegue(withIdentifier: "goToWhatshotArticle", sender: nil)
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        print("[DEBUG MESSAGE] View loaded.")
        mainScrollView.contentSize = CGSize(width: 412, height: 870)
        homeTableView.contentSize = CGSize(width: 412, height: 300)
        
        self.whatshotCollectionView.dataSource = self
        self.whatshotCollectionView.delegate = self
        
        
        whatshotImageArray = []
        whatshotImageArray.append(whatshotClass(cellImage: UIImage(named: "162987")!, cellData: ""))
        whatshotImageArray.append(whatshotClass(cellImage: UIImage(named: "162986")!, cellData: ""))
        whatshotImageArray.append(whatshotClass(cellImage: UIImage(named: "162988")!, cellData: ""))
        
        

        
        whatshotImageArray.append(whatshotClass(cellImage: UIImage(named: "seemorearticles")!, cellData: ""))
        print(fetchUserData())
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.homeTableView.dataSource = self
        self.homeTableView.delegate = self
        cellArray = []
        
        for histories in GlobalVariables.historyArticle {
            cellArray.append(StandardCell(cellName: histories.title!, cellSubtitle: histories.author!, cellImage: UIImage(data: histories.thumbnail!)!, cellRating: Double(histories.rating), cellRatingCount: Int(histories.ratingCount)))
        }
        homeTableView.reloadData()
        if cellArray.count != 0 {
            labelHistory.text = ""
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "goToArticleHot", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToArticleHot" {
            
            let articleView = segue.destination as! ArticleViewController
            articleView.article = GlobalVariables.historyArticle[homeTableView.indexPathForSelectedRow!.row]
        }
    }
    
    @IBOutlet weak var whatshotCollectionView: UICollectionView!
    var whatshotImageArray:[whatshotClass]!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print(whatshotImageArray.count)
        return whatshotImageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:"whatshotCell", for: indexPath) as! whatshotCollectionViewCell
        
        let menu = whatshotImageArray[indexPath.row]
        
        cell.cellImage.image = menu.cellImage
        cell.cellImage.layer.cornerRadius = 10.0
        cell.cellImage.layer.masksToBounds = true
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 360, height: 172)
    }
    
    @IBOutlet weak var mainScrollView: UIScrollView!
    
    @IBAction func buttonFavorite(_ sender: Any) {
        
        performSegue(withIdentifier: "ViewFavorites", sender: nil)
    }
    

}
