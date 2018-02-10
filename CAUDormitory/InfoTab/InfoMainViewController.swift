//
//  InfoMainViewController.swift
//  CAUDormitory
//
//  Created by JaeHyung Ahn on 2018. 2. 11..
//  Copyright © 2018년 CAUADC. All rights reserved.
//

import UIKit

class InfoMainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if UserDefaults.standard.object(forKey: "Checked") == nil {
            self.performSegue(withIdentifier: "modalWelcome", sender: self)
        }
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
