//
//  MainVC.swift
//  NetNews
//
//  Created by Vo Huy Hung on 8/30/17.
//  Copyright © 2017 Viettel Media. All rights reserved.
//

import UIKit
import PromiseKit

class MainVC: BaseViewController, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = "TEST"
        self.showLoading()
        
        self.showLoading()
        
        firstly {
            return AuthManager.requestAccessToken("abc", source: "google")
            
            }.then { token -> Void in
                
            }.always {
                self.hideLoadingView()
            }.catch { error in
                Log.debug("Error: \(error)")
        }
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
