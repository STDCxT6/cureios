//
//  exploreViewController.swift
//  cureios
//
//  Created by STDC_37 on 20/05/2024.
//

import UIKit

class eventViewController: UIViewController {

    
    @IBOutlet var bgView: UIView!
    @IBOutlet var newsList: UIStackView!
    @IBOutlet var eventList: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func switchTab(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            newsList.isHidden = false
            eventList.isHidden = true
           
            bgView.backgroundColor = #colorLiteral(red: 0.8799392581, green: 0.9148589969, blue: 0.9998951554, alpha: 1)
        } else {
            newsList.isHidden = true
            eventList.isHidden = false
            bgView.backgroundColor = #colorLiteral(red: 0.8320706487, green: 0.9123230577, blue: 1, alpha: 1)

        }
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


extension UIColor {
    public convenience init?(hex: String) {
        let r, g, b, a: CGFloat

        if hex.hasPrefix("#") {
            let start = hex.index(hex.startIndex, offsetBy: 1)
            let hexColor = String(hex[start...])

            if hexColor.count == 8 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0

                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                    g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                    b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                    a = CGFloat(hexNumber & 0x000000ff) / 255

                    self.init(red: r, green: g, blue: b, alpha: a)
                    return
                }
            }
        }

        return nil
    }
}
