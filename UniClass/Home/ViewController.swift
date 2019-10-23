//
//  ViewController.swift
//  UniClass
//
//  Created by Jason Christian Hailianto on 18/10/19.
//  Copyright © 2019 Jobba Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var whatshotCollectionView: UICollectionView!
    var whatshotImageArray:[whatshotClass]!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return whatshotImageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:"whatshotCell", for: indexPath) as! whatshotCollectionViewCell
        
        let menu = whatshotImageArray[indexPath.row]
        
        cell.cellImage.image = menu.cellImage
        
        return cell
    }
    

    @IBOutlet weak var mainScrollView: UIScrollView!
    @IBOutlet weak var whatshotScrollView: UIScrollView!
    
    @IBAction func buttonFavorite(_ sender: Any) {
        
        performSegue(withIdentifier: "ViewFavorites", sender: nil)
    }
    

    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("[DEBUG MESSAGE] View loaded.")
        mainScrollView.contentSize = CGSize(width: 412, height: 1200)
        whatshotScrollView.contentSize = CGSize(width: 600, height: 153)
        
        self.whatshotCollectionView.dataSource = self
        self.whatshotCollectionView.dataSource = self
        
        whatshotImageArray = []
        whatshotImageArray.append(whatshotClass())

    }


}
