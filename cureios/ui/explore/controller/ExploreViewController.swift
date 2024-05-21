//
//  exploreViewController.swift
//  cureios
//
//  Created by STDC_37 on 20/05/2024.
//

import UIKit

class ExploreViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableview: UITableView!
    var tableData: [ExploreData] = [] //1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.dataSource = self
        tableview.delegate = self
        tableData = ExploreData.sampleExploreData() //2
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableData.count //3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //4
        let teamCell = tableView.dequeueReusableCell(withIdentifier: "exploreData", for: indexPath) as! ExploreTableViewCell
        let exploreData = tableData[indexPath.row]
        teamCell.photoImageView.image = exploreData.photo
        teamCell.courseLabel.text = exploreData.course
        teamCell.uniLabel.text = exploreData.uni
        teamCell.kodLabel.text = exploreData.kod
        teamCell.photoImageView.clipToBulat()
        return teamCell
        
    }
    //to navigate to each person details//
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let ExploreDetailViewController = segue.destination as?
                ExploreDetailViewController, let selectedCell = sender as?
                ExploreTableViewCell, let indexPath = tableview.indexPath(for:selectedCell) else {
                fatalError("Could not get indexPath")
        }
        let selectedExploreData = tableData[indexPath.row]
        ExploreDetailViewController.selectedExploreData = selectedExploreData    }
    
}

extension  UIImageView{
    func clipToBulat() {
        self.layoutIfNeeded()
        self.layer.cornerRadius = self.frame.height / 2
        self.clipsToBounds = true
    }
}

