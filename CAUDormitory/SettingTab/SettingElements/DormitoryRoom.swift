//
//  DormitoryRoom.swift
//  CAUDormitory
//
//  Created by Harrison on 2018. 3. 9..
//  Copyright © 2018년 CAUADC. All rights reserved.
//

import Foundation
import UIKit

class settingDormitoryRoom:settingElement {
    var name_korean: String = "호실"
    var name_english: String = "Dormitory Room"
    
    var UDIdentifier: String = "setting_DRM"
    var CellIdentifier: String = "detail"
    
    func read() -> Int {
        return UserDefaults.standard.integer(forKey: self.UDIdentifier)
    }
    func write(_ value:Int) {
        UserDefaults.standard.set(value, forKey: self.UDIdentifier)
    }
    func setCell(cell: UITableViewCell) -> UITableViewCell{
        let resultCell = cell as! SettingDetailTableViewCell
        resultCell.cellName.text = name_korean
        resultCell.cellDetail.text = String(read())
        return resultCell
    }
    func initializeKey() {
        write(0)
    }
    func selected(_ tableView:UITableView) {
        let alertController = UIAlertController(title: "기숙사 호실 수정", message: " ", preferredStyle: .alert)
        
        let adjustAction = UIAlertAction(title: "수정", style: .default) {(_) in
            let roomNum = alertController.textFields![0] as UITextField
            let value = Int(roomNum.text!)
            settingDormitoryRoom().write(value!)
            tableView.reloadData()
        }
        
        let cancelAction = UIAlertAction(title: "취소", style: .cancel)
        
        alertController.addTextField(configurationHandler: {(textField) in
            textField.placeholder = "호실 번호"
            textField.keyboardType = .numberPad
        })
        
        alertController.addAction(cancelAction)
        alertController.addAction(adjustAction)
        
        UIApplication.shared.keyWindow?.rootViewController?.present(alertController, animated: true, completion: nil)
    }
}
