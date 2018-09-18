//
//  ViewController.swift
//  BullsEye
//
//  Created by Olive B on 18/09/2018.
//  Copyright © 2018 Olive B. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentValue:Int = 50
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAlert() {
        
        let message = "The value of the slider is now: \(currentValue)"
        
        let alert = UIAlertController (title: "Greetings!" , message: "The value of the slider is now: \(currentValue)", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Have a cookie", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        print("The value of the slider is now: \(slider.value)")
        let roundedValue = slider.value.rounded()
        print("The round value of the slider is now: \(roundedValue)")
        currentValue = Int(slider.value)
    }
    
}

