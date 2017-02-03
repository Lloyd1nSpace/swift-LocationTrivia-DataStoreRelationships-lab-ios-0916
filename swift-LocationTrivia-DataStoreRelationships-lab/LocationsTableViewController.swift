//
//  LocationsTableViewController.swift
//  swift-LocationTrivia-DataStoreRelationships-lab
//
//  Created by Lloyd W. Sykes on 2/2/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class LocationsTableViewController: UITableViewController {
    
    let store = LocationsDataStore.sharedInstance
    let cellID = "locationCell"
    var location: Location?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingIDs()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    func settingIDs() {
        tableView.accessibilityLabel = "Locations Table"
        tableView.accessibilityIdentifier = "Locations Table"
        navigationItem.rightBarButtonItem?.accessibilityLabel = "addButton"
        navigationItem.rightBarButtonItem?.accessibilityIdentifier = "addButton"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return store.locations.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        cell.textLabel?.text = store.locations[indexPath.row].name
        cell.detailTextLabel?.text = String(describing: store.locations[indexPath.row].trivia.count)
        location = store.locations[indexPath.row]
        return cell
    }
//    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        location = store.locations[indexPath.row]
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "triviaSegue",
            let dest = segue.destination as? TriviaTableViewController {
            dest.location = location
        }
    }
    
}
