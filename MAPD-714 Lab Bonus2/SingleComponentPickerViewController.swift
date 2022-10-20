//
//  SingleComponentPickerViewController.swift
//  MAPD-714 Lab Bonus2
//
//  Created by Patrick Katigbak on 2022-10-19.
//

import UIKit

class SingleComponentPickerViewController: UIViewController,
                                           UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var singlePicker: UIPickerView!
    
    private let characterNames = [
            "Luke", "Leia", "Han", "Chewbacca", "Artoo",
            "Threepio", "Lando"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func submitButton_Pressed(_ sender: UIButton) {
        
        let row = singlePicker.selectedRow(inComponent: 0)
        let selected = characterNames[row]
        let title = "You selected \(selected)!"
        
        let alert = UIAlertController(
            title: title,
            message: "Thank you for choosing",
            preferredStyle: .alert)
        let action = UIAlertAction(
            title: "You're welcome",
            style: .default,
            handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        
        func pickerView(_ pickerView: UIPickerView,
                        numberOfRowsInComponent component: Int) -> Int {
            return characterNames.count
        }
        
    
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return characterNames[row]
        }
    
}
