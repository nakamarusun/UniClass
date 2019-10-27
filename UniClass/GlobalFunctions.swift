//
//  GlobalFunctions.swift
//  UniClass
//
//  Created by Jason Christian Hailianto on 26/10/19.
//  Copyright © 2019 Jobba Inc. All rights reserved.
//

import UIKit
import CoreData

func storeDelegate(data: Any, entityName: String, attributeName: String) {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    let context = appDelegate.persistentContainer.viewContext
    let object =  NSEntityDescription.insertNewObject(forEntityName: entityName, into: context)
    
    object.setValue(data, forKey: attributeName)
    
    do {
        if context.hasChanges {
            try context.save()
        }
        print("[DEBUG MESSAGE] Saved \(data) to \(attributeName) of \(entityName) successfully")
    } catch {
        print("[DEBUG MESSAGE] FAILED TO SAVE \(data) TO \(attributeName) OF \(entityName)")
    }
    
}

func updateDelegate(data: Any, entityName: String, attributeName: String, position: Int) {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    let context = appDelegate.persistentContainer.viewContext
    let request  = NSFetchRequest<NSFetchRequestResult>(entityName: entityName)
    
    do {
        let results = try context.fetch(request)
        if results.count > 0 {
            (results[position] as AnyObject).setValue(data, forKey: attributeName)
            do {
                try context.save()
                print("[DEBUG MESSAGE] Successfully saved \(data) in \(attributeName) of \(entityName) in position \(position)")
            } catch {
                print("[DEBUG MESSAGE] -- FAILED TO SAVE \(data) in \(attributeName) of \(entityName) in position \(position)")
            }
        }
    } catch {
        print("error")
    }
    
}

func fetchUserData() -> [String: String] {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    let context = appDelegate.persistentContainer.viewContext
    let request = NSFetchRequest<NSFetchRequestResult>(entityName: "UserProfile")
    
    request.returnsObjectsAsFaults = false
    
    
    do {
        let results = try context.fetch(request)
    
        let username = (results[results.count-1] as AnyObject).value(forKey: "username") as? String
        let email = (results[results.count-1] as AnyObject).value(forKey: "email") as? String
        let bio = (results[results.count-1] as AnyObject).value(forKey: "bio") as? String
        let favSubject = (results[results.count-1] as AnyObject).value(forKey: "favSubject") as? String
        let favGroup = (results[results.count-1] as AnyObject).value(forKey: "favGroup") as? String
        let academicBio = (results[results.count-1] as AnyObject).value(forKey: "academicBio") as? String
        let classBio = (results[results.count-1] as AnyObject).value(forKey: "classBio") as? String
        
        let data = ["usr": username!, "eml": email!, "bio": bio!, "fsj": favSubject!, "fgp": favGroup!, "acb": academicBio!, "ccb": classBio!]
        
        return data
    
    } catch {
        print("ERROR FETCHING DATA")
        return nil!
    }
}
