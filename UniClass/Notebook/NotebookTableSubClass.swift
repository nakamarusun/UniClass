//
//  NotebookTableSubClass.swift
//  UniClass
//
//  Created by Jason Christian Hailianto on 23/10/19.
//  Copyright © 2019 Jobba Inc. All rights reserved.
//

import UIKit

class NotebookTableSubClass: NotebookViewTable {
    
    @IBOutlet weak var NotebookController: UITableView!
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath) as! NotebookCell
        
        let menu = cellArray[indexPath.row]
        
        cell.cellName.text = menu.cellName
        cell.CellSubtitle.text = menu.cellSubtitle
        cell.cellImage.image = menu.cellImage
        cell.CellSubtitle.sizeToFit()
        
        return cell
        
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.NotebookController.dataSource = self
        self.NotebookController.delegate = self
        cellArray.append(StandardCell(cellName: "Matematika", cellSubtitle: "Math is the only place where truth and beauty mean same thing", cellImage: UIImage(named: "math1" )!) )
        cellArray.append(StandardCell(cellName: "Fisika", cellSubtitle: "What man calls God , The other call the law of physics", cellImage:UIImage (named: "fisika1")!) )
        cellArray.append(StandardCell(cellName: "Kimia", cellSubtitle: "Chemistry is like cooking ", cellImage:UIImage (named: "kimia1")!) )
        cellArray.append(StandardCell(cellName: "Biologi", cellSubtitle: "Biology gives you a brain , Life turns it into mind", cellImage: UIImage(named: "biologi1")!))
        cellArray.append(StandardCell(cellName: "Bahasa Inggris", cellSubtitle: "The english language is a work in proggress. Have fun with it ", cellImage: UIImage(named: "bahasaInggris1")!))
        cellArray.append(StandardCell(cellName: "Bahasa Indonesia", cellSubtitle: "Bersatu kita teguh, bercerai kita berantakan", cellImage: UIImage(named: "bahasaIndonesia3")!))
        cellArray.append(StandardCell(cellName: "Ekonomi", cellSubtitle: "An investment in knowledge pays the best interest", cellImage: UIImage(named: "ekonomi1")!))
        cellArray.append(StandardCell(cellName: "Agama", cellSubtitle: "Religion is the everlasting dialogue between God and humanity", cellImage: UIImage(named: "jesus")!) )
        cellArray.append(StandardCell(cellName: "Sejarah", cellSubtitle: "We are not maker of history. We are made by history", cellImage: UIImage(named: "borobudur")!))
        cellArray.append(StandardCell(cellName: "Geografi", cellSubtitle: "In our changing world , nothing changes more than geography", cellImage: UIImage(named: "globe")!))
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "goToSpecific", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 134
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSpecific" {
            
            let detailViewController = segue.destination as! NotebookSpecificTopics
            detailViewController.selectedCell = cellArray[NotebookController.indexPathForSelectedRow!.row]
        }
    }
}
