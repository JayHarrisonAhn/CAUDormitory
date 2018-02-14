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

class SettingButtonTableViewCell: UITableViewCell {
    @IBOutlet weak var cellName: UILabel!
    @IBOutlet weak var cellButton: UISwitch!
}

class SettingAlertTableViewCell: UITableViewCell {
    @IBOutlet weak var cellName: UILabel!
    @IBOutlet weak var cellButton: UISwitch!
}

class SettingStudentIDTableViewCell:UITableViewCell {
    @IBOutlet weak var cellName: UILabel!
    @IBOutlet weak var cellDetail: UILabel!
    
}
