//
//  ViewController.swift
//  Calculator
//
//  Created by Hassaan Farooqui on 02/03/2017.
//  Copyright © 2017 Hassaan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    var userIsInTheMiddleOfTyping = false
    
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTyping {
            let textCurrentlyInDisplay = display.text!
            display.text! = textCurrentlyInDisplay + digit
        } else {
            display.text! = digit
        }
        userIsInTheMiddleOfTyping = true
    }
    @IBAction func performOperation(_ sender: UIButton) {
        userIsInTheMiddleOfTyping = false
        if let symbol = sender.currentTitle {
            if symbol == "π" {
                display.text = String(M_PI)
            }
        }
    }
    
}

