//
//  Family.swift
//  FamilyMessenger
//
//  Created by Jack Kranz on 17/5/18.
//  Copyright © 2018 MCJ. All rights reserved.
//

import Foundation

class Family{
    
    var members: [String] = []
    var name:String
    
    init(nameReference:String,firstuser:String){
        
        name = nameReference
        members.append(firstuser)
    }
    
}
