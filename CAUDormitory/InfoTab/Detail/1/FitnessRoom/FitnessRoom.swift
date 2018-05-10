//
//  ViewController.swift
//  CAUDormitory
//
//  Created by JaeHyung Ahn on 2018. 2. 22..
//  Copyright © 2018년 CAUADC. All rights reserved.
//

import UIKit

class FitnessRoom:facility {
    override init() {
        super.init()
        super.name_korean = "피트니스실"
        super.CellSegueIdentifier = "FNR"
        super.icon = UIImage(named: "info_logo_"+super.CellSegueIdentifier)!
    }
}

class FitnessRoomViewController: UIViewController {
    
    @IBOutlet weak var cafeteriaControl: UISegmentedControl!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var howToUse: UILabel!
    
    
    func select308() {
        self.cafeteriaControl.selectedSegmentIndex = 0
        self.titleLabel.text = "308관 피트니스실"
        self.timeLabel.text = "운영시간\n06:00 ~ 23:00"
        self.locationLabel.text = "-1층 식당 뒷편\n"
        self.howToUse.text = "-카드 있어야 출입 가능\n-방과후 프로그램 진행"
    }
    
    func select309() {
        self.cafeteriaControl.selectedSegmentIndex = 1
        self.titleLabel.text = "309관 피트니스실"
        self.locationLabel.text = "-2층 남자기숙사 출입구 옆"
        self.timeLabel.text = "운영시간\n06:00 ~ 23:00"
        self.howToUse.text = "-카드 있어야 출입 가능\n-방과후 프로그램 진행"
    }
    
    func selectFuture() {
        self.cafeteriaControl.selectedSegmentIndex = 2
        self.titleLabel.text = "퓨처 피트니스실"
        self.timeLabel.text = "운영시간\n06:00 ~ 22:30"
        self.locationLabel.text = "-???\n-???"
        self.howToUse.text = "-관생 무료이용"
    }
    
    @IBAction func cafeteriaControl(_ sender: Any) {
        switch cafeteriaControl.selectedSegmentIndex {
        case 0:
            select308()
        case 1:
            select309()
        case 2:
            selectFuture()
        default:
            select308()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switch settingDormitoryBuilding().read() {
        case 0:
            select308()
        case 1:
            select309()
        case 2:
            selectFuture()
        default:
            select308()
        }
    }
}



