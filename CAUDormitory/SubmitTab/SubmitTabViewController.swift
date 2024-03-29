//
//  SubmitTabViewController.swift
//  CAUDormitory
//
//  Created by JaeHyung Ahn on 2018. 2. 10..
//  Copyright © 2018년 CAUADC. All rights reserved.
//

import UIKit
import GoogleMobileAds

class SubmitTabViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, GADBannerViewDelegate {
    
    var bannerView: GADBannerView!
    func addBannerViewToView(_ bannerView: GADBannerView) {
        bannerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bannerView)
        view.addConstraints(
            [NSLayoutConstraint(item: bannerView,
                                attribute: .bottom,
                                relatedBy: .equal,
                                toItem: bottomLayoutGuide,
                                attribute: .top,
                                multiplier: 1,
                                constant: 0),
             NSLayoutConstraint(item: bannerView,
                                attribute: .centerX,
                                relatedBy: .equal,
                                toItem: view,
                                attribute: .centerX,
                                multiplier: 1,
                                constant: 0)
            ])
    }
    
    @IBOutlet weak var submit1CollectionView: UICollectionView!
    @IBOutlet weak var submit2CollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bannerView = GADBannerView(adSize: kGADAdSizeBanner)
        addBannerViewToView(bannerView)
        bannerView.adUnitID = adUnitID
        bannerView.rootViewController = self
        let request = GADRequest()
        bannerView.load(request)
        
        submit1CollectionView.delegate = self
        submit1CollectionView.dataSource = self

        submit2CollectionView.delegate = self
        submit2CollectionView.dataSource = self
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
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == self.submit1CollectionView {
            UIApplication.shared.open(doingSubmit[indexPath.row].url, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.open(regularSubmit[indexPath.row].url, options: [:], completionHandler: nil)
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
}
