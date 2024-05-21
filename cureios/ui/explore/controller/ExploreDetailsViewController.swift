//
//  TeamData.swift
//  cureios
//
//  Created by STDC_18 on 21/05/2024.
//

import UIKit

class ExploreDetailViewController: UIViewController {
    
    @IBOutlet var photoImageView: UIImageView!
    @IBOutlet var courseLabel: UILabel!
    @IBOutlet var uniLabel: UILabel!
    @IBOutlet var kodLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    var selectedExploreData: ExploreData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoImageView.clipToCircle()
        photoImageView.image = selectedExploreData?.photo
        courseLabel.text = selectedExploreData?.course
        uniLabel.text = selectedExploreData?.uni
        kodLabel.text = selectedExploreData?.kod
        phoneLabel.text = selectedExploreData?.phoneNumber
        
    }
}


extension UIImageView {
    func clipToCircle() {
        self.layoutIfNeeded()
        self.layer.borderColor = UIColor.systemBlue.cgColor
        self.layer.borderWidth = 10.0
        self.layer.cornerRadius = self.frame.height / 2
        self.clipsToBounds = true
    }
}
