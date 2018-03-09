//
//  Definition.swift
//  CAUDormitory
//
//  Created by Harrison on 2018. 3. 9..
//  Copyright © 2018년 CAUADC. All rights reserved.
//

import Foundation
import UIKit


protocol facility {
    var name_korean:String {get}
    var name_english:String {get}
    
    var CellSegueIdentifier:String {get}
    
    var icon:UIImage {get}
}

let facilities:[[facility]] = [
    [Cafeteria(), Cafeteria(), Cafeteria()],
    []
]

