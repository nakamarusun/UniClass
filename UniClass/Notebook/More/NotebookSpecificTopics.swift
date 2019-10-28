//
//  NotebookSpecificTopics.swift
//  UniClass
//
//  Created by Jason Christian Hailianto on 22/10/19.
//  Copyright © 2019 Jobba Inc. All rights reserved.
//

import UIKit

class NotebookSpecificTopics: NotebookViewTable {

    
    @IBOutlet weak var TopicsController: UITableView!
    @IBOutlet weak var NavigationBar: UINavigationItem!
    var selectedCell: StandardCell!

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath) as! TopicCell

        
        let menu = cellArray[indexPath.row]
        
        cell.cellName.text = menu.cellName
        cell.cellImage.image = menu.cellImage
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 83
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.TopicsController.dataSource = self
        self.TopicsController.delegate = self
        
        NavigationBar.title = "\(selectedCell.cellName)"
        
        switch selectedCell.cellName {
            case "Matematika":
                cellArray.append(StandardCell(cellName: "Aljabar", cellSubtitle: "Non", cellImage: UIImage(named: "math3")!))
                cellArray.append(StandardCell(cellName: "Kalkulus", cellSubtitle: "Non", cellImage: UIImage(named: "math2")!))
                cellArray.append(StandardCell(cellName: "Integral", cellSubtitle: "Non", cellImage: UIImage(named: "math4")!))
            cellArray.append(StandardCell(cellName: "Trigonometri", cellSubtitle: "Non", cellImage: UIImage(named: "math5")!))
            cellArray.append(StandardCell(cellName: "Statistika", cellSubtitle: "Non", cellImage: UIImage(named: "math6")!))
            
        case "Fisika":
            cellArray.append(StandardCell(cellName: "Kesetimbangan dan Dinamika Rotasi", cellSubtitle: "Non", cellImage: UIImage(named: "fisika2")!))
            cellArray.append(StandardCell(cellName: "Elasititas dan Hukum Hooke", cellSubtitle: "Non", cellImage: UIImage(named: "fisika3")!))
            cellArray.append(StandardCell(cellName: "Fluida Statis", cellSubtitle: "Non", cellImage: UIImage(named: "fisika1")!))
            
        case "Kimia":
            cellArray.append(StandardCell(cellName: "Materi", cellSubtitle: "Non", cellImage: UIImage(named: "kimia2")!))
            cellArray.append(StandardCell(cellName: "Struktur Atom", cellSubtitle: "Non", cellImage: UIImage(named: "kimia4")!))
            cellArray.append(StandardCell(cellName: "Sistem Periodik", cellSubtitle: "Non", cellImage: UIImage(named: "kimia1")!))
            
            
        case "Biologi":
            cellArray.append(StandardCell(cellName: "Virus", cellSubtitle: "Non", cellImage: UIImage(named: "biologi2")!))
            cellArray.append(StandardCell(cellName: "Fungi", cellSubtitle: "Non", cellImage: UIImage(named: "biologi3")!))
            cellArray.append(StandardCell(cellName: "Plantae", cellSubtitle: "Non", cellImage: UIImage(named: "biologi1")!))
        case "Bahasa Inggris":
            cellArray.append(StandardCell(cellName: "English Expression", cellSubtitle: "Non", cellImage: UIImage(named: "bahasaInggris2")!))
            cellArray.append(StandardCell(cellName: "Texts", cellSubtitle: "Non", cellImage: UIImage(named: "bahasaInggris3")!))
            cellArray.append(StandardCell(cellName: "Grammar", cellSubtitle: "Non", cellImage: UIImage(named: "bahasaInggris1")!))
      
        case "Bahasa Indonesia":
            cellArray.append(StandardCell(cellName: "Ide Pokok", cellSubtitle: "Non", cellImage: UIImage(named: "bahasaIndonesia2")!))
            cellArray.append(StandardCell(cellName: "Memahami dan Menanggapi Bacaan", cellSubtitle: "Non", cellImage: UIImage(named: "bahasaIndonesia3")!))
            cellArray.append(StandardCell(cellName: "Fakta dan Tanggapan dalam Teks", cellSubtitle: "Non", cellImage: UIImage(named: "bahasaIndonesia1")!))

            default:
                cellArray.append(StandardCell())
                print("SELECTED TOPIC NULL")
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "goToContent", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToContent" {
            let detailViewController = segue.destination as! ContentViewController
            detailViewController.selectedCell = cellArray[TopicsController.indexPathForSelectedRow!.row]
        }
    }

}
