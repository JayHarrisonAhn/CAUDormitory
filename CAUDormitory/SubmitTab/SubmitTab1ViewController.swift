//
//  SubmitTab1ViewController.swift
//  CAUDormitory
//
//  Created by CAUADC on 2018. 2. 8..
//  Copyright © 2018년 CAUADC. All rights reserved.
//

import UIKit

class SubmitTab1ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var table = doingSubmit
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return table.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SubmitTab1CollectionViewCell", for: indexPath) as! SubmitTab1CollectionViewCell
        
        cell.iconLabel.text = table[indexPath.row].title
        cell.iconImage.image = table[indexPath.row].icon
        
        return cell
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
