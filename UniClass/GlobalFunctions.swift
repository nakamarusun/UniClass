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
        
        if results.count == 0 {
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            let context = appDelegate.persistentContainer.viewContext
            let object =  NSEntityDescription.insertNewObject(forEntityName: "UserProfile", into: context)
            
            object.setValue("User1723861", forKey: "username")
            object.setValue("user@uniclass.com", forKey: "email")
            object.setValue(UserData.bio, forKey: "bio")
            object.setValue("High School", forKey: "academicBio")
            object.setValue("12th Grade", forKey: "classBio")
            object.setValue("Calculus", forKey: "favSubject")
            object.setValue("Calculus - Make it easy !", forKey: "favGroup")
            object.setValue(UserData.image, forKey: "image")
            
            do {
                try context.save()
                print("[DEBUG MESSAGE] Saved")
            } catch {
                print("[DEBUG MESSAGE] FAILED TO SAVE")
            }
        }
    
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

func fetchUserImage() -> UIImage {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    let context = appDelegate.persistentContainer.viewContext
    let request = NSFetchRequest<NSFetchRequestResult>(entityName: "UserProfile")
    
    request.returnsObjectsAsFaults = false
    
    do {
        let results = try context.fetch(request)
        
        if results.count == 0 {
            return UIImage(named: "person.fill")!
        } else {
            
            let image = (results[results.count-1] as AnyObject).value(forKey: "image") as! NSData
            return UIImage(data: image as Data)!
        }
        
    } catch {
        print("ERROR FETCHING IMAGE")
        return nil!
    }
}

func getSubtopic(named: String) -> [Article] {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    let context = appDelegate.persistentContainer.viewContext
    
    let fetch:NSFetchRequest = Subtopic.fetchRequest()
    fetch.predicate = NSPredicate(format: "name == %@", named)
    
    do {
        let subtopics = try context.fetch(fetch)
        return subtopics.first!.relationship?.array as! [Article]
    } catch {
        print("ERROR FETCHING SUBTOPIC FROM COREDATA")
        return []
    }
}

func storeArticle(title: String, thumbnail: UIImage, ratingCount: Int, image: UIImage, date: Date, body: String, author: String, toSubTopic: String) {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    let context = appDelegate.persistentContainer.viewContext
    let obj = Article(context:context)
    
    obj.title = title
    obj.thumbnail = thumbnail.pngData()
    obj.ratingCount = Int64(ratingCount)
    obj.image = image.pngData()
    obj.date = date
    obj.body = body
    obj.author = author

    let fetch:NSFetchRequest = Subtopic.fetchRequest()
    fetch.predicate = NSPredicate(format: "name == %@", toSubTopic)
    
    do {
        let subtopics = try context.fetch(fetch)
        if subtopics.isEmpty{
            let subtopic = Subtopic(context: context)
            subtopic.name = toSubTopic
                
            obj.relationship = subtopic
        }else{
            obj.relationship = subtopics.first
        }
        if context.hasChanges {
            try context.save()
        }
        print("[DEBUG MESSAGE] Saved everything to Article successfully")
    } catch {
        print("[DEBUG MESSAGE] FAILED TO SAVE")
    }
}
