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
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return facilities.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return facilities[section].count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "smallCell", for: indexPath) as! SmallCollectionViewCell
        
        
        let cellDetail = facilities[indexPath.section][indexPath.row]
        cell.iconLabel.text = cellDetail.name_korean
        cell.iconImage.image = cellDetail.icon
        
        cell.frame.size.height = 80
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "header", for: indexPath) as! headerCell
        
        switch indexPath.section {
        case 0:
            headerView.headLabel.text = "편의시설"
        case 1:
            headerView.headLabel.text = "상업시설"
        case 2:
            headerView.headLabel.text = "공용기기"
        case 3:
            headerView.headLabel.text = "정기행사"
        default:
            print("error")
        }
        
        return headerView
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: facilities[indexPath.section][indexPath.row].CellSegueIdentifier, sender: nil)
        
    }
}
