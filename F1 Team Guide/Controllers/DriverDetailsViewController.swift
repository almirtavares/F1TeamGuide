//
//  DriverDetailsViewController.swift
//  F1 Team Guide
//
//  Created by Almir Tavares on 25/05/20.
//  Copyright © 2020 DevVenture. All rights reserved.
//

import UIKit

class DriverDetailsViewController: UIViewController {

    @IBOutlet weak var driver1Label: UILabel!
    @IBOutlet weak var driverCountry1Label: UILabel!
    @IBOutlet weak var driverTitle1: UILabel!
    @IBOutlet weak var driver2Label: UILabel!
    @IBOutlet weak var driverCountry2Label: UILabel!
    @IBOutlet weak var driverTitle2: UILabel!
    @IBOutlet weak var driversImage: UIImageView!
    
    var team: Teams?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        driverComponentsInitialize()
    }
    
    func driverComponentsInitialize() {
        
        if let team = team {
            
            driver1Label.text = "Piloto: \(team.driver1)"
            driverCountry1Label.text = "País: \(team.driverCountry1)"
            driverTitle1.text = "Titulos: \(team.driverTitle1) 🏆"
            
            driver2Label.text = "Piloto: \(team.driver2)"
            driverCountry2Label.text = "País: \(team.driverCountry2)"
            driverTitle2.text = "Titulos: \(team.driverTitle2) 🏆"
            
            driversImage.image = UIImage(named: "\(team.image)pilotos")
        }
    }

}
