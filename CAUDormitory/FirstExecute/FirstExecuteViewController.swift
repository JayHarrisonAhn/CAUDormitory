//
//  FirstExecuteViewController.swift
//  CAUDormitory
//
//  Created by CAUADC on 2018. 2. 7..
//  Copyright © 2018년 CAUADC. All rights reserved.
//

import UIKit

class FirstExecuteViewController: UIViewController {
    
    var check1 = false
    var check2 = false
    
    @IBOutlet weak var Label1: UIButton!
    @IBOutlet weak var Label2: UIButton!
    
    @IBAction func Check1(_ sender: Any) {
        check1 = true
        Label1.setTitleColor(UIColor.black, for: .normal)
    }
    
    @IBAction func Check2(_ sender: Any) {
        check2 = true
        Label2.setTitleColor(UIColor.black, for: .normal)
    }
    
    @IBAction func NextButton(_ sender: Any) {
        
        if (check1 == true) && (check2 == true) {
            InitUserData()            
            self.dismiss(animated: true)
        } else if check1 == false {
            Label1.setTitleColor(UIColor.red, for: .normal)
        } else if check2 == false {
            Label2.setTitleColor(UIColor.red, for: .normal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
