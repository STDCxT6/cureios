//
//  TeamData.swift
//  cureios
//
//  Created by STDC_18 on 21/05/2024.
//

import UIKit

class ExploreDetailViewController: UIViewController {
    
    @IBOutlet var courseLabel: UILabel!
    @IBOutlet var uniLabel: UILabel!
    @IBOutlet var kodLabel: UILabel!
    @IBOutlet var peringkatLabel: UILabel!
    @IBOutlet var tempohLabel: UILabel!
    @IBOutlet var fakulitiLabel: UILabel!
    @IBOutlet var bidangLabel: UILabel!
    @IBOutlet var tvetLabel: UILabel!
    @IBOutlet var lokasiLabel: UILabel!
    @IBOutlet var yuranLabel: UILabel!
    @IBOutlet var amLabel: UILabel!
    @IBOutlet var khasLabel: UILabel!
    @IBOutlet var laluanLabel: UILabel!
    var selectedExploreData: ExploreData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uniLabel.text = selectedExploreData?.uni
        kodLabel.text = selectedExploreData?.kod
        courseLabel.text = selectedExploreData?.course
        peringkatLabel.text = selectedExploreData?.peringkat
        tempohLabel.text = selectedExploreData?.tempoh
        fakulitiLabel.text = selectedExploreData?.fakuliti
        bidangLabel.text = selectedExploreData?.bidang
        tvetLabel.text = selectedExploreData?.tvet
        lokasiLabel.text = selectedExploreData?.lokasi
        yuranLabel.text = selectedExploreData?.yuran
        amLabel.text = selectedExploreData?.am
        khasLabel.text = selectedExploreData?.khas
        laluanLabel.text = selectedExploreData?.laluan


    }
}


extension UIImageView {
    func clipToRectangleWithRoundedCorners() {
        self.layoutIfNeeded()
        self.layer.cornerRadius = 12
        self.clipsToBounds = true

    }
}
