//
//  ViewController.swift
//  Clicker again
//
//  Created by Akshara Mantha on 22/8/20.
//  Copyright © 2020 Swift Accelerator. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var counterLabel: UILabel!
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonPressed(_ sender: Any) {
        counter += 1
        counterLabel.text = "\(counter)"
        
    }
    
}

