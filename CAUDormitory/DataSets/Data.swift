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





//info 탭
    //시설정보


//submit 탭
    

//setting 탭
