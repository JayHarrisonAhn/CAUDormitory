//
//  SeoulData.swift
//  TestProj
//
//  Created by CAUADC on 2018. 2. 6..
//  Copyright © 2018년 CAUADC. All rights reserved.
//

import Foundation
import UIKit

var SeoulData = CampusData(
    latestNoticeKey : 2252,
    
    notices:[
    Notice(title: "2018학년도 1학기 서울캠퍼스 생활관 1차 충원 합격자 발표 - 복학생/전과생", date: "18.02.09", image: []),
    Notice(title: "[생활관]정비기간 편의시설 및 생활관 일정 안내", date: "18.02.09", image: [#imageLiteral(resourceName: "SeoulNotice_6")]),
    Notice(title: "[생활관]주말당직 사감 안내/Night and Weekend Duty", date: "18.02.09", image: [#imageLiteral(resourceName: "SeoulNotice_5_1"), #imageLiteral(resourceName: "SeoulNotice_5_2")]),
    Notice(title: "2018학년도 1학기 퓨처하우스 호실배정(2.08까지 등록인원)", date: "18.02.08", image: []),
    Notice(title: "2018학년도 1학기 블루미르홀 호실배정(2.09까지 등록인원)", date: "18.02.08", image: []),
    Notice(title: "[생활관]정비기간(휴관) 정비 계획", date: "18.02.07", image: [#imageLiteral(resourceName: "SeoulNotice_4")]),
    Notice(title: "[긴급공지]308관 호실 천장 냉,난방기 정밀세척작업 일정 안내/Schedule for cleaning air conditioner filters", date: "18.02.06", image: [#imageLiteral(resourceName: "SeoulNotice_1")]),
    Notice(title: "[생활관]2018학년도 1학기 입관서류 제출 안내", date: "18.02.02", image: [#imageLiteral(resourceName: "SeoulNotice_2")]),
    Notice(title: "[생활관]2018학년도 1학기 입관 안내/Moving-in Guide", date: "18.02.02", image: [#imageLiteral(resourceName: "SeoulNotice_3_1"), #imageLiteral(resourceName: "SeoulNotice_3_2"), #imageLiteral(resourceName: "SeoulNotice_3_3")]),
    Notice(title: "생활관 사감(행정인턴) 모집 공고", date: "18.02.01", image: []),
    Notice(title: "2017학년도 동계방학 호실 이동 관생 퇴관 검사 예약 신청/2017-Winter Register an inspection schedule", date: "18.02.01", image: []),
])



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
    case blueMir308
    case future
    case global
    
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
    [facility(name: "식당", icon: #imageLiteral(resourceName: "info_logo_cafeteria"), iconSize:2, baseInfo: [["308관 1층":"7:00 ~ 20:00"], ["309관 1층":"13:00 ~ 19:00"]]),
    facility(name: "편의점", icon: #imageLiteral(resourceName: "info_logo_cvs"), iconSize:2, baseInfo: [["308관 1층":"7:00 ~ 20:00"], ["309관 1층":"7:00 ~ 21:00"]]),
    facility(name: "자판기", icon: #imageLiteral(resourceName: "info_logo_vendingmachine"), iconSize:2, baseInfo: [["309관 홀수층":"24시간 운영"]])],
    
    [facility(name: "세탁실", icon: #imageLiteral(resourceName: "info_logo_laundryroom"), iconSize:2, baseInfo: [["308관 2층":"7:00 ~ 20:00"], ["309관 2층":"6:00 ~ 24:00"]]),
     facility(name: "피트니스실", icon: #imageLiteral(resourceName: "info_logo_fitness"), iconSize:2, baseInfo: [["308관 외부":"7:00 ~ 20:00"], ["309관 2층":"6:00 ~ 23:00"]]),
     facility(name: "택배실", icon: #imageLiteral(resourceName: "info_logo_delivery"), iconSize:2, baseInfo: [["308관 1층":"8:00 ~ 19:00"]])],
    
    [facility(name: "공용PC", icon: #imageLiteral(resourceName: "info_logo_pc"), iconSize:2, baseInfo: [["308관 2층":"5:00 ~ 24:00"], ["309관 2층":"6:00 ~ 24:00"]]),
     facility(name: "프린터(유료)", icon: #imageLiteral(resourceName: "info_logo_printer"), iconSize:2, baseInfo: [["309관 2층":"24시간 이용가능"]])]
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
