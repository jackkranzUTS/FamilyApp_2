//
//  Family.swift
//  FamilyMessenger
//
//  Created by Jack Kranz on 17/5/18.
//  Copyright © 2018 MCJ. All rights reserved.
//

import Foundation

class Family{
    
    var memberIds: [Int] = []
    var familyName:String
    
    init(name:String,firstuser:Int){
        
        familyName = name
        memberIds.append(firstuser)
    }
    
}
