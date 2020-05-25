//
//  TeamsTableViewController.swift
//  F1 Team Guide
//
//  Created by Almir Tavares on 24/05/20.
//  Copyright © 2020 DevVenture. All rights reserved.
//

import UIKit

class TeamsTableViewController: UITableViewController {

    var teams: [Teams] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadTeams()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return teams.count
    }
    
    private func loadTeams() {
        
        guard let jsonTeamsURL = Bundle.main.url(forResource: "f1teams", withExtension: "json") else { return }
        
        do {
            let jsonTeamData = try Data(contentsOf: jsonTeamsURL)
            let jsonTeamDecoder = JSONDecoder()
            
            teams = try jsonTeamDecoder.decode([Teams].self, from: jsonTeamData)
            teams.forEach({print($0.teamFullName)})
            
            //tableView.reloadData() //Reload dos dados para pegar dados novos, importante para leituras assincronas
            
        } catch {
            print(error)
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifierCell", for: indexPath) as? TeamsTableViewCell
            else {
            return TeamsTableViewCell()
        }

        let team = teams[indexPath.row]
        cell.configureCells(with: team)

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let teamViewController = segue.destination as? TeamViewController
        
        if let teamIndex = tableView.indexPathForSelectedRow?.row {
            
            teamViewController?.team = teams[teamIndex]
        }
    }

}
