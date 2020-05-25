//
//  TeamDetailsViewController.swift
//  F1 Team Guide
//
//  Created by Almir Tavares on 25/05/20.
//  Copyright © 2020 DevVenture. All rights reserved.
//

import UIKit

class TeamDetailsViewController: UIViewController {

    @IBOutlet weak var teamNameLabel: UILabel!
    @IBOutlet weak var teamPrincipalLabel: UILabel!
    @IBOutlet weak var tecnicalDirectorLabel: UILabel!
    @IBOutlet weak var totalWorldTitleLabel: UILabel!
    @IBOutlet weak var chassisLabel: UILabel!
    @IBOutlet weak var motorLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var startYearLabel: UILabel!
    @IBOutlet weak var team1Image: UIImageView!
    @IBOutlet weak var team2Image: UIImageView!
    
    var team: Teams?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        teamComponentsInitialize()
    }
    
    func teamComponentsInitialize() {
        
        if let team = team {
            
            teamNameLabel.text = team.teamName
            teamPrincipalLabel.text = "Chefe de Equipe: \(team.teamPrincipal)"
            tecnicalDirectorLabel.text = "Diretor Tecnico: \(team.tecnicalDirector)"
            totalWorldTitleLabel.text = "Titulos Mundiais: \(team.totalWorldTitle) 🏆"
            chassisLabel.text = "Chassi: \(team.chassis)"
            motorLabel.text = "Motor: \(team.motor)"
            countryLabel.text = "País: \(team.country)"
            startYearLabel.text = "Estreia: \(team.startYear)"
            team1Image.image = UIImage(named: "\(team.image)team1")
            team2Image.image = UIImage(named: "\(team.image)chassis")
        }
    }

}
