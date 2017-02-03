//
//  AddTriviaViewController.swift
//  swift-LocationTrivia-DataStoreRelationships-lab
//
//  Created by Lloyd W. Sykes on 2/2/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class AddTriviaViewController: UIViewController {
    
    @IBOutlet weak var triviumTextField: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    
    let store = LocationsDataStore.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func settingIDs() {
        triviumTextField.accessibilityLabel = "Trivium Text Field"
        triviumTextField.accessibilityIdentifier = "Trivium Text Field"
        saveButton.accessibilityLabel = "Save Button"
        saveButton.accessibilityIdentifier = "Save Button"
        cancelButton.accessibilityLabel = "Cancel Button"
        cancelButton.accessibilityIdentifier = "Cancel Button"
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
//        When the submit button is tapped, add use the text field to create a new Trivium object with zero likes. Add the this new trivium to the relevant Location object that was passed to the TriviaTableViewController. Then dismiss the view controller.
        
        if let trivium = triviumTextField.text {
            let newTriv = Trivium(content: trivium, likes: 0)
            
            
            
            
            
            
        }
        
        
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
