//
//  User.swift
//  FamilyMessenger
//
//  Created by Jack Kranz on 25/5/18.
//  Copyright © 2018 MCJ. All rights reserved.
//

import Foundation
class User{
    
    var username:String
    var authID:String
    var family:String?
    var profilePic:String?
    var child:Bool?
    
    init(usernameReference:String,authIDReference:String){
        
        username = usernameReference
        authID = authIDReference
        
        
    }
    
    
}
