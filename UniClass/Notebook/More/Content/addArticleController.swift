//
//  addArticleController.swift
//  UniClass
//
//  Created by Jason Christian Hailianto on 29/10/19.
//  Copyright © 2019 Jobba Inc. All rights reserved.
//

import UIKit

class addArticleController: UIViewController,UINavigationControllerDelegate, UIImagePickerControllerDelegate {


    @IBOutlet weak var navigationControllerAdd: UINavigationItem!
    @IBOutlet weak var articleImage: UIImageView!
    @IBOutlet weak var bodyTextBox: UITextView!
    
    @IBOutlet weak var titleTextBoxVar: UITextField!
    @IBAction func titleTextBox(_ sender: Any) {
        
        navigationControllerAdd.title = titleTextBoxVar.text
        view.endEditing(true)
    }
    
    @IBAction func uploadImageButton(_ sender: Any) {
        let image = UIImagePickerController()
        image.delegate = self
        image.sourceType = UIImagePickerController.SourceType.photoLibrary
        image.allowsEditing = true
        
        self.present(image, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            articleImage.image = image
        } else {
            print("[DEBUG MESSAGE] Error import image")
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveButtonNew(_ sender: Any) {
        let profileData = fetchUserData()
        
        storeArticle(title: titleTextBoxVar.text!, thumbnail: articleImage.image!, ratingCount: 1, rating: 5, image: articleImage.image!, date: Date(), body: bodyTextBox.text, author: profileData["usr"]!, toSubTopic: GlobalVariables.choicesSubtopic)
        
        let message = UIAlertController(title: "Thank you!", message: "Your notebook has been successfully added !", preferredStyle: .alert)
        message.addAction(UIAlertAction(title: "Dismiss", style: .default))
        self.present(message, animated: true, completion: nil)
        print("success !")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        articleImage.image = UIImage(named: "placeholder")
        navigationControllerAdd.backBarButtonItem?.title = "Articles"

        // Do any additional setup after loading the view.
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
