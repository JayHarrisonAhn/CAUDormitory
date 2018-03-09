//
//  StudentGender.swift
//  CAUDormitory
//
//  Created by Harrison on 2018. 3. 9..
//  Copyright © 2018년 CAUADC. All rights reserved.
//

import Foundation
import UIKit

enum Gender:Int {
    case man = 0
    case woman
    
    var english:String? {
        switch self {
        case .man: return "Man"
        case .woman: return "Woman"
        }
    }
    var korean:String? {
        switch self {
        case .man: return "남성"
        case .woman: return "여성"
        }
    }
}

class settingStudentGender:settingElement {
    var name_korean: String = "성별"
    var name_english: String = "Gender"
    
    var CellIdentifier: String = "detail"
    var UDIdentifier: String = "setting_GND"
    
    func read() -> Int {
        let result = Gender(rawValue: UserDefaults.standard.integer(forKey: self.UDIdentifier))!
        return result.rawValue
    }
    func write(_ value:Int) {
        let put = Gender(rawValue: value)
        UserDefaults.standard.set(put?.rawValue, forKey: self.UDIdentifier)
    }
    func setCell(cell: UITableViewCell) -> UITableViewCell{
        let resultCell = cell as! SettingDetailTableViewCell
        resultCell.cellName.text = self.name_korean
        resultCell.cellDetail.text = Gender(rawValue: self.read())?.korean
        return resultCell
    }
    func initializeKey() {
        write(Gender.man.rawValue)
    }
    
    func selected(_ tableView:UITableView) {
        
        
        let vc = UIViewController()
        vc.preferredContentSize = CGSize(width: 250,height: 300)
        let pickerView = GenderPickerView(frame: CGRect(x: 0, y: 0, width: 250, height: 300))
        pickerView.dataSource = pickerView
        pickerView.delegate = pickerView
        vc.view.addSubview(pickerView)
        
        
        let editRadiusAlert = UIAlertController(title: "성별 선택", message: "", preferredStyle: .alert)
        editRadiusAlert.setValue(vc, forKey: "contentViewController")
        editRadiusAlert.addAction(UIAlertAction(title: "Done", style: .default, handler: {(_) in
            tableView.reloadData()
        }))
        editRadiusAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        UIApplication.shared.keyWindow?.rootViewController?.present(editRadiusAlert, animated: true, completion: nil)
        
        
        
        
        
        
        
        
        
        
        
    }
}
