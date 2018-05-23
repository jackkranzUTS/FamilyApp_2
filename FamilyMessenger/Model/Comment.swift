//
//  Comment.swift
//  FamilyMessenger
//
//  Created by Jack Kranz on 17/5/18.
//  Copyright © 2018 MCJ. All rights reserved.
//

import Foundation

class Comment{
    
    var text:String
    var user:User
    
    init(comment:String,poster:User){
        text = comment
        user = poster
    }
    
}
