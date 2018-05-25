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
    
    var image:UIImage
    var photoUrl:NSURL
    var timeStamp:NSDate
    var posterId:Int
    
    init(photo:UIImage,url:NSURL,time:NSDate,id:Int){
        photoUrl = url
        image = photo
        timeStamp = time
        posterId = id
    
    }
}
