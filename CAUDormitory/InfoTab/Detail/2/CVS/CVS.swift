//
//  ViewController.swift
//  CAUDormitory
//
//  Created by JaeHyung Ahn on 2018. 2. 22..
//  Copyright © 2018년 CAUADC. All rights reserved.
//

import UIKit

class CVS:facility {
    override init() {
        super.init()
        super.name_korean = "편의점"
        super.CellSegueIdentifier = "CVS"
        super.icon = UIImage(named: "info_logo_"+super.CellSegueIdentifier)!
    }
}

class CVSViewController: AdsViewController {
    
    @IBOutlet weak var cafeteriaControl: UISegmentedControl!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    
    func select308() {
        
        titleLabel.text = "308관 CU"
        timeLabel.text = ""
        self.cafeteriaControl.selectedSegmentIndex = 0
    }
    
    func select309() {
        titleLabel.text = "309관 CU"
        timeLabel.text = "ㅇㅇㅇㅇㅇ"
        self.cafeteriaControl.selectedSegmentIndex = 1
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

