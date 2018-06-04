//
//  FamilyDB.swift
//  FamilyMessenger
//
//  Created by Jack Kranz on 4/6/18.
//  Copyright © 2018 MCJ. All rights reserved.
//

import Foundation
import Firebase


class FamilyDB{
    
    let ref: DatabaseReference!
    let storage:Storage!
    let storageRef:StorageReference!
    
    init() {
        ref = Database.database().reference()
        storage = Storage.storage()
        storageRef = storage.reference()

    }
    
    
    // Creates A User Object
    func createUser(authID:String, family:String,profilePic:String,username:String, child:Bool){
        
    self.ref.child("users").child(authID).setValue(["username": username])
    self.ref.child("users/\(authID)/family").setValue(family)
    self.ref.child("users/\(authID)/profilePic").setValue(profilePic)
    self.ref.child("users/\(authID)/child").setValue(child)

    
    }
    
    func createPhoto(url:String){
        
      var newPhoto = self.ref.child("photos").childByAutoId()
        newPhoto.child("AuthID").setValue("AuthID")
        newPhoto.child("url").setValue(url)
       
    }
    

    
    
    func uploadPhoto(image:UIImage,ref:String){
        
        var url = ""
        // Data in memory
        let data = UIImagePNGRepresentation(image)
        
        // Create a reference to the file you want to upload
        let imageRef = storageRef.child("images/test_123.png")
        imageRef.putData(data!, metadata: nil) { (metadata, error) in
            
            imageRef.downloadURL(completion: { (url, error) in
                if url != nil{
                    
                        self.createPhoto(url: url!.absoluteString)
               
        
                  
            }
                
        })
    
      
            
            
            
        }
        
       
        
        
    }
    
    
    
    
    
    
}

