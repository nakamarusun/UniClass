//
//  ViewController.swift
//  UniClass
//
//  Created by Jason Christian Hailianto on 18/10/19.
//  Copyright © 2019 Jobba Inc. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

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
    

    override func viewDidLoad() {
        
        super.viewDidLoad()
        print("[DEBUG MESSAGE] View loaded.")
        mainScrollView.contentSize = CGSize(width: 412, height: 1200)
        
        self.whatshotCollectionView.dataSource = self
        self.whatshotCollectionView.delegate = self
        
        
        whatshotImageArray = []
        whatshotImageArray.append(whatshotClass(cellImage: UIImage(named: "biologi2")!, cellData: ""))
        whatshotImageArray.append(whatshotClass(cellImage: UIImage(named: "biologi3")!, cellData: ""))
        

        
        whatshotImageArray.append(whatshotClass(cellImage: UIImage(named: "seemorearticles")!, cellData: ""))
        print(fetchUserData())
    }
}
