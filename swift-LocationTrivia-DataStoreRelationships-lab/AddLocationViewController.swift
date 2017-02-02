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
//        When the "submit" button is tapped, use the information in the text fields to create new a instance of Location and add it the the data store's locations array. Then dismiss the view controller.
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
