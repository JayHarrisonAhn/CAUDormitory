//
//  Alert_orientation.swift
//  CAUDormitory
//
//  Created by Harrison on 2018. 3. 9..
//  Copyright © 2018년 CAUADC. All rights reserved.
//

import Foundation
import UIKit

class settingAlert_sanitation:settingAlert {
    override init() {
        super.init()
        super.name_korean = "방역소독 알림"
        super.name_english = "Room Sanitation Alert"
        
        super.UDIdentifier = "setting_ALR_SNT"
        super.CellIdentifier = "bool"
    }
    
    override func setCell(cell: UITableViewCell) -> UITableViewCell {
        let resultCell = cell as! SettingButtonTableViewCell
        
        resultCell.cellName.text = self.name_korean
        resultCell.settingClass = self
        
        switch self.read() {
        case 0: resultCell.cellButton.isOn = false
        default: resultCell.cellButton.isOn = true
        }
        return resultCell
    }
}

