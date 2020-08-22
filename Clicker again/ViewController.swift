//
//  ViewController.swift
//  Clicker again
//
//  Created by Akshara Mantha on 22/8/20.
//  Copyright © 2020 Swift Accelerator. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var congratsLabel: UILabel!
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var clickButton: UIButton!
    var counter = 0
    var timeElapsed = 0.0
    var timer: Timer
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonPressed(_ sender: Any) {
        let redValue = CGFloat(drand48())
        let greenValue = CGFloat(drand48())
        let blueValue = CGFloat(drand48())
        self.view.backgroundColor = UIColor (red: redValue,
        green: greenValue, blue: blueValue, alpha: 1.0)
        counter += 1
        counterLabel.text = "\(counter)"
         if counter >= 10 {
                  congratsLabel.isHidden = false
                  congratsLabel.text = "10 clicks!"
              }
              
              if counter == 20 {
                  // disable button
                  clickButton.isEnabled = false
                  clickButton.setTitle("You're done", for: .disabled)
                  congratsLabel.text = "You took \(timeElapsed) seconds to complete"
    
              }
              
              self.counterLabel.transform = .identity
              UIView.animate(withDuration: 0.5) {
                  self.counterLabel.transform = self.counterLabel.transform
                      .scaledBy(x: 1.05, y: 1.05)
              }
        
              self.counterLabel.transform = .identity
              UIView.animate(withDuration: 0.1, animations: {

                  self.counterLabel.transform = self.counterLabel.transform
                      .scaledBy(x: 1.05, y: 1.05)
              }) { (_) in

                  UIView.animate(withDuration: 0.1) {
                      self.counterLabel.transform = self.counterLabel.transform
                          .scaledBy(x: 0.95, y: 0.95)
                  }
              }
              
        
    }
    
}
