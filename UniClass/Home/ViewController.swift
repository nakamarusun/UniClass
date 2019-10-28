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
        
        let yos = Article(articleThumbnail: UIImage(named: "math1")!, articleImage: UIImage(named: "math2")!, articleTitle: "Aljabar, tidak sesuah pikiranmu", articleAuthor: "Jeff Doe", articleRating: 4.4, articleDate: Calendar.current, articleBody: "Pengertian Bentuk Aljabar /nBentuk Aljabar adalah suatu bentuk matematika yang dalam penyajiannya memuat huruf-huruf untuk mewakili bilangan yang belum diketahui. Bentuk aljabar terdapat unsur-unsur aljabar, meliputi variabel, koefisien, konstanta, faktor, suku sejenis dan suku tidak sejenis /nUntuk lebih jelasnya, perhatikan contoh berikut ini. /n1. 2(a + 3)            = 2a + 6 (sifat distributif) /n2. – (x – 3)           = – x + 3 /n3. 3m(x + 2y + 3) = 3mx + 6my + 9m /nJika pada bentuk aljabar 3x + 5y, variabel x diganti dengan 2 dan variabel y diganti dengan 4, maka diperoleh: /n3x + 5y = 3(2) + 5(4) = 6 + 20 /nPenjumlahan dan Pengurangan Pecahan Aljabar /nBentuk pecahan aljabar adalah bentuk pecahan yang pembilang atau penyebut atau keduaduanya memuat bentuk aljabar. /nMisalnya: /n/nKonsep penjumlahan dan pengurangan yang telah kalian pelajari pada bilangan pecahan juga dapat digunakan untuk operasi hitung bentuk pecahan aljabar. /nBentuk pecahan aljabar yang akan kalian pelajari hanya bentuk pecahan yang berpenyebut suku tunggal. /n/nPerkalian dan Pembagian Pecahan Bentuk Pecahan Aljabar /na. Perkalian dalam Bentuk Pecahan Aljabar /nPada perkalian dua pecahan aljabar dilakukan dengan cara, pembilang dikalikan pembilang dan penyebut dikalikan penyebut. /nb. Pembagian Bentuk Pecahan Aljabar /nMembagi suatu bilangan atau pecahan dengan suatu pecahan sama dengan mengalikannya dengan kebalikan pecahan tersebut. Misalnya 3/5a kebalikannya 5a/3.")
        
        var tempArray = [Article]()
        tempArray.append(yos)
        
        var newArticle = [String: [Article]]()
        
        newArticle["aljabar"] = tempArray
        
        storeDelegate(data: newArticle, entityName: "ArticleData", attributeName: "notes")
        
    }
}
