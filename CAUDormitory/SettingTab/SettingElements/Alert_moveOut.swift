//
//  Alert_moveOut.swift
//  CAUDormitory
//
//  Created by Harrison on 2018. 3. 9..
//  Copyright © 2018년 CAUADC. All rights reserved.
//

import Foundation
import UIKit

class settingAlert_moveOut:settingAlert {
    override init() {
        super.init()
        super.name_korean = "퇴관 관련 알림"
        super.name_english = "Alert about Move Out"
        
        super.UDIdentifier = "setting_ALR_MVO"
        super.CellIdentifier = "bool"
    }
    
    override func setCell(cell: UITableViewCell) -> UITableViewCell {
        let resultCell = cell as! SettingButtonTableViewCell
        
        resultCell.cellName.text = self.name_korean
        
        switch self.read() {
        case 0: resultCell.cellButton.isOn = false
        default: resultCell.cellButton.isOn = true
        }
        return resultCell
    }
}

