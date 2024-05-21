//
//  ExploreData.swift
//  cureios
//
//  Created by STDC_18 on 21/05/2024.
//

import UIKit

struct ExploreData {
    let photo: UIImage?
    let course: String
    let uni: String
    let kod: String
    let phoneNumber: String
    let company: String
    
}

extension ExploreData {
    static func sampleExploreData()-> [ExploreData] {
        let photo1 = UIImage(named: "wan")
        let photo2 = UIImage(named: "rf")
        let photo3 = UIImage(named: "erg")
        let photo4 = UIImage(named: "erg")
        let photo5 = UIImage(named: "erg")
        let teamMember1 = ExploreData(photo: photo1, course: "wan", uni: "hmm", kod: "Selangor", phoneNumber: "0176017578", company: "BIM")
        let teamMember2 = ExploreData(photo: photo2, course: "naruto", uni: "haa", kod: "Perak", phoneNumber: "0112723793", company: "MIB")
        let teamMember3 = ExploreData(photo: photo3, course: "sasuke", uni: "hee", kod: "KL", phoneNumber: "013632982", company: "BIM")
        let teamMember4 = ExploreData(photo: photo4, course: "sasuke jr", uni: "hoo", kod: "Pahang", phoneNumber: "017363829", company: "BMI")
        let teamMember5 = ExploreData(photo: photo5, course: "naruto jr", uni: "hnn", kod: "N9", phoneNumber: "0128353922", company: "IBM")
        return [teamMember1, teamMember2, teamMember3, teamMember4, teamMember5]
    }
}
