//
//  ViewController.swift
//  MAPD-714 Lab Bonus2
//
//  Created by Patrick Katigbak on 2022-10-19.
//

import UIKit

class DatePickerViewController: UIViewController {

    @IBOutlet var DatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let date = NSDate()
                DatePicker.setDate(date as Date, animated: false)
       
    }


    @IBAction func SelectButon_Pressed(_ sender: UIButton) {
        
        let date = DatePicker.date
        
        let message = "The date and time you selected is \(date)"
        let alert = UIAlertController(
                    title: "Date and Time Selected",
                    message: message,
                    preferredStyle: .alert)
        let action = UIAlertAction(
                    title: "That's so true!",
                    style: .default,
                    handler: nil)
                alert.addAction(action)
                present(alert, animated: true, completion: nil)
    }
}

