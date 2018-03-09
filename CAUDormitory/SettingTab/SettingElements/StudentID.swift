//
//  StudentID.swift
//  CAUDormitory
//
//  Created by Harrison on 2018. 3. 9..
//  Copyright © 2018년 CAUADC. All rights reserved.
//

import Foundation
import UIKit

class settingStudentID:settingElement {
    var name_korean: String = "학번"
    var name_english: String = "Student ID"
    
    var CellIdentifier: String = "detail"
    var UDIdentifier: String = "setting_SID"
    
    func read() -> Int {
        let result = UserDefaults.standard.integer(forKey: self.UDIdentifier)
        return result
    }
    func write(_ value:Int) {
        UserDefaults.standard.set(value, forKey: self.UDIdentifier)
    }
    func setCell(cell: UITableViewCell) -> UITableViewCell{
        let resultCell = cell as! SettingDetailTableViewCell
        resultCell.cellName.text = self.name_korean
        resultCell.cellDetail.text = String(read())
        return resultCell
    }
    func initializeKey() {
        write(20180000)
    }
    func selected(_ tableView:UITableView) {
        let alertController = UIAlertController(title: "학번 수정", message: " ", preferredStyle: .alert)
        
        let adjustAction = UIAlertAction(title: "수정", style: .default) {(_) in
            let ID = alertController.textFields![0] as UITextField
            let value = Int(ID.text!)
            
            if value == nil {
                let alertErrorController = alertController
                alertErrorController.message = "학번을 입력해주세요"
                UIApplication.shared.keyWindow?.rootViewController?.present(alertErrorController, animated: true, completion: nil)
            } else if value! < 10000000 {
                let alertErrorController = alertController
                alertErrorController.message = "여덟 자리 학번을 입력해주세요"
                UIApplication.shared.keyWindow?.rootViewController?.present(alertErrorController, animated: true, completion: nil)
            }else if (value! < 20190000) && (value! > 19180000) {
                settingStudentID().write(value!)
                tableView.reloadData()
            } else {
                let alertErrorController = alertController
                alertErrorController.message = "올바른 학번을 입력해주세요"
                UIApplication.shared.keyWindow?.rootViewController?.present(alertErrorController, animated: true, completion: nil)
            }
        }
        
        let cancelAction = UIAlertAction(title: "취소", style: .cancel)
        
        alertController.addTextField(configurationHandler: {(textField) in
            textField.placeholder = "학번(8자리)"
            textField.keyboardType = .numberPad
        })
        
        alertController.addAction(cancelAction)
        alertController.addAction(adjustAction)
        
        UIApplication.shared.keyWindow?.rootViewController?.present(alertController, animated: true, completion: nil)
    }
}
