//
//  TeamsTableViewCell.swift
//  F1 Team Guide
//
//  Created by Almir Tavares on 24/05/20.
//  Copyright © 2020 DevVenture. All rights reserved.
//

import UIKit

class TeamsTableViewCell: UITableViewCell {

    @IBOutlet weak var teamLogoImageView: UIImageView!
    @IBOutlet weak var teamNameLabel: UILabel!
    @IBOutlet weak var teamFullNameLabel: UILabel!
    @IBOutlet weak var worldTitles: UILabel!
    
    func configureCells(with team: Teams) {
        teamLogoImageView.image = UIImage(named: team.imageLogo)
        teamNameLabel.text = team.teamName
        teamFullNameLabel.text = team.teamFullName
        worldTitles.text = "Titulos: \(team.worldTitle) 🏆"
    }
}
