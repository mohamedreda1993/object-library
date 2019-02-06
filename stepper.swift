//
//  ViewController.swift
//  slider
//
//  Created by mohamed on 3/6/18.
//  Copyright © 2018 mohamed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lab: UILabel!
    
    @IBAction func stepper(_ sender: UIStepper) {
        lab.text=String(Int(sender.value))
    }
    
    
