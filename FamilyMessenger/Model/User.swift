//
//  User.swift
//  FamilyMessenger
//
//  Created by Jack Kranz on 17/5/18.
//  Copyright © 2018 MCJ. All rights reserved.
//

import Foundation

class User{
    
    var family:Family
    var username:String
    var profilePic:Photo
    
    init(fam:Family,name:String,photo:Photo){
        family = fam
        username = name
        profilePic = photo
        
    }
    
    
    
    
}
