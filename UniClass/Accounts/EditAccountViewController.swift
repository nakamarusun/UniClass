//
//  EditAccountViewController.swift
//  UniClass
//
//  Created by Jason Christian Hailianto on 26/10/19.
//  Copyright © 2019 Jobba Inc. All rights reserved.
//

import UIKit
import CoreData

class EditAccountViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var bioText: UITextField!
    @IBOutlet weak var imageEdit: UIImageView!
    var currentImage: UIImage!
    
    @IBAction func changeImageButton(_ sender: Any) {
        let image = UIImagePickerController()
        image.delegate = self
        image.sourceType = UIImagePickerController.SourceType.photoLibrary
        image.allowsEditing = true
        
        self.present(image, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imageEdit.image = image
        } else {
            print("[DEBUG MESSAGE] Error import image")
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func acceptChangeButton(_ sender: Any) {
        var changeMade = false
        
        if imageEdit.image != UIImage(named: "person.fill") {
            let newImage = imageEdit.image!.pngData()
            updateDelegate(data: newImage!, entityName: "UserProfile", attributeName: "image", position: 0)
            changeMade = true
        }
        
        if usernameText.text != "" {
            updateDelegate(data: usernameText.text!, entityName: "UserProfile", attributeName: "username", position: 0)
            changeMade = true
        }
        if emailText.text != "" {
            updateDelegate(data: emailText.text!, entityName: "UserProfile", attributeName: "email", position: 0)
            changeMade = true
        }
        if bioText.text != "" {
            updateDelegate(data: bioText.text!, entityName: "UserProfile", attributeName: "bio", position: 0)
            changeMade = true
        }
        
        if changeMade {
            let message = UIAlertController(title: "Success", message: "Change successfully made !", preferredStyle: .alert)
            message.addAction(UIAlertAction(title: "Dismiss", style: .default))
            self.present(message, animated: true, completion: nil)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageEdit.layer.cornerRadius = 75.0
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }

}
