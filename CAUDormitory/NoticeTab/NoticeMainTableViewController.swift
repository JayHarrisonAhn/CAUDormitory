//
//  NoticeMainTableViewController.swift
//  CAUDormitory
//
//  Created by JaeHyung Ahn on 2018. 3. 5..
//  Copyright © 2018년 CAUADC. All rights reserved.
//

import UIKit
import FirebaseDatabase

class NoticeMainTableViewController: UITableViewController {
    var postNum:[String] = []
    var postTitle:[String] = []
    var postDate:[String] = []
    
    var ref:DatabaseReference?
    var databaseHandle:DatabaseHandle?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ref = Database.database().reference()
        databaseHandle = ref?.child("Seoul_Bluemir/Notices").observe(.childAdded, with: { (snapshot) in
            var post:String? = snapshot.key
            if let actualPost = post {
                self.postNum.insert(actualPost, at: 0)
                self.tableView.reloadData()
            }
            
            post = snapshot.childSnapshot(forPath: "Title").value as? String
            if let actualPost = post {
                self.postTitle.insert(actualPost, at: 0)
                self.tableView.reloadData()
            }
            
            post = snapshot.childSnapshot(forPath: "Date").value as? String
            if let actualPost = post {
                self.postDate.insert(actualPost, at: 0)
                self.tableView.reloadData()
            }
        })
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postTitle.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "noticeCell", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = postTitle[indexPath.row]
        cell.detailTextLabel?.text = postDate[indexPath.row]

        return cell
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "detail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let controller = segue.destination as! NoticeDetailViewController
                controller.num = postNum[indexPath.row]
            }
        }
        
    }
    

}
