//
//  ViewController.swift
//  BullsEye
//
//  Created by Islam Asous on 8/30/25.
//

import UIKit

class ViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //connect button/label to view controller to create action
    //Solid circle establishes relation
    
    //Methods start with the word func
    @IBAction func showAlert(){
        //Implementing the actual alert display functionality
        //Post hitting the "Hit me!" button
        let alert = UIAlertController(
            title: "Hello World",
            message: "This is my first app!",
            preferredStyle: .alert)
        
        let action = UIAlertAction(
            title: "Awesome",
            style: .default,
            handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
}
