//
//  DormitoryBuilding.swift
//  CAUDormitory
//
//  Created by Harrison on 2018. 3. 9..
//  Copyright © 2018년 CAUADC. All rights reserved.
//

import Foundation
import UIKit

enum DormitoryBuilding:Int {
    case blueMir308 = 0
    case blueMir309
    case future
    case global
    
    var english:String? {
        switch self {
        case .blueMir308: return "blueMir 308"
        case .blueMir309: return "blueMir 309"
        case .future: return "future house"
        case .global: return "global house"
        }
    }
    var korean:String? {
        switch self {
        case .blueMir308: return "블루미르 308관"
        case .blueMir309: return "블루미르 309관"
        case .future: return "퓨처하우스"
        case .global: return "글로벌하우스"
        }
    }
}

class settingDormitoryBuilding:settingElement {
    var name_korean: String = "기숙사 건물"
    var name_english: String = "Dormitory Building"
    
    var UDIdentifier: String = "setting_DBD"
    var CellIdentifier: String = "detail"
    
    func read() -> Int {
        let result = DormitoryBuilding(rawValue: (UserDefaults.standard.integer(forKey: self.UDIdentifier)))!
        return result.rawValue
    }
    func write(_ value:Int) {
        UserDefaults.standard.set(value, forKey: self.UDIdentifier)
    }
    
    func setCell(cell: UITableViewCell) -> UITableViewCell{
        let resultCell = cell as! SettingDetailTableViewCell
        resultCell.cellName.text = name_korean
        resultCell.cellDetail.text = DormitoryBuilding(rawValue: read())?.korean
        return resultCell
    }
    func initializeKey() {
        write(DormitoryBuilding.blueMir309.rawValue)
    }
    
    func selected(_ tableView:UITableView) {
        let vc = UIViewController()
        vc.preferredContentSize = CGSize(width: 250,height: 300)
        let pickerView = BuildingPickerView(frame: CGRect(x: 0, y: 0, width: 250, height: 300))
        pickerView.dataSource = pickerView
        pickerView.delegate = pickerView
        vc.view.addSubview(pickerView)
        let editRadiusAlert = UIAlertController(title: "Choose distance", message: "", preferredStyle: .alert)
        editRadiusAlert.setValue(vc, forKey: "contentViewController")
        editRadiusAlert.addAction(UIAlertAction(title: "Done", style: .default, handler: {(_) in
            tableView.reloadData()
        }))
        editRadiusAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        UIApplication.shared.keyWindow?.rootViewController?.present(editRadiusAlert, animated: true, completion: nil)
    }
}

