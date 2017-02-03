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
    
    var location: Location?
    
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
        if let trivium = triviumTextField.text {
            let newTriv = Trivium(content: trivium, likes: 0)
            location?.trivia.append(newTriv)
            dismiss(animated: true, completion: nil)
        }
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
