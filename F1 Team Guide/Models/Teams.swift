//
//  Teams.swift
//  F1 Team Guide
//
//  Created by Almir Tavares on 24/05/20.
//  Copyright © 2020 DevVenture. All rights reserved.
//

import Foundation


struct Teams : Decodable {
    
    let teamName: String
    let teamFullName: String
    let teamPrincipal: String
    let driver1: String
    let driver2: String
    let worldTitle: Int
    let totalWorldTitle: String
    let summary: String
    let image: String
    
    let tecnicalDirector: String
    let chassis: String
    let motor: String
    let country: String
    let startYear: String
    
    let driverTitle1: String
    let driverTitle2: String
    let driverCountry1: String
    let driverCountry2: String
    
    var imageLogo: String {
        return "\(self.image)logo"
    }
}
/*
 enum CodingKeys: String, CodingKey {
    case team = "equipe"
    case teamFullName = "nome"
    case teamPrincipal = "chefeDeEquipe"
    case driver1 = "piloto1"
    case driver2 = "piloto2"
    case worldTitle = "championTotal"
    case totalWorldTitle = "championDateTotal"
    case summary
    case image
}
*/
