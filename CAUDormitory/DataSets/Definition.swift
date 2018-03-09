//
//  AppClass.swift
//  TestProj
//
//  Created by CAUADC on 2018. 2. 6..
//  Copyright © 2018년 CAUADC. All rights reserved.
//

import Foundation
import UIKit

//Info 탭



//Submit 탭
class Submit {
    var title:String
    var icon:UIImage
    var url:URL
    init(title:String, icon:UIImage, url:URL) {
        self.title = title
        self.icon = icon
        self.url = url
    }
}
class Contact {
    var title:String
    var url:URL
    init(title:String, url:URL) {
        self.title = title
        self.url = url
    }
}

//Setting 탭

