//
//  Submits.swift
//  CAUDormitory
//
//  Created by Harrison on 2018. 3. 9..
//  Copyright © 2018년 CAUADC. All rights reserved.
//

import Foundation
import UIKit

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
