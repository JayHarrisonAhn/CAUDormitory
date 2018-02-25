//
//  ViewController.swift
//  CAUDormitory
//
//  Created by JaeHyung Ahn on 2018. 2. 22..
//  Copyright © 2018년 CAUADC. All rights reserved.
//

import UIKit

class CafeteriaViewController: UIViewController {

    @IBOutlet weak var cafeteriaControl: UISegmentedControl!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    
    func select308() {
        titleLabel.text = "308관 식당"
        timeLabel.text = "조식 07:00 ~ 08:40\n중식 11:00 ~ 13:30\n석식 17:00 ~ 19:00"
        self.cafeteriaControl.setEnabled(true, forSegmentAt: 0)
    }
    
    func select309() {
        titleLabel.text = "309관 식당"
        timeLabel.text = "ㅇㅇㅇㅇㅇ"
        self.cafeteriaControl.setEnabled(true, forSegmentAt: 1)
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
        
//        switch UserDefaults.standard.integer(forKey: "setting_생활관 건물") {
//        case 0:
//            select308()
//        case 1:
//            select309()
//        default:
//            select308()
//        }
    }
}
