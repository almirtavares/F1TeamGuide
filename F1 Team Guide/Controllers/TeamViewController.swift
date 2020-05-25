//
//  TeamViewController.swift
//  F1 Team Guide
//
//  Created by Almir Tavares on 24/05/20.
//  Copyright © 2020 DevVenture. All rights reserved.
//

import UIKit

class TeamViewController: UIViewController {

    @IBOutlet weak var teamImageView: UIImageView!
    @IBOutlet weak var teamNameLabel: UILabel!
    @IBOutlet weak var teamPrincipalLabel: UILabel!
    @IBOutlet weak var driversLabel: UILabel!
    @IBOutlet weak var summaryTextView: UITextView!
    
    var team: Teams?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        teamComponentsInitialize()
    }
    
    func teamComponentsInitialize() {
        
        if let team = team {
            
            teamImageView.image = UIImage(named: team.image)
            teamNameLabel.text = team.teamName
            teamPrincipalLabel.text = "Chefe de Equipe: \(team.teamPrincipal)"
            driversLabel.text = "Pilotos: \(team.driver1) | \(team.driver2)"
            summaryTextView.text = team.summary
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "storyboardSegueTeam" {
            let teamDetailsViewController = segue.destination as? TeamDetailsViewController
            teamDetailsViewController?.team = team
        } else if segue.identifier == "storyboardSegueDriver" {
            
            let driverDetailsViewController = segue.destination as? DriverDetailsViewController
            driverDetailsViewController?.team = team
        }
    }
    
}
