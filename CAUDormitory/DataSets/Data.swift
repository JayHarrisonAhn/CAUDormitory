//
//  SeoulData.swift
//  TestProj
//
//  Created by CAUADC on 2018. 2. 6..
//  Copyright © 2018년 CAUADC. All rights reserved.
//

import Foundation
import UIKit

var SeoulData = CampusData(notices:[
    Notice(title: "[긴급공지]308관 호실 천장 냉,난방기 정밀세척작업 일정 안내/Schedule for cleaning air conditioner filters", date: "18.02.06", image: [#imageLiteral(resourceName: "SeoulNotice_1")]),
    Notice(title: "[생활관]2018학년도 1학기 입관서류 제출 안내", date: "18.02.02", image: [#imageLiteral(resourceName: "SeoulNotice_2")]),
    Notice(title: "[생활관]2018학년도 1학기 입관 안내/Moving-in Guide", date: "18.02.02", image: [#imageLiteral(resourceName: "SeoulNotice_3_1"), #imageLiteral(resourceName: "SeoulNotice_3_2"), #imageLiteral(resourceName: "SeoulNotice_3_3")])
])



func InitUserData() {
    UserDefaults.standard.set(true, forKey: "Checked")
    UserDefaults.standard.set(Campus.Seoul, forKey: "userCampus")
    UserDefaults.standard.set(DormitoryBuilding.blueMir309, forKey: "userBuilding")
    
    UserDefaults.standard.set(18, forKey: "userSchoolNum")
    UserDefaults.standard.set(1120, forKey: "userRoom")
}

enum Campus:String {
    case Seoul = "서울"
    case Ansung = "안성"
}

enum DormitoryBuilding:String {
    case blueMir309 = "블루미르 309관"
    case blueMir308 = "블루미르 308관"
}

//submit 탭
class Submit {
    var title:String
    var icon:UIImage
    init(title:String, icon:UIImage) {
        self.title = title
        self.icon = icon
    }
}

var doingSubmit:[Submit] = [
    Submit(title:"입관신청", icon:#imageLiteral(resourceName: "submit_doing1")),
    Submit(title:"퇴관신청", icon:#imageLiteral(resourceName: "submit_doing2"))
]

var regularSubmit:[Submit] = [
    Submit(title:"고장수리신청", icon:#imageLiteral(resourceName: "submit_always1")),
]
