//
//  User.swift
//  FamilyMessenger
//
//  Created by Jack Kranz on 25/5/18.
//  Copyright © 2018 MCJ. All rights reserved.
//

import Foundation
class User{
    
    let id:Int
    let username:String
    var familyId:Int
    var profilePicId:Int
    
    init(userId:Int,name:String,family:Int,pic:Int){
        
        id = userId
        username = name
        familyId = family
        profilePicId = pic
        
        
    }
    
    
}
