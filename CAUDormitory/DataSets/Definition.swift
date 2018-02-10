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

//Info 탭
class facility {
    var name:String
    var icon:UIImage
    var iconSize:Int
    var baseInfo:[[String:String]]//location:time
    init(name:String, icon:UIImage, iconSize:Int, baseInfo:[[String:String]]) {
        self.name = name
        self.icon = icon
        self.iconSize = iconSize
        self.baseInfo = baseInfo
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

