//
//  homeViewController.swift
//  cureios
//
//  Created by STDC_37 on 20/05/2024.
//

import UIKit

class homeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func gotoExplore(_ sender: UIButton) {
        self.tabBarController?.selectedIndex = 1
    }
    
    @IBAction func gotoNews(_ sender: UIButton) {
        self.tabBarController?.selectedIndex = 2
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
