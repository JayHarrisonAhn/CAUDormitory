//
//  AppClass.swift
//  TestProj
//
//  Created by CAUADC on 2018. 2. 6..
//  Copyright © 2018년 CAUADC. All rights reserved.
//

import Foundation
import UIKit

class Notice {
    var title:String
    var date:String
    var image:[UIImage]
    
    init(title:String, date:String, image:[UIImage]) {
        self.title = title
        self.date = date
        self.image = image
    }
}
