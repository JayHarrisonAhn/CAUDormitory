//
//  GenderPickerView.swift
//  CAUDormitory
//
//  Created by JaeHyung Ahn on 2018. 2. 15..
//  Copyright © 2018년 CAUADC. All rights reserved.
//

import UIKit

class GenderPickerView: UIPickerView, UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 2
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        studentGender.write(Gender(rawValue: row)!)
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Gender(rawValue: row)?.korean
    }
}

