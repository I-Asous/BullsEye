//
//  ViewController.swift
//  BullsEye
//
//  Created by Islam Asous on 8/30/25.
//

import UIKit

class ViewController: UIViewController{
    //customary to add the variables above the methods
    var currentValue: Int = 0
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
    
    //Functionality for the slider <- indicates current value of slider
    @IBAction func sliderMoved(slider: UISlider) {
        //print("The value of the slider is now: \(slider.value)")
        //lroundf() <-round decimal number to the nearest whole number then store that rounded-off number in currentValue
        currentValue = lroundf(slider.value)
    }
}
