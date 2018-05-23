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
    
    init(photo:UIImage,url:NSURL){
        photoUrl = url
        image = photo
    }
}
