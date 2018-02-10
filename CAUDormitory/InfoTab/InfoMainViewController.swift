//
//  InfoMainViewController.swift
//  CAUDormitory
//
//  Created by JaeHyung Ahn on 2018. 2. 11..
//  Copyright © 2018년 CAUADC. All rights reserved.
//

import UIKit

class InfoMainViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    @IBOutlet weak var infoCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if UserDefaults.standard.object(forKey: "Checked") == nil {
            self.performSegue(withIdentifier: "modalWelcome", sender: self)
        }
        
        infoCollection.dataSource = self
        infoCollection.delegate = self
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return facilities.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return facilities[section].count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if facilities[indexPath.section][indexPath.row].iconSize == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "smallCell", for: indexPath) as! SmallCollectionViewCell
            cell.iconImage.image = facilities[indexPath.section][indexPath.row].icon
            cell.iconLabel.text = facilities[indexPath.section][indexPath.row].name
            return cell
        } else if facilities[indexPath.section][indexPath.row].iconSize == 2 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "bigCell", for: indexPath) as! BigCollectionViewCell
            cell.iconImage.image = facilities[indexPath.section][indexPath.row].icon
            cell.iconLabel.text = facilities[indexPath.section][indexPath.row].name
            return cell
        } else {
            print("collectionViewCell Error")
            return collectionView.dequeueReusableCell(withReuseIdentifier: "bigCell", for: indexPath)
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
