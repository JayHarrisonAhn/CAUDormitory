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
class facility {
    var name:String
    var identifier:String
    var icon:UIImage
    var iconSize:Int
    init(name:String, icon:UIImage, iconSize:Int, identifier:String) {
        self.name = name
        self.icon = icon
        self.iconSize = iconSize
        self.identifier = identifier
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

//Setting 탭
class SettingValue {
    var name:String
    var settingCode:String
    var type:valueType
    
    func readValue() -> Any? {
        switch self.type {
        case .String:
            return UserDefaults.standard.string(forKey: "Setting_" + settingCode)
        case .Bool:
            return UserDefaults.standard.bool(forKey: "Setting_" + settingCode)
        case .Building:
            return UserDefaults.standard.string(forKey: "Setting_" + settingCode)
        }
    }
    
    func setValue(_ to:Any?) {
        UserDefaults.standard.set(to, forKey: "Setting_" + settingCode)
        
    }
    func setValue(_ to:DormitoryBuilding) {
        UserDefaults.standard.set(to.rawValue, forKey: "Setting_" + settingCode)
        
    }
    
    enum valueType {
        case String
        case Bool
        case Building
    }
    
    init (name:String, settingCode:String, type:valueType, value:Any?) {
        self.name = name
        self.type = type
        self.settingCode = settingCode
        
        
        if UserDefaults.standard.object(forKey: "Setting_" + settingCode) == nil {
            setValue(value)
        }
    }
}
