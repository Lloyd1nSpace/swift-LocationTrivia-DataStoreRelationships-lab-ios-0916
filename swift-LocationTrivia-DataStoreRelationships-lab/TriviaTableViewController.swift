//
//  TriviaTableViewController.swift
//  swift-LocationTrivia-DataStoreRelationships-lab
//
//  Created by Lloyd W. Sykes on 2/2/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class TriviaTableViewController: UITableViewController {
    
    var location: Location?
    let cellID = "triviaCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingIDs()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    func settingIDs() {
        tableView.accessibilityLabel = "Trivia Table"
        tableView.accessibilityIdentifier = "Trivia Table"
        navigationItem.rightBarButtonItem?.accessibilityLabel = "Add Trivia Button"
        navigationItem.rightBarButtonItem?.accessibilityIdentifier = "Add Trivia Button"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return location!.trivia.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        
        cell.textLabel?.text = location?.trivia[indexPath.row].content
        cell.detailTextLabel?.text = String(describing: location?.trivia[indexPath.row].likes)
        
        return cell
    }
    
}
