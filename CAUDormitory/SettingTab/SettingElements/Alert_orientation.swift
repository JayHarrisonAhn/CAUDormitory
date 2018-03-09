//
//  Alert_orientation.swift
//  CAUDormitory
//
//  Created by Harrison on 2018. 3. 9..
//  Copyright © 2018년 CAUADC. All rights reserved.
//

import Foundation
import UIKit

class settingAlert_orientation:settingAlert {
    override init() {
        super.init()
        super.name_korean = "오리엔테이션 알림"
        super.name_english = "Orientation Alert"
        
        super.UDIdentifier = "setting_ALR_ORT"
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
