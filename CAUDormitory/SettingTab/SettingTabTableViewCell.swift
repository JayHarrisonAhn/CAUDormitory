//
//  SettingDetailTableViewCell.swift
//  CAUDormitory
//
//  Created by Harrison on 2018. 2. 12..
//  Copyright © 2018년 CAUADC. All rights reserved.
//

import UIKit

class SettingDetailTableViewCell: UITableViewCell {
    
    var basicValue:SettingValue?
    
    @IBOutlet weak var cellName: UILabel!
    @IBOutlet weak var cellDetail: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

class SettingButtonTableViewCell: UITableViewCell {
    
    var basicValue:SettingValue?
    
    @IBOutlet weak var cellButton: UISwitch!
    @IBOutlet weak var cellName: UILabel!
    @IBAction func cellButton(_ sender: Any) {
        if self.cellButton.isOn {
            basicValue?.setValue(true)
        } else {
            basicValue?.setValue(false)
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}