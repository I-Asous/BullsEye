//
//  ViewController.swift
//  BullsEye
//
//  Created by Islam Asous on 8/30/25.
//

import UIKit

class ViewController: UIViewController{
    //outlet<-tells Interface Builder that you now have a variable named slider that can be connected to a UISlider object
    @IBOutlet var slider: UISlider!
    
    //customary to add the variables above the methods
    var targetValue = 0
    var currentValue: Int = 50
    override func viewDidLoad() {
        super.viewDidLoad()
        //currentValue change from 0 to 50 to portray resting position
        currentValue = lroundf(slider.value)
        //call the random() function built into Int to get an arbitrary integer (whole number) between 1 and 100
        targetValue = Int.random(in: 1...100)
    }
    //connect button/label to view controller to create action
    //Solid circle establishes relation
    
    //Methods start with the word func
    @IBAction func showAlert(){
        let message = "The value of the slider is:  \(currentValue)" + "\nThe target value is: \(targetValue)"
        
        //Implementing the actual alert display functionality
        //Post hitting the "Hit me!" button
        let alert = UIAlertController(
            title: "Hello World",
            message: message,
            preferredStyle: .alert)
        
        let action = UIAlertAction(
            title: "Ok",
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
