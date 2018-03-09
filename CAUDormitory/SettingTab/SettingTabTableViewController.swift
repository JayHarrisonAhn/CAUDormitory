//
//  SettingTabTableViewController.swift
//  CAUDormitory
//
//  Created by CAUADC on 2018. 2. 8..
//  Copyright © 2018년 CAUADC. All rights reserved.
//
import UIKit

class SettingTabTableViewController: UITableViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return setting.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return setting[section].count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let value = setting[indexPath.section][indexPath.row]
        
        let tempCell = tableView.dequeueReusableCell(withIdentifier: value.CellIdentifier, for: indexPath)
        let result = value.setCell(cell: tempCell)
        
        
        return result
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "사용자 정보"
        case 1:
            return "호실 정보"
        case 2:
            return "푸시알림"
        default:
            return nil
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        setting[indexPath.section][indexPath.row].selected(tableView)
    }
}
