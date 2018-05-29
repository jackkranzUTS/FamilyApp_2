//
//  MessageGroup.swift
//  FamilyMessenger
//
//  Created by Jack Kranz on 25/5/18.
//  Copyright © 2018 MCJ. All rights reserved.
//

import Foundation
class MessageGroup{
    
    var id = 0
    var memberIds:[String]
    
    init(members:[String]){
        
        memberIds = members
    }
    
}
