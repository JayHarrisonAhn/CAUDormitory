//
//  SubmitTabViewController.swift
//  CAUDormitory
//
//  Created by JaeHyung Ahn on 2018. 2. 10..
//  Copyright © 2018년 CAUADC. All rights reserved.
//

import UIKit

class SubmitTabViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var submit1CollectionView: UICollectionView!
    @IBOutlet weak var submit2CollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        submit1CollectionView.delegate = self
        submit1CollectionView.dataSource = self

        submit2CollectionView.delegate = self
        submit2CollectionView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.submit1CollectionView {
            return doingSubmit.count
        } else {
            return regularSubmit.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.submit1CollectionView {
            let cell:SubmitTab1CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "tab1Cell", for: indexPath) as! SubmitTab1CollectionViewCell
            
            cell.iconImage.image = doingSubmit[indexPath.row].icon
            cell.iconLabel.text = doingSubmit[indexPath.row].title
            
            return cell
        } else {
            let cell:SubmitTab2CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "tab2Cell", for: indexPath) as! SubmitTab2CollectionViewCell
            
            cell.iconImage.image = regularSubmit[indexPath.row].icon
            cell.iconLabel.text = regularSubmit[indexPath.row].title
            
            return cell
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
