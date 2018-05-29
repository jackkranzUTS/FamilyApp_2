//
//  Photo.swift
//  FamilyMessenger
//
//  Created by Jack Kranz on 17/5/18.
//  Copyright © 2018 MCJ. All rights reserved.
//

import Foundation
import UIKit
class Photo{
    
    var image:UIImage?
    var photo:String
    var timeStamp:NSDate
    var owner:String
    
    init(photoReference:String,timestampReference:NSDate,userId:String){
        photo = photoReference
        timeStamp = timestampReference
        owner = userId
       // image = UIImage(contentsOfFile: "test.jpg")
    
    }
}
