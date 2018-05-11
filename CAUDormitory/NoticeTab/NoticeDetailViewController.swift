//
//  NoticeDetailViewController.swift
//  CAUDormitory
//
//  Created by Harrison on 2018. 5. 11..
//  Copyright © 2018년 CAUADC. All rights reserved.
//

import UIKit
import WebKit

class NoticeDetailViewController: UIViewController {

    @IBOutlet weak var web: WKWebView!
    
    var num:String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://dormitory.cau.ac.kr/bbs/bbs_view.php?pNum=" + num! + "&bbsID=notice")
        let request = URLRequest(url: url!)
        web.load(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    func webViewDidStartLoad(_ webView: UIWebView) {
//        UIApplication.shared.isNetworkActivityIndicatorVisible = true
//    }
//    
//    func webViewDidFinishLoad(_ webView: UIWebView) {
//        UIApplication.shared.isNetworkActivityIndicatorVisible = false
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
