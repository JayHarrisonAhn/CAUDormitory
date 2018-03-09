//
//  SubmitSupportTableViewController.swift
//  CAUDormitory
//
//  Created by Harrison on 2018. 2. 10..
//  Copyright © 2018년 CAUADC. All rights reserved.
//

import UIKit

class SubmitSupportTableViewController: UITableViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contact.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        cell.textLabel?.text = contact[indexPath.row].title
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        UIApplication.shared.open(contact[indexPath.row].url, options: [:], completionHandler: nil)
    }
}
