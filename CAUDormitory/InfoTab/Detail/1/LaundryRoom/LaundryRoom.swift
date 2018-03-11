//
//  ViewController.swift
//  CAUDormitory
//
//  Created by JaeHyung Ahn on 2018. 2. 22..
//  Copyright © 2018년 CAUADC. All rights reserved.
//

import UIKit

class LaundryRoom:facility {
    var name_korean = "세탁실"
    var name_english = "Laundry Room"
    
    var CellSegueIdentifier: String = "LDR"
    
    var icon: UIImage = #imageLiteral(resourceName: "info_logo_laundryroom")
}

class LaundryRoomViewController: UIViewController {
    
    @IBOutlet weak var cafeteriaControl: UISegmentedControl!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet var detail: UILabel!
    @IBOutlet var howToUse: UILabel!
    
    
    func select308() {
        self.cafeteriaControl.selectedSegmentIndex = 0
        self.titleLabel.text = "308관 세탁실"
        self.timeLabel.text = "운영시간\n06:00 ~ 익일 01:00"
        self.detail.text = "코인세탁기 20대\n코인건조기 12대"
        self.howToUse.text = "코인세탁기 : ???\n코인건조기 : ???"
    }
    
    func select309() {
        self.cafeteriaControl.selectedSegmentIndex = 1
        self.titleLabel.text = "309관 세탁실"
        self.timeLabel.text = "운영시간\n06:00 ~ 익일 01:00"
        self.detail.text = "코인세탁기 26대\n코인건조기 13대"
        self.howToUse.text = "코인세탁기 : ???\n코인건조기 : ???"
    }
    
    func selectFuture() {
        self.cafeteriaControl.selectedSegmentIndex = 2
        self.titleLabel.text = "퓨처하우스 세탁실"
        self.timeLabel.text = "운영시간\n06:00 ~ 익일 01:00"
        self.detail.text = "코인세탁기 4대\n코인건조기 4대"
        self.howToUse.text = "코인세탁기 : ???\n코인건조기 : ???"
    }
    
    func selectGlobal() {
        self.cafeteriaControl.selectedSegmentIndex = 3
        self.titleLabel.text = "글로벌하우스 세탁실"
        self.timeLabel.text = "운영시간\n06:00 ~ 익일 01:00"
        self.detail.text = "코인세탁기 4대, 코인건조기 2대\n다리미 2대"
        self.howToUse.text = "코인세탁기 : ???\n코인건조기 : ???"
    }
    
    
    @IBAction func cafeteriaControl(_ sender: Any) {
        switch cafeteriaControl.selectedSegmentIndex {
        case 0:
            select308()
        case 1:
            select309()
        case 2:
            selectFuture()
        case 3:
            selectGlobal()
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
        case 3:
            selectGlobal()
        default:
            select308()
        }
    }
}


