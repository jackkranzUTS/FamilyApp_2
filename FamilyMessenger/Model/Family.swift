//
//  Family.swift
//  FamilyMessenger
//
//  Created by Jack Kranz on 17/5/18.
//  Copyright © 2018 MCJ. All rights reserved.
//

import Foundation

class Family{
    
    var members: [User] = []
    var familyName:String
    
    init(name:String,firstuser:User){
        
        familyName = name
        members.append(firstuser)
    }
    
}
