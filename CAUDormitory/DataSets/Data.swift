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
        case .blueMir308: return "blueMir 309"
        case .blueMir309: return "blueMir 308"
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
var facilities:[[facility]] = [
    [facility(name: "식당", icon: #imageLiteral(resourceName: "info_logo_cafeteria"), iconSize:2, identifier:"cafeteria"),
    facility(name: "편의점", icon: #imageLiteral(resourceName: "info_logo_cvs"), iconSize:2, identifier:"cvs"),
    facility(name: "자판기", icon: #imageLiteral(resourceName: "info_logo_vendingmachine"), iconSize:2, identifier:"vendingMachine")],
    
    [facility(name: "세탁실", icon: #imageLiteral(resourceName: "info_logo_laundryroom"), iconSize:2, identifier:"laundryRoom"),
     facility(name: "피트니스실", icon: #imageLiteral(resourceName: "info_logo_fitness"), iconSize:2, identifier:"fitnessRoom"),
     facility(name: "택배실", icon: #imageLiteral(resourceName: "info_logo_delivery"), iconSize:2, identifier:"deliveryRoom")],
    
    [facility(name: "공용PC", icon: #imageLiteral(resourceName: "info_logo_pc"), iconSize:2, identifier:"PC"),
     facility(name: "프린터(유료)", icon: #imageLiteral(resourceName: "info_logo_printer"), iconSize:2, identifier:"Printer")]
]

//submit 탭
    //현재 진행중인 신청
var doingSubmit:[Submit] = [
    Submit(title:"입관신청", icon:#imageLiteral(resourceName: "submit_doing1"), url:URL(string:"http://dormitory.cau.ac.kr/application/application.php")!),
    Submit(title:"입관확인", icon:#imageLiteral(resourceName: "submit_doing2"), url:URL(string:"http://dormitory.cau.ac.kr/application/application_check.php")!),
    Submit(title:"건강증진프로그램", icon:#imageLiteral(resourceName: "submit_always1"), url:URL(string:"http://dormitory.cau.ac.kr/application/afterschool_application_pre.php?reqType=A")!),
    Submit(title: "회화프로그램", icon: #imageLiteral(resourceName: "submit_doing2"), url:URL(string:"http://dormitory.cau.ac.kr/application/afterschool_application_pre.php?reqType=B")!)
]
    //상시 진행중인 신청
var regularSubmit:[Submit] = [
    Submit(title:"고장수리신청", icon:#imageLiteral(resourceName: "submit_always1"), url:URL(string:"http://dormitory.cau.ac.kr/garden/broken_confirm.php")!),
    Submit(title:"칭찬릴레이", icon:#imageLiteral(resourceName: "submit_always2"), url:URL(string:"http://dormitory.cau.ac.kr/bbs/bbs_list.php?bbsID=praise")!),
    Submit(title:"추가선발신청", icon:#imageLiteral(resourceName: "submit_always3"), url:URL(string:"http://dormitory.cau.ac.kr/bbs/bbs_list.php?bbsID=praise")!)
]

    //문의하기
var contact:[Contact] = [
    Contact(title: "자주 묻는 질문(FAQ)", url:URL(string:"http://dormitory.cau.ac.kr/bbs/bbs_list.php?bbsID=faq")!),
    Contact(title: "생활관에 문의하기(Q&A)", url:URL(string:"http://dormitory.cau.ac.kr/bbs/bbs_list.php?bbsID=qna")!),
    Contact(title: "관생전용 게시판", url:URL(string:"http://dormitory.cau.ac.kr/bbs/bbs_list.php?bbsID=student")!),
    Contact(title: "어플리케이션 관리자에게 문의하기", url:URL(string:"https://projectintheclass.github.io/CAUDormitory/#footer")!)
]

//setting 탭
