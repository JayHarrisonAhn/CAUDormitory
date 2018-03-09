//
//  SettingDetailTableViewCell.swift
//  CAUDormitory
//
//  Created by Harrison on 2018. 2. 12..
//  Copyright © 2018년 CAUADC. All rights reserved.
//

import UIKit

class SettingDetailTableViewCell: UITableViewCell {
    @IBOutlet weak var cellName: UILabel!
    @IBOutlet weak var cellDetail: UILabel!
}

class SettingStudentIDTableViewCell:UITableViewCell {
    @IBOutlet weak var cellName: UILabel!
    @IBOutlet weak var cellDetail: UILabel!
    
}

class SettingAlertTableViewCell: UITableViewCell {
    var settingClass:settingElement?
    
    @IBOutlet weak var cellName: UILabel!
    @IBOutlet weak var cellButton: UISwitch!
    
    @IBAction func cellButton(_ sender: Any) {
        if cellButton.isOn == false {
            settingClass?.write(0)
        } else {
            settingClass?.write(1)
        }
    }
    
}

class SettingButtonTableViewCell: UITableViewCell {
    var settingClass:settingElement?
    
    @IBOutlet weak var cellName: UILabel!
    @IBOutlet weak var cellButton: UISwitch!
    
    @IBAction func cellButton(_ sender: Any) {
        if cellButton.isOn == false {
            settingClass?.write(0)
        } else {
            settingClass?.write(1)
        }
    }
}

