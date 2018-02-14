//
//  SettingTabTableViewController.swift
//  CAUDormitory
//
//  Created by CAUADC on 2018. 2. 8..
//  Copyright © 2018년 CAUADC. All rights reserved.
//

import UIKit

protocol settingElement {
    var name:String {get}
    var identifier:String {get}
    func setCell(cell:UITableViewCell) -> UITableViewCell
    func initializeKey()
}

class settingBoolElement:settingElement {
    var name:String
    var identifier: String = "bool"
    init(name:String) {
        self.name = name
    }
    func read() -> Bool {
        return UserDefaults.standard.bool(forKey: "setting_" + name)
    }
    func write(_ to:Bool) {
        UserDefaults.standard.set(to, forKey: "setting_" + name)
    }
    func setCell(cell:UITableViewCell) -> UITableViewCell {
        let resultCell = cell as! SettingButtonTableViewCell
        resultCell.cellName.text = name
        resultCell.cellButton.isOn = read()
        return resultCell
    }
    func initializeKey() {
        write(false)
    }
}
class settingAlertElement:settingElement {
    var name:String
    var identifier: String = "alert"
    init(name:String) {
        self.name = name
    }
    func read() -> Bool {
        return UserDefaults.standard.bool(forKey: "setting_" + name)
    }
    func write(_ to:Bool) {
        UserDefaults.standard.set(to, forKey: "setting_" + name)
    }
    func setCell(cell:UITableViewCell) -> UITableViewCell  {
        let resultCell = cell as! SettingAlertTableViewCell
        resultCell.cellName.text = name
        resultCell.cellButton.isOn = read()
        return resultCell
    }
    func initializeKey() {
        write(false)
    }
}
class settingStringElement:settingElement {
    var name:String
    var identifier: String = "detail"
    init(name:String) {
        self.name = name
    }
    func read() -> String? {
        return UserDefaults.standard.string(forKey: "setting_" + name)
    }
    func write(_ to:String) {
        UserDefaults.standard.set(to, forKey: "setting_" + name)
    }
    func setCell(cell:UITableViewCell) -> UITableViewCell {
        let resultCell = cell as! SettingDetailTableViewCell
        resultCell.cellName.text = name
        resultCell.cellDetail.text = read()
        return resultCell
    }
    func initializeKey() {
        write(" ")
    }
}
class settingBuildingElement:settingElement {
    var name:String
    var identifier: String = "detail"
    init(name:String) {
        self.name = name
    }
    func read() -> DormitoryBuilding? {
        guard let resultString = UserDefaults.standard.string(forKey: "setting_" + name) else {
            return nil
        }
        return DormitoryBuilding(rawValue: resultString)
    }
    func write(_ to:DormitoryBuilding) {
        UserDefaults.standard.set(to.rawValue, forKey: "setting_" + name)
    }
    func setCell(cell:UITableViewCell) -> UITableViewCell {
        let resultCell = cell as! SettingDetailTableViewCell
        resultCell.cellName.text = name
        resultCell.cellDetail.text = read()?.korean
        return resultCell
    }
    func initializeKey() {
        write(.blueMir309)
    }
}
class settingIntElement:settingElement {
    var name:String
    var identifier: String = "detail"
    init(name:String) {
        self.name = name
    }
    func read() -> Int {
        return UserDefaults.standard.integer(forKey: "setting_" + name)
    }
    func write(_ to:Int) {
        UserDefaults.standard.set(to, forKey: "setting_" + name)
    }
    func setCell(cell: UITableViewCell) -> UITableViewCell{
        let resultCell = cell as! SettingDetailTableViewCell
        resultCell.cellName.text = name
        resultCell.cellDetail.text = String(read())
        return resultCell
    }
    func initializeKey() {
        write(18)
    }
}
class settingGenderElement:settingElement {
    var name:String
    var identifier: String = "detail"
    init(name:String) {
        self.name = name
    }
    func read() -> Gender? {
        guard let resultString = UserDefaults.standard.string(forKey: "setting_" + name) else {
            return nil
        }
        return Gender(rawValue: resultString)
    }
    func write(_ to:Gender) {
        UserDefaults.standard.set(to.rawValue, forKey: "setting_" + name)
    }
    func setCell(cell:UITableViewCell) -> UITableViewCell {
        let resultCell = cell as! SettingDetailTableViewCell
        resultCell.cellName.text = name
        resultCell.cellDetail.text = read()?.korean
        return resultCell
    }
    func initializeKey() {
        write(.man)
    }
}

var setting:[[settingElement]] = [
    [settingIntElement(name:"학번"),
     settingGenderElement(name:"성별")],
    
    [settingBuildingElement(name:"생활관 건물"),
     settingIntElement(name:"생활관 호실")],
    
    [settingAlertElement(name:"푸시알림"),
     settingBoolElement(name:"정기생활점검"),
     settingBoolElement(name:"정기소방훈련"),
     settingBoolElement(name:"오리엔테이션"),
     settingBoolElement(name:"방역소독"),
     settingBoolElement(name:"입관신청"),
     settingBoolElement(name:"퇴관신청")]
]

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
        let cell = tableView.dequeueReusableCell(withIdentifier: value.identifier, for: indexPath)
        
        return value.setCell(cell: cell)
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
