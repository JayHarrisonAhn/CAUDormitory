//
//  ViewController.swift
//  CAUDormitory
//
//  Created by JaeHyung Ahn on 2018. 2. 22..
//  Copyright © 2018년 CAUADC. All rights reserved.
//

import UIKit

class Cafeteria:facility {
    var name_korean = "식당"
    var name_english = "Cafeteria"
    
    var CellSegueIdentifier: String = "CFT"
    
    var icon: UIImage = #imageLiteral(resourceName: "info_logo_cafeteria")
}

class CafeteriaViewController: UIViewController {

    @IBOutlet weak var cafeteriaControl: UISegmentedControl!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet var menu: UILabel!
    
    
    func select308() {
        titleLabel.text = "308관 식당"
        timeLabel.text = "조식  07:00 ~ 08:40\n중식  11:00 ~ 13:30\n석식  17:00 ~ 19:00\n간식 "
        self.cafeteriaControl.setEnabled(true, forSegmentAt: 0)
        self.cafeteriaControl.selectedSegmentIndex = 0
        menu.text = "오늘의 식단표\n기능 지원 예정입니다.\n.\n.\n."
    }
    
    func select309() {
        titleLabel.text = "309관 식당"
        timeLabel.text = "조식 운영없음\n중식  11:30 ~ 13:30\n석식  17:30 ~ 18:40\n간식  19:00 ~ 21:00"
        self.cafeteriaControl.setEnabled(true, forSegmentAt: 1)
        self.cafeteriaControl.selectedSegmentIndex = 1
        menu.text = "오늘의 식단표\n기능 지원 예정입니다.\n.\n.\n."
    }
    
    
    @IBAction func cafeteriaControl(_ sender: Any) {
        switch cafeteriaControl.selectedSegmentIndex {
        case 0:
            select308()
        case 1:
            select309()
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
        default:
            select308()
        }
    }
}
