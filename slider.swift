//
//  ViewController.swift
//  slider
//
//  Created by mohamed on 2/6/19.
//  Copyright © 2019 mohamed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lab: UILabel!
    @IBAction func slider(_ sender: UISlider) {
        lab.text=String(Int(sender.value))
    }
    
    
