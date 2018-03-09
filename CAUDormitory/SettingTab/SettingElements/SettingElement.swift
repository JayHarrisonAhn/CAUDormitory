//
//  SettingElement.swift
//  CAUDormitory
//
//  Created by Harrison on 2018. 3. 9..
//  Copyright © 2018년 CAUADC. All rights reserved.
//

import Foundation
import UIKit

protocol settingElement {
    var name_korean:String {get}
    var name_english:String {get}
    
    var CellIdentifier:String {get}
    var UDIdentifier:String {get}
    
    func initializeKey()
    
    func setCell(cell:UITableViewCell) -> UITableViewCell
    func selected(_ tableView:UITableView)
    
    func read() -> Int
    func write(_ value:Int)
}

var setting:[[settingElement]] = [
    [settingStudentID(),
     settingStudentGender()],
    
    [settingDormitoryBuilding(),
     settingDormitoryRoom()],
    
    [settingAlert(),
     settingAlert_rglCheck(),
     settingAlert_fireDrill(),
     settingAlert_orientation(),
     settingAlert_sanitation(),
     settingAlert_moveIn(),
     settingAlert_moveOut()]
]
