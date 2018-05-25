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
    var timeStamp:NSDate
    
    init(comment:String,poster:User,time:NSDate){
        text = comment
        user = poster
        timeStamp = time
        
    }
    
}
