//
//  ExploreDetails.swift
//  cureios
//
//  Created by STDC_18 on 21/05/2024.
//

import UIKit

class TeamDetailViewController: UIViewController {
    
    @IBOutlet var photoImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var mottoLabel: UILabel!
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    var selectedTeamMember: ExploreData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoImageView.clipToCircle()
        photoImageView.image = selectedTeamMember?.photo
        nameLabel.text = selectedTeamMember?.name
        mottoLabel.text = selectedTeamMember?.motto
        locationLabel.text = selectedTeamMember?.location
        phoneLabel.text = selectedTeamMember?.phoneNumber
        companyLabel.text = selectedTeamMember?.company
        
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
