//
//  ViewController.swift
//  Birthday Note Tracker
//
//  Created by 이자민 on 3/25/24.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let savedName = UserDefaults.standard.string(forKey: "name"),
           let savedBirthday = UserDefaults.standard.string(forKey: "birthday") {
            nameLabel.text = savedName
            birthdayLabel.text = savedBirthday
        }
    }
    
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var birthdayTextField: UITextField!
    
    @IBOutlet weak var birthdayLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBAction func saveButtonClicked(_ sender: Any) {
        UserDefaults.standard.set(nameTextField.text, forKey: "name")
        UserDefaults.standard.set(birthdayTextField.text, forKey: "birthday")
        
        nameLabel.text = nameTextField.text
        birthdayLabel.text = birthdayTextField.text
    }
    @IBAction func deleteButtonClicked(_ sender: Any) {
        
        UserDefaults.standard.removeObject(forKey: "name")
        UserDefaults.standard.removeObject(forKey: "birthday")
        
        
        nameLabel.text = ""
        birthdayLabel.text = ""
    }
}



