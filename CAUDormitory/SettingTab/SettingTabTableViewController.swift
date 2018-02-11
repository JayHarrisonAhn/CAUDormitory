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
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return setting.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return setting[section].count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch setting[indexPath.section][indexPath.row].type {
        case .Bool:
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellButton", for: indexPath) as! SettingButtonTableViewCell
            cell.cellName.text = setting[indexPath.section][indexPath.row].name
            cell.cellButton.isOn = setting[indexPath.section][indexPath.row].readValue() as! Bool
            return cell
        case .Building:
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellDetail", for: indexPath) as! SettingDetailTableViewCell
            cell.cellName.text = setting[indexPath.section][indexPath.row].name
            let temp = setting[indexPath.section][indexPath.row].readValue() as? String
            cell.cellDetail.text = DormitoryBuilding(rawValue: temp!)?.definition
            return cell
        case .String:
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellDetail", for: indexPath) as! SettingDetailTableViewCell
            cell.cellName.text = setting[indexPath.section][indexPath.row].name
            cell.cellDetail.text = setting[indexPath.section][indexPath.row].readValue() as? String
            return cell
        }
        
        

        

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
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
