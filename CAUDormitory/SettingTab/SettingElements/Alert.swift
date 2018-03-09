//
//  Alert.swift
//  CAUDormitory
//
//  Created by Harrison on 2018. 3. 9..
//  Copyright © 2018년 CAUADC. All rights reserved.
//

import Foundation
import UIKit

class settingAlert:settingElement {
    var name_korean: String = "푸시알림 설정"
    var name_english: String = "Push Alert"
    
    var UDIdentifier: String = "setting_ALR"
    var CellIdentifier: String = "alert"
    
    init() {
        name_korean = "푸시알림 설정"
        name_english = "Push Alert"
        
        UDIdentifier = "setting_ALR"
        CellIdentifier = "alert"
    }
    
    func read() -> Int {
        if UserDefaults.standard.bool(forKey: UDIdentifier) == true {
            return 1
        } else {
            return 0
        }
    }
    func write(_ value:Int) {
        if value == 0 {
            UserDefaults.standard.set(false, forKey: UDIdentifier)
        } else {
            UserDefaults.standard.set(true, forKey: UDIdentifier)
        }
    }
    func setCell(cell:UITableViewCell) -> UITableViewCell  {
        let resultCell = cell as! SettingAlertTableViewCell
        
        resultCell.cellName.text = self.name_korean

        switch self.read() {
        case 0: resultCell.cellButton.isOn = false
        default: resultCell.cellButton.isOn = true
        }
        
        return resultCell
    }
    func initializeKey() {
        write(0)
    }
    func selected(_ tableView:UITableView) {
    }
}
