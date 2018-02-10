//
//  SmallCollectionViewCell.swift
//  CAUDormitory
//
//  Created by JaeHyung Ahn on 2018. 2. 11..
//  Copyright © 2018년 CAUADC. All rights reserved.
//

import UIKit

class SmallCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var iconLabel: UILabel!
}

class BigCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var iconLabel: UILabel!
}

class headerCell: UICollectionReusableView {
    @IBOutlet weak var headLabel: UILabel!
    
}
