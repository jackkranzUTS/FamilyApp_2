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
    var comments: [Comment] = []
    var timeStamp:NSDate
    
    init(photo:UIImage,url:NSURL,time:NSDate){
        photoUrl = url
        image = photo
        timeStamp = time
    
    }
}
