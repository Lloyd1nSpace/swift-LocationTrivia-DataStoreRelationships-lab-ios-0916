//
//  AddLocationViewController.swift
//  swift-LocationTrivia-DataStoreRelationships-lab
//
//  Created by Lloyd W. Sykes on 2/2/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class AddLocationViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var latitudeTextField: UITextField!
    @IBOutlet weak var longitudeTextField: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    
    let store = LocationsDataStore.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingIds()
    }
    
    func settingIds() {
        nameTextField.accessibilityLabel = "nameField"
        nameTextField.accessibilityIdentifier = "nameField"
        latitudeTextField.accessibilityLabel = "latitudeField"
        latitudeTextField.accessibilityIdentifier = "latitudeField"
        longitudeTextField.accessibilityLabel = "longitudeField"
        longitudeTextField.accessibilityIdentifier = "longitudeField"
        saveButton.accessibilityLabel = "saveButton"
        saveButton.accessibilityIdentifier = "saveButton"
        cancelButton.accessibilityLabel = "cancelButton"
        cancelButton.accessibilityIdentifier = "cancelButton"
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        if let name = nameTextField.text,
            let latitude = latitudeTextField.text,
            let longitude = longitudeTextField.text {
            let location = Location(name: name, latitude: Float(latitude)!, longitude: Float(longitude)!)
            store.locations.append(location)
            dismiss(animated: true, completion: nil)
        }
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
