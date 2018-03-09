//
//  SeoulData.swift
//  TestProj
//
//  Created by CAUADC on 2018. 2. 6..
//  Copyright © 2018년 CAUADC. All rights reserved.
//

import Foundation
import UIKit

func InitUserData() {
    UserDefaults.standard.set(true, forKey: "Checked")
    for section:[settingElement] in setting {
        for element:settingElement in section {
            element.initializeKey()
        }
    }
}

enum Campus:String {
    case Seoul = "서울"
    case Ansung = "안성"
}

enum DormitoryBuilding:Int {
    case blueMir309 = 0
    case blueMir308 = 1
    case future = 2
    case global = 3
    
    var english:String? {
        switch self {
        case .blueMir308: return "blueMir 308"
        case .blueMir309: return "blueMir 309"
        case .future: return "future house"
        case .global: return "global house"
        }
    }
    
    var korean:String? {
        switch self {
        case .blueMir308: return "블루미르 309관"
        case .blueMir309: return "블루미르 308관"
        case .future: return "퓨처하우스"
        case .global: return "글로벌하우스"
        }
    }
}
enum Gender:Int {
    case man = 0
    case woman
    
    var english:String? {
        switch self {
        case .man: return "Man"
        case .woman: return "Woman"
        }
    }
    var korean:String? {
        switch self {
        case .man: return "남성"
        case .woman: return "여성"
        }
    }
    
}


//info 탭
    //시설정보


//submit 탭
    

//setting 탭
