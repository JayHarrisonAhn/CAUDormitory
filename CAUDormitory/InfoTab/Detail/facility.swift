//
//  Definition.swift
//  CAUDormitory
//
//  Created by Harrison on 2018. 3. 9..
//  Copyright © 2018년 CAUADC. All rights reserved.
//

import Foundation
import UIKit


class facility {
    var name_korean:String = "시설명"
    var CellSegueIdentifier:String = "Cell"
    var icon:UIImage = UIImage(named: "info_logo_default")!
}

let facilities:[[facility]] = [
    [LaundryRoom(), FitnessRoom()],
    [Cafeteria(), CVS(), VendingMachine(), Cafe()]
    
]

