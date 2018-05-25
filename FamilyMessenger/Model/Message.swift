//
//  Message.swift
//  FamilyMessenger
//
//  Created by Jack Kranz on 25/5/18.
//  Copyright © 2018 MCJ. All rights reserved.
//

import Foundation
class Message{
    
    let senderId:Int
    let content:String
    let timeStamp:NSDate
    let groupId:Int
    
    init(sentBy:Int,message:String,time:NSDate,id:Int){
        
        sender = sentBy
        content = message
        timeStamp = time
        groupId = id
    }
    
}
