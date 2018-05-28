//
//  Definition.swift
//  CAUDormitory
//
//  Created by Harrison on 2018. 3. 9..
//  Copyright © 2018년 CAUADC. All rights reserved.
//

import Foundation
import UIKit
import GoogleMobileAds


class facility {
    var name_korean:String = "시설명"
    var CellSegueIdentifier:String = "Cell"
    var icon:UIImage = UIImage(named: "info_logo_default")!
}

let facilities:[[facility]] = [
    [LaundryRoom(), FitnessRoom()],
    [Cafeteria(), CVS(), VendingMachine(), Cafe()],
    [PC()]
]
//방호실, 운영실 추가 필요

class AdsViewController:UIViewController, GADBannerViewDelegate {
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
    override func viewDidLoad() {
        super.viewDidLoad()
        bannerView = GADBannerView(adSize: kGADAdSizeBanner)
        addBannerViewToView(bannerView)
        bannerView.adUnitID = adUnitID
        bannerView.rootViewController = self
        let request = GADRequest()
        bannerView.load(request)
    }
}
