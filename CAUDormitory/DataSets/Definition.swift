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

class CampusData {
    var notices:[Notice]
    var latestNoticeKey:Int
    
    init (latestNoticeKey:Int, notices:[Notice]) {
        self.latestNoticeKey = latestNoticeKey
        self.notices = notices
    }
}

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

